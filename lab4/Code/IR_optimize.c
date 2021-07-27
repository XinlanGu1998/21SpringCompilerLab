#include "IR_optimize.h"

BasicBlock findByLabel[0x3fff];
BasicBlock bHead = NULL, bTail = NULL;
//DAGNode* vars, *temps;

void append_block(IRNode head, IRNode tail){
    assert(head); assert(tail);
    BasicBlock b = (BasicBlock) malloc (sizeof (struct BasicBlock_));
    b->head = head;
    b->tail = tail;

    InterCode c = head->code;
    if (c->kind == LABEL){
        b->labelNo = c->u.labelNo;
        findByLabel[b->labelNo] = b;
    }else{
        b->labelNo = 0;
    }

    b->next1 = NULL;
    b->next2 = NULL;

    //append to block list
    if (!bHead){
        bHead = b;
        bTail = b;
    }else{
        bTail->next1 = b;
        bTail = b;
    }

}

void fill_labelNo(){
    BasicBlock b = bHead;
    while (b){
        InterCode c = b->tail->code;
        if (c->kind == GOTO){
            b->next2 = findByLabel[c->u.labelNo];
        } else if (c->kind == CONDGOTO){
            b->next2 = findByLabel[c->u.cond.labelNo];
        }
        b = b->next1;
    }
}

void print_blocks(){
    printf("-----PRINT BLOCKS-----\n");
    BasicBlock b = bHead;
    int i = 0;
    while (b){
        printf("\nBasic block %d :\n", i);
        IRNode cur = b->head;
        while (cur != b->tail){
            print_code(stdout, cur->code);
            cur = cur->next;
        }
        print_code(stdout, cur->code);
        b = b->next1;
        i++;
    }
    printf("-----END OF PRINT BLOCKS----\n");
}

void IR_optimize_entry(){
    divide_blocks();
    //vars = (DAGNode*) malloc(sizeof(DAGNode) * (var_count+1));
    //temps = (DAGNode*) malloc(sizeof(DAGNode) * (temp_count+1));
    BasicBlock b = bHead;
    while (b){
        reduce_temp_var(b);
        b = b->next1;
    }
    //print_blocks();

}

void divide_blocks(){

    IRNode cur = IRhead, start = IRhead;
    while (cur){
        InterCode code = cur->code;
        if (code->kind == LABEL && cur->prev && start != cur){
            append_block(start, cur->prev);
            start = cur;
        }else if (code->kind == GOTO || code->kind == CONDGOTO || code->kind == CALL || code->kind == RET){
            append_block(start,cur);
            start = cur->next;
        }
        cur = cur->next;
    }
    if (start) append_block(start, IRtail);
    fill_labelNo();
}

bool same_op(Operand op1, Operand op2){
    return strcmp(op1->str,op2->str)==0;
}


//return next
IRNode remove_IR(IRNode node){
    node->prev->next = node->next;
    node->next->prev = node->prev;
    return node->next;
}

//try replace simple uses of t1 with its value 
//if t1 is assgined var or constant
bool try_replace(IRNode use, Operand t1, Operand value){
    InterCode c = use->code;
    if (c->kind == RET || c->kind == WRITE || c->kind == ARG){
        c->u.sglop = value;
        return true;
    }
    if (c->kind == ASSIGN){
        c->u.assign.right = value;
        return true;
    }
    if (c->kind == ADD || c->kind == SUB || c->kind == MUL || c->kind == DIV_){
        if (same_op(c->u.binop.op1, t1)) c->u.binop.op1 = value;
        if (same_op(c->u.binop.op2, t1)) c->u.binop.op2 = value;
        reduce_constant(use);
        return true;
    }
    if (c->kind == CONDGOTO){
        if (same_op(c->u.cond.op1, t1)) c->u.cond.op1 = value;
        if (same_op(c->u.cond.op2, t1)) c->u.cond.op2 = value;
        return true;
    }
    return false;
}

bool uses_opr(Operand opr, InterCode c){
    if (c->kind == RET || c->kind == WRITE || c->kind == ARG){
        return same_op(c->u.sglop, opr);
    }else if (c->kind == ASSIGN || c->kind == REF || c->kind == PTR_R || c->kind == PTR_L){
        return same_op(c->u.assign.right, opr);
    }else if (c->kind == ADD || c->kind == SUB || c->kind == MUL || c->kind == DIV_){
        return same_op(c->u.binop.op1, opr) || same_op(c->u.binop.op2, opr);
    }else if (c->kind == CONDGOTO){
        return same_op(c->u.cond.op1, opr) || same_op(c->u.cond.op2, opr);
    }else{
        return false;
    }
}

bool reduce_constant(IRNode node){
    InterCode c = node->code;
    if (c->kind == ADD || c->kind == SUB || c->kind == MUL || c->kind == DIV_){
        Operand op1 = c->u.binop.op1, op2 = c->u.binop.op2;
        if (op1->kind == CONSTANT && op2->kind == CONSTANT){
            switch (c->kind)
            {
            case ADD:
                op1->u.value = op1->u.value + op2->u.value;
                break;
            case SUB:
                op1->u.value = op1->u.value - op2->u.value;
                break;
            case MUL:
                op1->u.value = op1->u.value * op2->u.value;
                break;
            case DIV_:
                op1->u.value = op1->u.value / op2->u.value;
            default:
                break;
            }
            node->code = new_assign(ASSIGN, c->u.binop.res, op1);
            return true;
        }
    }
    return false;
}

bool reduce_temp_var(BasicBlock b){
    bool changed = false;
    IRNode ir = b->head;
    while (ir != b->tail){
        //print_code(stdout, ir->code);
        InterCode code = ir->code;
        if (code->kind!=ASSIGN) {
            ir = ir->next;
            continue;
        }
        Operand temp = code->u.assign.left;
        if (temp->kind!=TEMP) {
            ir = ir->next;
            continue;
        }
        IRNode use = ir->next;

        //check if temp is used later in this block
        while (use!=b->tail->next && !uses_opr(temp, use->code)){
            use = use->next;
        }
        if (use == b->tail->next) { //temp never used in this block
            ir = remove_IR(ir);
        }else{                  //try to replace temp with its value
            bool replaced = try_replace(use, temp, code->u.assign.right);
            if (replaced){
                ir = remove_IR(ir);
                changed = true;
            }
            else ir = ir->next;
        }
    }
    return changed;
}




/*
DAGNode make_DAGLeaf(Operand op){
    DAGNode leaf = (DAGNode) malloc (sizeof(struct DAGNode_));
    leaf->isLeaf = true;
    leaf->self = op;
    leaf->child1 = NULL;
    leaf->child2 = NULL;
    leaf->child3 = NULL;
    return leaf;
}

DAGNode get_op_node(Operand op){
    if (op->kind == CONSTANT){
        return make_DAGLeaf(op);
    }else if (op->kind == VARIABLE){
        if (!vars[op->u.number]) 
            vars[op->u.number] = make_DAGLeaf(op);
        return vars[op->u.number];
    }else{
        if (!temps[op->u.number]) 
            temps[op->u.number] = make_DAGLeaf(op);
        return temps[op->u.number];
    }
}

DAGNode make_DAGNode(InterCode c){
    DAGNode node = (DAGNode) malloc (sizeof(struct DAGNode_));
    node->isLeaf = false;
    node->op_kind = c->kind;
    if (c->kind == READ){
        node->self = c->u.sglop;
    }else if (c->kind == RET || c->kind == WRITE || c->kind == ARG){
        node->self = NULL;
        node->child1 = get_op_node(c->u.sglop);
    }else if (c->kind == ASSIGN || c->kind == REF || c->kind == PTR_R || c->kind == PTR_L){
        node->self = c->u.assign.left;
        node->child1 = get_op_node(c->u.assign.right);
    }else if (c->kind == ADD || c->kind == SUB || c->kind == MUL || c->kind == DIV_){
        node->self = c->u.binop->res;
        node->child1 = get_op_node(c->u.binop->op1);
        node->child2 = get_op_node(c->u.binop->op2);
    }
    return node;
}

int DAG_insert(DAGNode* roots, int rootCount, DAGNode newNode){
    Operand new_opr = newNode->self;
    for (int i = 0; i < rootCount){
        DAGNode node = roots[i];

        if (same_op(node->self, new_opr)){

        }
    }
}
void optimize_block(BasicBlock b){
    
    int rootCount = 0;
    IRNode ir = b->tail;
    while (ir!=b->head){

        DAGNode node = make_DAGNode(ir->code);

        op = node->self;
        if (op)

        ir = ir->prev;
    }
    
}
*/