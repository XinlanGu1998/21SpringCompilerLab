#ifndef IR_OPTIMIZE_H
#define IR_OPTIMIZE_H

#include "IR.h"

typedef struct BasicBlock_* BasicBlock;
struct BasicBlock_ {
    int labelNo;
    IRNode head, tail;
    BasicBlock next1, next2;
};


void IR_optimize_entry();

static void append_block(IRNode head, IRNode tail);
static void divide_blocks();
static void print_blocks();

static bool reduce_temp_var(BasicBlock b);
static bool reduce_constant(IRNode node);

/*
typedef struct DAGNode_* DAGNode;
struct DAGNode_{
    bool isLeaf;
    bool active;
    enum IC_KIND op_kind;   //ASSIGN, ADD, SUB, MUL, DIV_, REF, PTR_R, PTR_L
    DAGNode child1, child2, child3;
    Operand self;
};
*/

#endif