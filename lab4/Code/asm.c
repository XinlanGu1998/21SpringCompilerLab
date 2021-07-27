#include "asm.h"

struct asm_table *memlist[10000];
int check_mem(Operand opr)
{
    int no = atoi(opr->str + 1) % 10000;
    struct asm_table *p = memlist[no];
    while (p)
    {
        if (!strcmp(p->name, opr->str))
            return p->where;
        p = p->next;
    }
    return -1;
}
Instr arg_stack[30000];
int arg_stack_size = 0;
int func_sizzzz = 0;
int var_size = 0;
int append_find_mem(Operand opr, int x)
{
    int y = check_mem(opr);
    if (y == -1)
    {
        int no = atoi(opr->str + 1) % 10000;
        struct asm_table *p = memlist[no];
        struct asm_table *q = (struct asm_table *)malloc(sizeof(struct asm_table));
        q->name = opr->str;
        q->where = x;
        q->next = p;
        memlist[no] = q;
        return x;
    }
    else
        return y;
}
InstrNode instrHead, instrTail;
static Instr gen_instr(char *op, char *opr1, char *opr2, char *opr3, int num)
{
    Instr inst = (Instr)malloc(sizeof(struct Instr_));
    inst->num_opr = num;
    inst->islabel = false;
    if (op)
        strcpy(inst->op, op);
    else
        inst->islabel = true;
    if (num == 3)
    {
        strcpy(inst->opr3, opr3);
    }
    if (num >= 2)
    {
        strcpy(inst->opr2, opr2);
    }
    if (num >= 1)
    {
        strcpy(inst->opr1, opr1);
    }
    return inst;
}
static Instr gen_opr(Operand t2, char *reg)
{

    char s[15];
    if (t2->kind != CONSTANT)
    {
        sprintf(s, "%d($fp)", append_find_mem(t2, 0));
        return gen_instr("lw", reg, s, 0, 2);
    }
    else
    {
        sprintf(s, "%s", t2->str + 1);
        return gen_instr("li", reg, s, 0, 2);
    }
}
static Instr gen_opr_save(Operand t2, char *reg)
{
    char s[15];
    sprintf(s, "%d($fp)", append_find_mem(t2, 0));
    return gen_instr("sw", reg, s, 0, 2);
}
void append_argstack(Operand t1)
{
    arg_stack[arg_stack_size++] = gen_instr("addi", "$sp", "$sp", "-4", 3);
    char s1[20];
    sprintf(s1, "%d($fp)", append_find_mem(t1, 0));
    arg_stack[arg_stack_size++] = gen_instr("lw", "$t0", s1, NULL, 2);
    arg_stack[arg_stack_size++] = gen_instr("sw", "$t0", "0($sp)", NULL, 2);
}
void append_instr(Instr instr)
{
    InstrNode node = (InstrNode)malloc(sizeof(struct InstrNode_));
    node->instr = instr;
    node->next = NULL;
    if (!instrHead)
    {
        instrHead = node;
        instrTail = node;
    }
    else
    {
        instrTail->next = node;
        instrTail = node;
    }
}
static void label_instr(int labelNo)
{
    char *t = (char *)malloc(15);
    sprintf(t, "label%d", labelNo);
    append_instr(gen_instr(NULL, t, 0, 0, 1));
}
static void check_Nodes(IRNode node)
{
    while (node != NULL && node->code->kind != FUNCDEF)
    {
        switch (node->code->kind)
        {
        case LABEL:
            break;
        case FUNCDEF:
            break;
        case ASSIGN:
        case REF:
        case PTR_R:
        case PTR_L:
            if (check_mem(node->code->u.assign.left) == -1)
            {
                append_find_mem(node->code->u.assign.left, var_size - 8);
                var_size -= 4;
            }
            break;
        case ADD:
        case SUB:
        case MUL:
        case DIV_:
            if (check_mem(node->code->u.binop.res) == -1)
            {
                append_find_mem(node->code->u.binop.res, var_size - 8);
                var_size -= 4;
            }
            break;
        case GOTO:
            break;
        case CONDGOTO:
            break;
        case RET:
            break;
        case DEC:
            if (check_mem(node->code->u.dec.opr) == -1)
            {
                append_find_mem(node->code->u.dec.opr, var_size - 4 - node->code->u.dec.size);
                var_size -= node->code->u.dec.size;
            }
            break;
        case ARG:
            break;
        case CALL:
            if (check_mem(node->code->u.call.res) == -1)
            {
                append_find_mem(node->code->u.call.res, var_size - 8);
                var_size -= 4;
            }
            break;
        case PARAM:
            break;
        case READ:
            if (check_mem(node->code->u.sglop) == -1)
            {
                append_find_mem(node->code->u.sglop, var_size - 8);
                var_size -= 4;
            }
            break;
        case WRITE:
            break;
        default:
            break;
        }
        node = node->next;
    }
}
static IRNode declare_params(IRNode node)
{
    int where = 4;
    while (func_sizzzz)
    {
        Operand opr = node->code->u.sglop;
        append_find_mem(opr, where);
        where += 4;
        if (func_sizzzz > 1)
            node = node->next;
        func_sizzzz--;
    }
    return node;
}
static void func_instr(F_Type *func)
{
    append_instr(gen_instr(NULL, func->ir_name, 0, 0, 1));
    append_instr(gen_instr("addi", "$sp", "$sp", "-4", 3));
    append_instr(gen_instr("sw", "$fp", "0($sp)", 0, 2));
    append_instr(gen_instr("move", "$fp", "$sp", 0, 2));
    func_sizzzz = func->dim;
    var_size = 0;
}

int check_relop(char *relop)
{
    if (!strcmp(relop, "=="))
        return 1;
    else if (!strcmp(relop, "!="))
        return 2;
    else if (!strcmp(relop, ">"))
        return 3;
    else if (!strcmp(relop, "<"))
        return 4;
    else if (!strcmp(relop, ">="))
        return 5;
    else
        return 6;
}
void asm_entry()
{

    IRNode node = IRhead;
    while (node)
    {
        InterCode code = node->code;
        Operand dest = code->u.assign.left;
        Operand src = code->u.assign.right;
        switch (code->kind)
        {
        case LABEL:
            label_instr(code->u.labelNo);
            break;
        case FUNCDEF:
            func_instr(code->u.func);
            declare_params(node->next);
            check_Nodes(node->next);
            append_instr(gen_instr("addi", "$sp", "$sp", "-4", 3));
            append_instr(gen_instr("sw", "$ra", "0($sp)", 0, 2));
            char s1[15];
            sprintf(s1, "%d", var_size);
            append_instr(gen_instr("addi", "$sp", "$sp", s1, 3));
            break;
        case ASSIGN:
        {
            if (code->u.assign.right->kind == CONSTANT)
            {
                char s8[15];
                strcpy(s8, code->u.assign.right->str + 1);
                append_instr(gen_instr("li", "$t0", s8, 0, 2));
            }
            else
            {
                char s10[15];
                sprintf(s10, "%d($fp)", append_find_mem(code->u.assign.right, 0));
                append_instr(gen_instr("lw", "$t0", s10, 0, 2));
            }
            char s9[15];
            sprintf(s9, "%d($fp)", append_find_mem(code->u.assign.left, 0));
            append_instr(gen_instr("sw", "$t0", s9, 0, 2));
        }
        break;
        case ADD:
            append_instr(gen_opr(code->u.binop.op1, "$t0"));
            append_instr(gen_opr(code->u.binop.op2, "$t1"));
            append_instr(gen_instr("add", "$t0", "$t0", "$t1", 3));
            append_instr(gen_opr_save(code->u.binop.res, "$t0"));
            break;
        case SUB:
            append_instr(gen_opr(code->u.binop.op1, "$t0"));
            append_instr(gen_opr(code->u.binop.op2, "$t1"));
            append_instr(gen_instr("sub", "$t0", "$t0", "$t1", 3));
            append_instr(gen_opr_save(code->u.binop.res, "$t0"));
            break;
        case MUL:
            append_instr(gen_opr(code->u.binop.op1, "$t0"));
            append_instr(gen_opr(code->u.binop.op2, "$t1"));
            append_instr(gen_instr("mul", "$t0", "$t0", "$t1", 3));
            append_instr(gen_opr_save(code->u.binop.res, "$t0"));
            break;
        case DIV_:
            append_instr(gen_opr(code->u.binop.op1, "$t0"));
            append_instr(gen_opr(code->u.binop.op2, "$t1"));
            append_instr(gen_instr("div", "$t0", "$t1", 0, 2));
            append_instr(gen_instr("mflo", "$t2", 0, 0, 1));
            append_instr(gen_opr_save(code->u.binop.res, "$t2"));
            break;
        case REF:
            {
                int mem = append_find_mem(code->u.assign.right, 0);
                char t6[15];
                sprintf(t6, "%d", mem);
                append_instr(gen_instr("addi", "$t0", "$fp", t6, 3));
                append_instr(gen_opr_save(code->u.assign.left, "$t0"));
            }
            break;
        case PTR_R: 
            {
                append_instr(gen_opr(code->u.assign.right, "$t0"));
                append_instr(gen_instr("lw", "$t1", "0($t0)", 0, 2));
                append_instr(gen_opr_save(code->u.assign.left, "$t1"));
            }
            break;
        case PTR_L:
            {
                append_instr(gen_opr(code->u.assign.right, "$t0"));
                append_instr(gen_opr(code->u.assign.left, "$t1"));
                append_instr(gen_instr("sw", "$t0", "0($t1)", 0, 2));
            }
            break;
        case GOTO:
        {
            char *t = (char *)malloc(15);
            sprintf(t, "label%d", code->u.labelNo);
            append_instr(gen_instr("j", t, 0, 0, 1));
        }
        break;
        case CONDGOTO:
        {
            append_instr(gen_opr(code->u.cond.op1, "$t1"));
            append_instr(gen_opr(code->u.cond.op2, "$t2"));
            char labelr[15];
            sprintf(labelr, "label%d", code->u.cond.labelNo);
            switch (check_relop(code->u.cond.relop))
            {
            case 1:
                append_instr(gen_instr("beq", "$t1", "$t2", labelr, 3));
                break;
            case 2:
                append_instr(gen_instr("bne", "$t1", "$t2", labelr, 3));
                break;
            case 3:
                append_instr(gen_instr("bgt", "$t1", "$t2", labelr, 3));
                break;
            case 4:
                append_instr(gen_instr("blt", "$t1", "$t2", labelr, 3));
                break;
            case 5:
                append_instr(gen_instr("bge", "$t1", "$t2", labelr, 3));
                break;
            default:
                append_instr(gen_instr("ble", "$t1", "$t2", labelr, 3));
                break;
            }
        }
        break;
        case RET:
        {
            append_instr(gen_instr("lw", "$ra", "-4($fp)", 0, 2));
            char s7[15];
            sprintf(s7, "%d($fp)", append_find_mem(code->u.sglop, 0));
            append_instr(gen_instr("lw", "$v0", s7, 0, 2));
            append_instr(gen_instr("move", "$sp", "$fp", 0, 2));
            append_instr(gen_instr("lw", "$fp", "0($sp)", 0, 2));
            append_instr(gen_instr("jr", "$ra", 0, 0, 1));
        }
        break;
        case DEC:
            break;
        case ARG:
            append_argstack(code->u.sglop);
            break;
        case CALL:
        {
            int size__ = code->u.call.func->dim;
            for (int i = 3 * size__; i > 0; i--)
                append_instr(arg_stack[arg_stack_size - i]);
            arg_stack_size -= 3 * size__;
            char s5[15];
            sprintf(s5, "%d", 4 + size__ * 4);
            char s6[15];
            sprintf(s6, "%d($fp)", append_find_mem(code->u.call.res, 0));
            append_instr(gen_instr("jal", code->u.call.func->ir_name, 0, 0, 1));
            append_instr(gen_instr("sw", "$v0", s6, 0, 2));
            append_instr(gen_instr("addi", "$sp", "$sp", s5, 3));
        }
        break;
        case PARAM:
            break;
        case READ:
        {
            append_instr(gen_instr("jal", "read", 0, 0, 1));
            append_instr(gen_opr_save(code->u.sglop, "$v0"));
            append_instr(gen_instr("addi", "$sp", "$sp", "4", 3));
        }
        break;
        case WRITE:
        {
            append_instr(gen_opr(code->u.sglop, "$t0"));
            append_instr(gen_instr("addi", "$sp", "$sp", "-4", 3));
            append_instr(gen_instr("sw", "$t0", "0($sp)", 0, 2));
            append_instr(gen_instr("jal", "write", 0, 0, 1));
            append_instr(gen_instr("addi", "$sp", "$sp", "8", 3));
        }
        break;
        default:
            break;
        }
        node = node->next;
    }
}

void print_asm(FILE *f)
{
    fprintf(f, ".data\n_prompt: .asciiz \"Enter an integer:\"\n_ret: .asciiz \"\\n\"\n.globl main\n.text\n");
    fprintf(f, "write:\n\taddi $sp, $sp, -4\n\tsw $fp, 0($sp)\n\tmove $fp, $sp\n\tlw $a0, 4($fp)\n\tli $v0, 1\n");
    fprintf(f, "\tsyscall\n\tla $a0, _ret\n\tli $v0, 4\n\tsyscall\n\tmove $v0, $0\n\tlw $t0, 0($fp)\n\tmove $sp, $fp\n\tmove $fp, $t0\n\tjr $ra\n");
    fprintf(f, "read:\n\taddi $sp, $sp, -4\n\tsw $fp, 0($sp)\n\tmove $fp, $sp\n");
    fprintf(f, "\tla $a0, _prompt\n\tli $v0, 4\n\tsyscall\n\tli $v0, 5\n\tsyscall\n\tlw $t0, 0($fp)\n\tmove $sp, $fp\n\tmove $fp, $t0\n\tjr $ra\n");
    InstrNode node = instrHead;
    Instr instr;
    while (node)
    {
        instr = node->instr;
        if (node->instr->islabel)
        {
            fprintf(f, "%s:\n", instr->opr1);
        }
        else
        {
            switch (instr->num_opr)
            {
            case 0:
                fprintf(f, "\t%s\n", instr->op);
                break;
            case 1:
                fprintf(f, "\t%s %s\n", instr->op, instr->opr1);
                break;
            case 2:
                fprintf(f, "\t%s %s, %s\n", instr->op, instr->opr1, instr->opr2);
                break;
            case 3:
                fprintf(f, "\t%s %s, %s, %s\n", instr->op, instr->opr1, instr->opr2, instr->opr3);
                break;
            default:
                break;
            }
        }

        node = node->next;
    }
}