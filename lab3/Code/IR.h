#ifndef IR_H
#define IR_H

#include "sym_table.h"

typedef struct Operand_* Operand;
struct Operand_ {
    enum { 
        VARIABLE, TEMP, CONSTANT
    } kind;
    union {
        Sym_Type* sym;  //VARIABLE
        int tempNo;     //TEMP
        int value;      //CONSTANT
    } u;
    bool is_addr;
    char* str;  //for output       
};

enum IC_KIND{          
    LABEL,      // LABEL x :
    FUNCDEF,    // FUNCTION f :
    ASSIGN,     // x := y
    ADD,        // x := y + z
    SUB,        // x := y - z
    MUL,        // x := y * z
    DIV_,        // x := y / z
    REF,        // x := &y
    PTR_R,      // x := *y
    PTR_L,      // *x := y
    GOTO,       // GOTO x
    CONDGOTO,   // IF x [relop] y GOTO z
    RET,        // RETURN x
    DEC,        // DEC x [size] 数组分配空间
    ARG,        // ARG x
    CALL,       // x := CALL f
    PARAM,      // PARAM x
    READ,       // READ x
    WRITE       // WRITE x
};

typedef struct InterCode_* InterCode;
struct InterCode_{
    enum IC_KIND kind;
    union {
        int labelNo;    //LABEL, GOTO
        F_Type* func;   //FUNCTION
        Operand sglop;  //PARAM, READ, WRITE, RET, ARG
        struct { 
            Operand right, left;
        } assign;       //ASSIGN, REF, PTR_R, PTR_L
        struct {
            Operand res, op1, op2;
        } binop;        //ADD, SUB, MUL, DIV
        struct {
            Operand op1, op2;
            char* relop; 
            int labelNo;
        } cond;         //COND
        struct {
            Sym_Type* sym;
            int size;
            Operand opr;
        } dec;          //DEC
        struct {
            Operand res;
            F_Type* func;
        } call;         //CALL
        //...  
    } u;
};

typedef struct InterCodes_* IRNode;
struct InterCodes_ { 
    InterCode code;
    IRNode prev, next;
};

//external interfaces
void translate_entry(Node *root);

void print_code(FILE *f, InterCode code);
void printIR(FILE *f);

extern IRNode IRhead, IRtail;
extern int label_count, temp_count, var_count, func_count;

//internal functions
static void translate_FuncDef(Node* root);
static void translate_Params(Node* root);
static void translate_CompSt(Node* root);
static void translate_Def(Node* def);
static void translate_Stmt(Node* stmt);
static void translate_Exp(Node* exp, Operand place); //place: where to store the result
static void translate_Cond(Node* exp, InterCode label_true, InterCode label_false);
static void translate_Args(Node* args);
static void translate_Dec(Node* dec);

static void IR_append(InterCode code);

static Operand new_var(Sym_Type* sym);
static Operand new_temp();
static Operand new_const(int c);

static InterCode new_label();
static InterCode new_funcDef(F_Type* func);
static InterCode new_param(Sym_Type* sym);
static InterCode new_goto(int labelNo);
static InterCode new_condGoto(Operand op1, Operand op2, char* relop, int labelNo);
static InterCode new_dec(Sym_Type* sym, int size);
static InterCode new_call(Operand res, F_Type* func);
//下面几条需要传入IC_KIND
//ASSIGN, REF, PTR_R, PTR_L
InterCode new_assign(enum IC_KIND kind, Operand left, Operand right);
//ADD, SUB, MUL, DIV
InterCode new_binop(enum IC_KIND kind, Operand res, Operand op1, Operand op2);
//READ, WRITE, RET, ARG
InterCode new_sglop(enum IC_KIND kind, Operand op);

//only for testing internal tools
void IR_temp_test();


//and more...

#endif