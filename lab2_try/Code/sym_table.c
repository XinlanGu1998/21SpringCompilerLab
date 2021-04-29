#include "sym_table.h"
#include "assert.h"
//sym,func and struct table
St_Type *struct_table[0x3fff];
Sym_Type *symbol_table[0x3fff];
F_Type *function_table[0x3fff];

bool isToken(Node* token,const char* name){
    assert(token);
    return !strcmp(token->name,name);
}

int name_count = 0;

//insert and find
F_Type *find_Func(char *name)
{
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    for (F_Type *p = function_table[sum % 0x3fff]; p != NULL; p = p->next)
    {
        if ((!strcmp(name, p->name)))
            return p;
    }
    return NULL;
}
Sym_Type *find_Sym(char *name)
{
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    for (Sym_Type *p = symbol_table[sum % 0x3fff]; p != NULL; p = p->next)
    {
        if (!strcmp(name, p->name))
            return p;
    }
    return NULL;
}
St_Type *find_Stru(char *name)
{
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    for (St_Type *p = struct_table[sum % 0x3fff]; p != NULL; p = p->next)
    {
        if (!strcmp(name, p->type->u.structure->name))
            return p;
    }
    return NULL;
}
void insert_Func(char *name, bool defined, int dim, Type *r_type, struct t_paralist *para_list, int line)
{
    printf("Insert_Func:r_type=%d, name=%s, defined=%d\n",r_type->kind,name,defined);
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    F_Type *p = (F_Type *)malloc(sizeof(F_Type));
    p->next = function_table[sum % 0x3fff];
    function_table[sum % 0x3fff] = p;
    p->dim = dim;
    p->name = name;
    p->para_list = para_list;
    p->r_type = r_type;
    p->defined = defined;
    p->line = line;
}
bool type_check(Type *a, Type *b)
{
    if (a == NULL || b == NULL)
        return false;
    if (a->kind != b->kind)
        return false;
    if (a->kind == BASIC)
    {
        if (a->u.basic != b->u.basic)
            return false;
    }
    else if (a->kind == ARRAY)
    {
        return type_check(a->u.array.elem, b->u.array.elem);
    }
    else if (a->kind == STRUCTURE)
    {
        if (!strcmp(a->u.structure->name, b->u.structure->name))
            return false;
    }
    return true;
}
bool check_func(int dim, Type *r_type, struct t_paralist *para_list, F_Type *p)
{
    if (p->dim != dim)
        return false;
    if (!type_check(r_type, p->r_type))
        return false;
    for (struct t_paralist *i = para_list, *j = p->para_list; i != NULL; i = i->next, j = j->next)
    {
        if (!type_check(i->para_type, j->para_type))
            return false;
    }
    return true;
}
void defFunc(F_Type *p)
{
    p->defined = 1;
}
void insert_Struc(Type *type, char *name)
{
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    St_Type *p = (St_Type *)malloc(sizeof(St_Type));
    p->type = type;
    p->next = struct_table[sum % 0x3fff];
    struct_table[sum % 0x3fff] = p;
}
void insert_Sym(Type *type, char *name)
{
    printf("Insert_Sym:type=%d, name=%s\n",type->kind,name);
    int sum = 0;
    for (int i = 0; name[i] != '\0'; i++)
    {
        sum += name[i];
    }
    Sym_Type *p = (Sym_Type *)malloc(sizeof(Sym_Type));
    p->name = name;
    p->type = type;
    p->next = symbol_table[sum % 0x3fff];
    symbol_table[sum % 0x3fff] = p;
}


void Program(Node *root)
{
    if (!root || root->vacuum) return;
    printf("Program\n");
    ExtDefList(root->child);
}
void ExtDefList(Node *root){
    if (!root || root->vacuum) return;
    printf("ExtDefList\n");
    Node* def = root->child;
    ExtDef(def);
    ExtDefList(def->next);
}
void ExtDef(Node *root){
    if (!root || root->vacuum) return;
    printf("ExtDef\n");
    Type* type = Specifier(root->child);
    Node* next = root->child->next;
    assert(next && !next->vacuum);
    //ExtDef -> Specifier SEMI
    if (isToken(next,"SEMI")){
        if (type->kind == STRUCTURE){
            //TODO with anonymous struct def
            name_count++;
        }
        //basic or array type: skip
        return;
    }
    if (isToken(next,"ExtDecList")){
        ExtDecList(next,type);
    }
    if (isToken(next,"FunDec")){
        if (isToken(next->next,"CompSt"))
            FunDec(next,type,true);
        else
            FunDec(next,type,false);
    }

}
void ExtDecList(Node *root, Type *type){
    if (!root || root->vacuum) return;
    printf("ExtDecList\n");
    Node* var = root->child;
    VarDec(var,type);

    if (!var->next || var->next->vacuum) return;
    //ExtDecList -> VarDec COMMMA ExtDecList
    ExtDecList(var->next->next,type);
}

//Specifiers
Type *Specifier(Node *root){
    if (!root || root->vacuum) return NULL;
    printf("Specifier\n");

    Node* typeNode = root->child;

    //Specifier -> TYPE
    if (isToken(typeNode,"TYPE")){
        Type* type = (Type*)malloc(sizeof(Type));
        type->kind = BASIC;
        if (!strcmp(typeNode->val,"int")){
            type->u.basic = 0;
        }else{  //typeNode->val=="float"
            type->u.basic = 1;
        }
    }else{  //Specifier -> StructSpecifier
        return StructSpecifier(typeNode);
    }

}
//TODO
Type *StructSpecifier(Node *root){
    return NULL;
}

char *OptTag(Node *root){
    return NULL;
}
char *Tag(Node *root){
    return NULL;
}

//Declarators
void VarDec(Node *root, Type *type){
    if (!root || root->vacuum) return;
    printf("VarDec\n");
    Node* first = root->child;
    //VarDec -> ID
    if (isToken(first,"ID")){
        char* varName = first->val;
        if (find_Sym(varName) || find_Stru(varName)){
            print_error(3, root->line, varName);
        }else{
            insert_Sym(type, varName);
        }

    }else{  //first->name == "VarDec"
    //VarDec -> VarDec LB INT RB	
        Node* sizeNode = first->next->next;
        assert(isToken(sizeNode,"INT"));
        int size = atoi(sizeNode->val);
        Type* type1 = (Type*)malloc(sizeof(Type));
        type1->kind = ARRAY;
        type1->u.array.elem = type;
        type1->u.array.size = size;
        VarDec(first,type1);
    }
}
//TODO
void FunDec(Node *root, Type *r_type, bool isDef){
    if (!root || root->vacuum) return;
    printf("FunDec\n");
    Node* idNode = root->child;
    char* fName = idNode->val;
    Node* varList = idNode->next->next;
    struct t_paralist* para_list = NULL;

    int* dim = (int*) malloc(sizeof(int));
    *dim = 0;
    if (isToken(varList,"VarList")){
        para_list = VarList(varList, dim);
    }
    int d = *dim;
    free(dim);
    F_Type* f = find_Func(fName);
    if (!f){
        insert_Func(fName,isDef,d,r_type,para_list,root->line);
    }else{
        if (!check_func(d,r_type,para_list,f)){
            print_error(19,root->line, fName);
        }else if (isDef){
            if (f->defined){
                print_error(4,root->line, fName);
            }else{
                f->defined = true;
            }
        }
    }
}

struct t_paralist *VarList(Node *root, int* dim){
    if (!root || root->vacuum) return NULL;
    printf("VarList\n");
    Node* first = root->child;
    assert(isToken(first,"ParamDec"));
    Type* type = ParamDec(first);
    (*dim)++;
    struct t_paralist* para_list = (struct t_paralist*) malloc(sizeof(struct t_paralist));
    para_list->para_type = type;
    
    if (!first->next){
        para_list->next = NULL;
    }else{
        para_list->next = VarList(first->next->next,dim);
    }
    return para_list;
}

Type *ParamDec(Node *root){
    if (!root || root->vacuum) return NULL;
    printf("ParamDec\n");
    Node* typeNode = root->child;
    assert(isToken(typeNode,"Specifier"));
    Type* type = Specifier(typeNode);
    Node* varNode = typeNode->next;
    VarDec(varNode,type);
    return type;
}

//Statements
void CompSt(Node *root, Type *r_type){
    if (!root || root->vacuum) return;
    Node* defList = root->child->next;
    DefList(defList);
    Node* stmtList = defList->next;
    StmtList(stmtList, NULL);   //why r_type?
}
void StmtList(Node *root, Type *r_type){
    if (!root || root->vacuum) return;
    Node* stmt = root->child;
    Stmt(stmt, NULL);
    StmtList(stmt->next,NULL);
}
void Stmt(Node *root, Type *r_type){
    if (!root || root->vacuum) return;
    Node* first = root->child;
    if (isToken(first, "EXP")){
        Exp(first);
    }
}

//Local Definitions
void DefList(Node *root){}
void Def(Node *root){}
void DecList(Node *root, Type *type){}
void Dec(Node *root, Type *type){}

//Expressions
Type *Exp(Node *root){return NULL;} //every expression has a type
void Args(Node *root){} //parameter_list, check each parameter's type

void print_error(int errorNo,int line, char* name){
    printf("ERROR TYPE %d at line %d: ", errorNo, line);
    switch (errorNo)
    {
    case 3:
        printf("Redefined variable \"%s\".\n", name);
        break;
    case 4:
        printf("Redefined function \"%s\".\n", name);
        break;
    case 18:    //impossible now, 需要实现在语义分析完成后遍历所有函数进行检查的功能
        printf("Undefined function \"%s\".\n", name);
        break; 
    case 19:
        printf("Inconsistent declaration of function \"%s\".\n", name);
        break;   
    default:
        break;
    }
    
}
