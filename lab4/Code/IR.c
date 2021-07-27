#include "IR.h"

//linked linear IR list
IRNode IRhead = NULL, IRtail = NULL;

int label_count = 0, temp_count = 0, var_count = 0, func_count = 0;

static void IR_append(InterCode code)
{
    IRNode node = (IRNode)malloc(sizeof(struct InterCodes_));
    node->code = code;
    node->next = NULL;
    node->prev = NULL;
    if (!IRhead)
    {
        IRhead = node;
        IRtail = node;
    }
    else
    {
        IRtail->next = node;
        node->prev = IRtail;
        IRtail = node;
    }
}
static Operand set_var(Sym_Type *sym)
{
    Operand op = (Operand)malloc(sizeof(struct Operand_));
    op->kind = VARIABLE;
    op->u.sym = sym;
    op->str = sym->ir_name;
    return op;
}
static Operand new_var(Sym_Type *sym)
{
    Operand op = (Operand)malloc(sizeof(struct Operand_));
    op->kind = VARIABLE;
    op->u.sym = sym;
    op->str = malloc(20);
    op->str[0] = 'v';
    sprintf(op->str + sizeof(char), "%d", ++var_count);
    sym->ir_name = op->str;
    return op;
}

static Operand new_temp()
{
    Operand op = (Operand)malloc(sizeof(struct Operand_));
    op->kind = TEMP;
    op->u.tempNo = ++temp_count;
    op->str = (char *)malloc(20);
    op->str[0] = 't';
    sprintf(op->str + sizeof(char), "%d", op->u.tempNo);
    return op;
}

static Operand new_const(int c)
{
    Operand op = (Operand)malloc(sizeof(struct Operand_));
    op->kind = CONSTANT;
    op->u.value = c;
    op->str = (char *)malloc(sizeof(char) * 50);
    op->str[0] = '#';
    sprintf(op->str + sizeof(char), "%d", op->u.value);
    return op;
}

static InterCode new_label()
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = LABEL;
    code->u.labelNo = ++label_count;
    return code;
}

static InterCode new_funcDef(F_Type *func)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = FUNCDEF;
    code->u.func = func;
    if (strcmp(func->name, "main"))
    {
        func->ir_name = (char *)malloc(sizeof(char) * 20); //FUNC:ir_name
        func->ir_name[0] = 'f';
        sprintf(func->ir_name + sizeof(char), "%d", ++func_count);
    }
    else
        func->ir_name = func->name;
    return code;
}

static InterCode new_param(Sym_Type *sym)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = PARAM;
    code->u.sglop = new_var(sym);
    if (sym->type->kind == ARRAY)
        sym->param_array = true;
    return code;
}

static InterCode new_goto(int labelNo)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = GOTO;
    code->u.labelNo = labelNo;
    return code;
}

static InterCode new_condGoto(Operand op1, Operand op2, char *relop, int labelNo)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = CONDGOTO;
    code->u.cond.op1 = op1;
    code->u.cond.op2 = op2;
    code->u.cond.relop = relop;
    code->u.cond.labelNo = labelNo;
    return code;
}

static InterCode new_dec(Sym_Type *sym, int size)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = DEC;
    code->u.dec.sym = sym;
    code->u.dec.size = size;
    Operand t = new_var(sym);
    code->u.dec.opr = t;
    return code;
}

static InterCode new_call(Operand res, F_Type *func)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = CALL;
    code->u.call.res = res;
    code->u.call.func = func;
    return code;
}

InterCode new_assign(enum IC_KIND kind, Operand left, Operand right)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = kind;
    code->u.assign.left = left;
    code->u.assign.right = right;
    return code;
}

InterCode new_binop(enum IC_KIND kind, Operand res, Operand op1, Operand op2)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = kind;
    code->u.binop.res = res;
    code->u.binop.op1 = op1;
    code->u.binop.op2 = op2;
    return code;
}

InterCode new_sglop(enum IC_KIND kind, Operand op)
{
    InterCode code = (InterCode)malloc(sizeof(struct InterCode_));
    code->kind = kind;
    code->u.sglop = op;
    return code;
}

void translate_entry(Node *root)
{
    assert(isToken(root, "Program"));
    Node *extDefList = root->child;
    assert(isToken(extDefList, "ExtDefList"));
    if (extDefList->vacuum)
        return;
    Node *extDef = extDefList->child;
    while (extDef)
    {
        if (isToken(extDef->child->child, "StructSpecifier"))
        {
            if (!extDef->next->vacuum)
                extDef = extDef->next->child;
            else
                break;
            continue;
        }
        translate_FuncDef(extDef);
        if (!extDef->next->vacuum)
            extDef = extDef->next->child;
        else
            break;
    }
}

void translate_FuncDef(Node *root)
{
    assert(isToken(root, "ExtDef"));
    Node *fundec = root->child->next;
    assert(isToken(fundec, "FunDec"));
    char *fname = fundec->child->val;
    F_Type *func = find_Func(fname);
    IR_append(new_funcDef(func));
    Node *varList = fundec->child->next->next;
    if (isToken(varList, "VarList"))
    {
        translate_Params(varList);
    } //else: no params
    translate_CompSt(fundec->next);
}

void translate_Params(Node *root)
{
    assert(isToken(root, "VarList"));
    Node *paramDec = root->child;
    if (isToken(paramDec->child->child, "StructSpecifier"))
    {
        printf("can not translate, there exists variables or params of struct types.\n");
        exit(0);
    }
    Node *first = paramDec->child->next; //变量或一维数组
    while (!isToken(first, "ID"))
    {
        assert(isToken(first, "VarDec"));
        first = first->child;
    }
    char *vname = first->val;
    IR_append(new_param(find_Sym(vname)));
    if (paramDec->next)
    {
        translate_Params(paramDec->next->next);
    }
}

void translate_CompSt(Node *root)
{
    assert(isToken(root, "CompSt"));
    Node *deflist = root->child->next;
    if (!deflist->vacuum)
    {
        Node *def = deflist->child;
        while (def)
        {
            translate_Def(def);
            if (!def->next->vacuum)
                def = def->next->child;
            else
                break;
        }
    }
    Node *stmtlist = root->child->next->next;
    if (!stmtlist->vacuum)
    {
        Node *stmt = stmtlist->child;
        while (stmt)
        {
            translate_Stmt(stmt);
            if (!stmt->next->vacuum)
                stmt = stmt->next->child;
            else
                break;
        }
    }
}

static void translate_Dec(Node *dec)
{
    assert(isToken(dec, "Dec"));
    Node *varDec = dec->child;
    assert(isToken(varDec, "VarDec"));
    int size = 4;
    Node *first = varDec->child;
    bool isArray = (first->next != NULL);
    while (first->next)
    {
        size *= atoi(first->next->next->val);
        first = first->child;
    }
    InterCode ir_temp = new_dec(find_Sym(first->val), size);
    if (isArray) IR_append(ir_temp);
    if (varDec->next) //VarDec ASSIGNOP Exp
    {
        Operand temp1 = new_temp();
        translate_Exp(varDec->next->next, temp1);
        IR_append(new_assign(ASSIGN, ir_temp->u.dec.opr, temp1));
    }
}
static void translate_Def(Node *def)
{
    assert(isToken(def, "Def"));
    if (isToken(def->child->child, "StructSpecifier"))
    {
        printf("can not translate, there exists variables or params of struct types.\n");
        exit(0);
    }
    Node *declist = def->child->next;
    Node *dec = declist->child;
    translate_Dec(dec);
    while (dec->next)
    {
        dec = dec->next->next->child;
        translate_Dec(dec);
    }
}
static void translate_Stmt(Node *stmt)
{
    assert(isToken(stmt, "Stmt"));
    Node *first = stmt->child;
    if (isToken(first, "CompSt"))
        translate_CompSt(first);
    else if (isToken(first, "Exp"))
    {
        Operand temp1 = new_temp();
        translate_Exp(first, temp1);
    }
    else if (isToken(first, "RETURN"))
    {
        Operand temp1 = new_temp();
        translate_Exp(first->next, temp1);
        IR_append(new_sglop(RET, temp1));
    }
    else if (isToken(first, "WHILE"))
    {
        Node *exp = first->next->next;
        Node *stmt = exp->next->next;
        InterCode label1 = new_label();
        InterCode label2 = new_label();
        InterCode label3 = new_label();
        IR_append(label1);
        translate_Cond(exp, label2, label3);
        IR_append(label2);
        translate_Stmt(stmt);
        IR_append(new_goto(label1->u.labelNo));
        IR_append(label3);
    }
    else //IF...
    {
        Node *exp = first->next->next;
        Node *stmt1 = exp->next->next;
        InterCode label1 = new_label();
        InterCode label2 = new_label();
        InterCode label3 = new_label();
        translate_Cond(exp, label1, label2);
        IR_append(label1);
        translate_Stmt(stmt1);
        Node *stmt2 = NULL;
        if (stmt1->next)
        {
            stmt2 = stmt1->next->next;
            IR_append(new_goto(label3->u.labelNo));
        }
        IR_append(label2);
        if (stmt2)
        {
            translate_Stmt(stmt2);
            IR_append(label3);
        }
    }
}
static int get_array_size(Type *type)
{
    int res = 1;
    for (Type *p = type->u.array.elem; p->kind != BASIC; p = p->u.array.elem)
    {
        res *= p->u.array.size;
    }
    return res * 4;
}
static Type *translate_Exp_adr(Node *exp, Operand place)
{
    assert(isToken(exp, "Exp"));
    Node *first = exp->child;
    if (isToken(first, "ID")) //Exp->ID
    {
        Sym_Type *type = find_Sym(first->val);
        if (!type->param_array)
            IR_append(new_assign(REF, place, set_var(type)));
        else
            IR_append(new_assign(ASSIGN, place, set_var(type)));
        return type->type;
    }
    else if (isToken(first->next, "LB")) //Exp-> Exp LB INT RB
    {
        Operand temp1 = new_temp();
        Operand temp2 = new_temp();
        Type *type = translate_Exp_adr(first, temp1);
        translate_Exp(first->next->next, temp2);
        Operand temp3 = new_temp();
        IR_append(new_binop(MUL, temp3, temp2, new_const(get_array_size(type))));
        IR_append(new_binop(ADD, place, temp1, temp3));
        return type->u.array.elem;
    }
    else if (isToken(first->next, "ASSIGNOP"))
    {
        printf("can not translate: there may be a=b=c where a,b,c are all array.\n");
        exit(0);
    }
    else //Exp->(Exp)
    {
        return translate_Exp_adr(first->next, place);
    }
    return NULL;
}
static void translate_Exp(Node *exp, Operand place)
{
    assert(isToken(exp, "Exp"));
    Node *first = exp->child;
    if (isToken(first, "Exp")) //PLUS MINUS STAR DIV  ASSIGNOP  AND OR RELOP  ARRAY
    {
        Node *second = first->next;
        Node *third = second->next;
        if (isToken(second, "ASSIGNOP"))
        {
            Type *Exp_type = Exp(first);
            if (Exp_type->kind == BASIC)
            {
                Operand temp1;
                Operand temp2 = new_temp();
                translate_Exp(third, temp2);
                if (first->child->next) //left uses array
                {
                    temp1 = new_temp();
                    translate_Exp_adr(first, temp1); //get address of array element
                    IR_append(new_assign(PTR_L, temp1, temp2));
                    IR_append(new_assign(PTR_R, place, temp1));
                }
                else
                {
                    temp1 = set_var(find_Sym(first->child->val));
                    IR_append(new_assign(ASSIGN, temp1, temp2));
                    IR_append(new_assign(ASSIGN, place, temp1));
                }
            }
            else
            { // array assigning
                Type *Exp_type_1 = Exp(third);
                int size_1 = get_array_size(Exp_type) * Exp_type->u.array.size;
                int size_2 = get_array_size(Exp_type_1) * Exp_type_1->u.array.size;
                int size = size_1 < size_2 ? size_1 : size_2;
                Operand temp1 = new_temp();
                Operand temp2 = new_temp();
                translate_Exp_adr(first, temp1);
                translate_Exp_adr(third, temp2);
                Operand temp3, temp4, temp5;
                for (int i = 0; i < (size / 4); i++)
                {
                    temp3 = new_temp();
                    temp4 = new_temp();
                    IR_append(new_binop(ADD, temp3, temp1, new_const(4 * i)));
                    IR_append(new_binop(ADD, temp4, temp2, new_const(4 * i)));
                    temp5 = new_temp();
                    IR_append(new_assign(PTR_R, temp5, temp4));
                    IR_append(new_assign(PTR_L, temp3, temp5));
                }
                IR_append(new_assign(ASSIGN, place, temp1));
            }
        }
        else if (isToken(second, "PLUS"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp(first, temp1);
            translate_Exp(third, temp2);
            IR_append(new_binop(ADD, place, temp1, temp2));
        }
        else if (isToken(second, "MINUS"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp(first, temp1);
            translate_Exp(third, temp2);
            IR_append(new_binop(SUB, place, temp1, temp2));
        }
        else if (isToken(second, "STAR"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp(first, temp1);
            translate_Exp(third, temp2);
            IR_append(new_binop(MUL, place, temp1, temp2));
        }
        else if (isToken(second, "DIV"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp(first, temp1);
            translate_Exp(third, temp2);
            IR_append(new_binop(DIV_, place, temp1, temp2));
        }
        else if (isToken(second, "LB"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp_adr(first, temp1);
            translate_Exp(third, temp2);
            Operand temp3 = new_temp();
            Operand temp4 = new_temp();
            IR_append(new_binop(MUL, temp3, new_const(4), temp2));
            IR_append(new_binop(ADD, temp4, temp3, temp1));
            IR_append(new_assign(PTR_R, place, temp4));
        }
        else
        {
            InterCode label1 = new_label();
            InterCode label2 = new_label();
            IR_append(new_assign(ASSIGN, place, new_const(0)));
            translate_Cond(exp, label1, label2);
            IR_append(label1);
            IR_append(new_assign(ASSIGN, place, new_const(1)));
            IR_append(label2);
        }
    }
    else if (isToken(first, "ID")) //ID  ID()  ID(Args)
    {
        if (!first->next)
            IR_append(new_assign(ASSIGN, place, set_var(find_Sym(first->val))));
        else
        {
            Node *third = first->next->next;
            if (!isToken(third, "Args"))
            {
                if (!strcmp("read", first->val))
                {
                    IR_append(new_sglop(READ, place));
                }
                else
                {
                    IR_append(new_call(place, find_Func(first->val)));
                }
            }
            else
            {
                if (!strcmp("write", first->val))
                {
                    Operand temp1 = new_temp();
                    translate_Exp(third->child, temp1);
                    IR_append(new_sglop(WRITE, temp1));
                }
                else
                {
                    translate_Args(third);
                    IR_append(new_call(place, find_Func(first->val)));
                }
            }
        }
    }
    else if (isToken(first, "LP")) //(Exp)
    {
        translate_Exp(first->next, place);
    }
    else if (isToken(first, "INT")) //INT
    {
        IR_append(new_assign(ASSIGN, place, new_const(atoi(first->val))));
    }
    else if (isToken(first, "MINUS")) //MINUS
    {
        Operand temp1 = new_temp();
        translate_Exp(first->next, temp1);
        IR_append(new_binop(SUB, place, new_const(0), temp1));
    }
    else //NOT
    {
        InterCode label1 = new_label();
        InterCode label2 = new_label();
        IR_append(new_assign(ASSIGN, place, new_const(0)));
        translate_Cond(exp, label1, label2);
        IR_append(label1);
        IR_append(new_assign(ASSIGN, place, new_const(1)));
        IR_append(label2);
    }
}
static void translate_Cond(Node *exp, InterCode label_true, InterCode label_false)
{
    assert(isToken(exp, "Exp"));
    Node *first = exp->child;
    if (isToken(first, "NOT"))
    {
        translate_Cond(first->next, label_false, label_true);
        return;
    }
    else if (first->next)
    {
        Node *second = first->next;
        if (isToken(second, "RELOP"))
        {
            Operand temp1 = new_temp();
            Operand temp2 = new_temp();
            translate_Exp(first, temp1);
            translate_Exp(second->next, temp2);
            IR_append(new_condGoto(temp1, temp2, second->val, label_true->u.labelNo));
            IR_append(new_goto(label_false->u.labelNo));
            return;
        }
        else if (isToken(second, "AND"))
        {
            InterCode lable1 = new_label();
            translate_Cond(first, lable1, label_false);
            IR_append(lable1);
            translate_Cond(second->next, label_true, label_false);
            return;
        }
        else if (isToken(second, "OR"))
        {
            InterCode lable1 = new_label();
            translate_Cond(first, label_true, lable1);
            IR_append(lable1);
            translate_Cond(second->next, label_true, label_false);
            return;
        }
    }
    Operand temp1 = new_temp();
    translate_Exp(exp, temp1);
    char *relop = (char *)malloc(sizeof(5));
    sprintf(relop, "%s", "!=");
    IR_append(new_condGoto(temp1, new_const(0), relop, label_true->u.labelNo));
    IR_append(new_goto(label_false->u.labelNo));
}
static void translate_Args(Node *args)
{
    assert(isToken(args, "Args"));
    Node *exp = args->child;
    Operand temp1;
    if(exp->next)
        translate_Args(exp->next->next);
    temp1 = new_temp();
    if (Exp(exp)->kind == BASIC)
    {
        translate_Exp(exp, temp1);
    }
    else
    {
        translate_Exp_adr(exp, temp1);
    }
    IR_append(new_sglop(ARG, temp1));
}

void print_code(FILE *f, InterCode code){
        switch (code->kind)
        {
        case LABEL:
            fprintf(f, "LABEL label%d :\n", code->u.labelNo);
            break;
        case FUNCDEF:
            fprintf(f, "FUNCTION %s :\n", code->u.func->ir_name);
            break;
        case ASSIGN:
            fprintf(f, "%s := %s\n", code->u.assign.left->str, code->u.assign.right->str);
            break;
        case ADD:
            fprintf(f, "%s := %s + %s\n", code->u.binop.res->str, code->u.binop.op1->str, code->u.binop.op2->str);
            break;
        case SUB:
            fprintf(f, "%s := %s - %s\n", code->u.binop.res->str, code->u.binop.op1->str, code->u.binop.op2->str);
            break;
        case MUL:
            fprintf(f, "%s := %s * %s\n", code->u.binop.res->str, code->u.binop.op1->str, code->u.binop.op2->str);
            break;
        case DIV_:
            fprintf(f, "%s := %s / %s\n", code->u.binop.res->str, code->u.binop.op1->str, code->u.binop.op2->str);
            break;
        case REF:
            fprintf(f, "%s := &%s\n", code->u.assign.left->str, code->u.assign.right->str);
            break;
        case PTR_R:
            fprintf(f, "%s := *%s\n", code->u.assign.left->str, code->u.assign.right->str);
            break;
        case PTR_L:
            fprintf(f, "*%s := %s\n", code->u.assign.left->str, code->u.assign.right->str);
            break;
        case GOTO:
            fprintf(f, "GOTO label%d\n", code->u.labelNo);
            break;
        case CONDGOTO:
            fprintf(f, "IF %s %s %s GOTO label%d\n", code->u.cond.op1->str, code->u.cond.relop, code->u.cond.op2->str, code->u.cond.labelNo);
            break;
        case RET:
            fprintf(f, "RETURN %s\n", code->u.sglop->str);
            break;
        case DEC:
            fprintf(f, "DEC %s %d\n", code->u.dec.sym->ir_name, code->u.dec.size);
            break;
        case ARG:
            fprintf(f, "ARG %s\n", code->u.sglop->str);
            break;
        case CALL:
            fprintf(f, "%s := CALL %s\n", code->u.call.res->str, code->u.call.func->ir_name);
            break;
        case PARAM:
            fprintf(f, "PARAM %s\n", code->u.sglop->str);
            break;
        case READ:
            fprintf(f, "READ %s\n", code->u.sglop->str);
            break;
        case WRITE:
            fprintf(f, "WRITE %s\n", code->u.sglop->str);
            break;

        default:
            fprintf(f, "MISSING IMPLEMENTATION\n");
            break;
        }
}

void printIR(FILE *f)
{
    IRNode node = IRhead;
    InterCode code;
    while (node)
    {
        code = node->code;
        print_code(f, code);
        node = node->next;
    }
}

void IR_temp_test()
{
    printf("-----IR TEMP TEST-----\n");
    F_Type *f = (F_Type *)malloc(sizeof(F_Type));
    f->name = "f1";
    IR_append(new_funcDef(f));
    Sym_Type *x = (Sym_Type *)malloc(sizeof(Sym_Type));
    x->name = "x";
    IR_append(new_param(x));
    IR_append(new_label());
    IR_append(new_dec(x, 16));
    Operand op0 = new_var(x),
            op1 = new_temp(),
            op2 = new_const(5);
    IR_append(new_assign(ASSIGN, op1, op2));
    IR_append(new_assign(REF, op1, op0));
    IR_append(new_assign(PTR_R, op1, op0));
    IR_append(new_assign(PTR_L, op1, op2));
    IR_append(new_binop(ADD, op0, op1, op2));
    IR_append(new_binop(SUB, op0, op1, op2));
    IR_append(new_binop(MUL, op0, op1, op2));
    IR_append(new_binop(DIV_, op0, op1, op2));
    IR_append(new_goto(label_count));
    char *relop = "==";
    IR_append(new_condGoto(op0, op2, relop, label_count));
    IR_append(new_call(op0, f));
    IR_append(new_sglop(READ, op0));
    IR_append(new_sglop(WRITE, op1));
    IR_append(new_sglop(RET, op0));
    printIR(stdout);
}