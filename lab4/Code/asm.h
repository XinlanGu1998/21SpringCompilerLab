#ifndef ASM_H
#define ASM_H

#include "IR.h"
typedef struct InstrOpr_ *InstrOpr;
struct asm_table
{
    char* name;
    int where;
    struct asm_table *next;
};

typedef struct Instr_ *Instr;
struct Instr_
{
    bool islabel;
    char op[6];
    int num_opr; //0-3
    char opr1[15], opr2[15], opr3[15];
};

typedef struct InstrNode_ *InstrNode;
struct InstrNode_
{
    Instr instr;
    InstrNode next;
};

//entry of this module
void asm_entry();

/*char *reg_str(int reg_id);
static int reg(Operand opr);

//wrap instr operands
static InstrOpr regOpr(int reg_id);  //$v0
static InstrOpr addrOpr(int reg_id); //0($v0)
static InstrOpr jmpDestOpr(char *dest);
static InstrOpr otherOpr(Operand ir_opr);

//wrap instrs and append them to the instr list
static void label_instr(int labelNo);
static void func_instr(F_Type *funcName);
static void load_instr(InstrOpr dest, InstrOpr src);
static void move_instr(int rdest, int rsrc);
static void sw_instr(InstrOpr mdest, int rsrc);
static void condjmp_instr(InterCode code);
static void jmp_instr(InterCode code);

//deal with particular IR
static void assign_instrs(InterCode code);
static void return_instrs(InterCode code);
static void ASMD_instrs(InterCode code); //add sub mul div
static void read_instrs(InterCode code);
static void write_instrs(InterCode code);

//deal with more than 1 IRs
static IRNode procedure_call(IRNode node); //ARGs & CALL
static IRNode declare_params(IRNode node); //PARAMs*/

void print_asm(FILE *f);

//make instrs

#endif