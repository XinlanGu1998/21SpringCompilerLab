#ifndef SYNTAX_TREE_H
#define SYNTAX_TREE_H
#include<stdio.h>
#include<stdlib.h>
#include<memory.h>
#include<stdbool.h>
#include<stdarg.h>
#include<string.h>

enum token_type{
    TYPE, INT, FLOAT,
	IF, ELSE, WHILE, RETURN, STRUCT, ID, SEMI, COMMA, RELOP, 
	ASSIGNOP, STAR, PLUS, MINUS, DOT, NOT, DIV, AND, OR, 
	LP, RP, LC, RC, LB, RB
};
extern char* token_names[100];

typedef struct syn_tree
{
	bool token;
	bool vacuum;
	bool value;
	int line;
	enum token_type t_type;
	//char* name;
	char* val;
	struct syn_tree* child;
	struct syn_tree* next;
}Node;
extern Node* init_token(enum token_type t_type, const char* value);//for tokens
extern Node* init_node_2(enum token_type t_type, int line);//for syntaxs
extern void append_node(Node* root, Node* subnode);
extern void print_tree(Node* root, int depth);
extern void check_vacuum(Node* root);
extern void set_vacuum(Node* root);
extern Node* init_syn(enum token_type t_type, int line, int num, ...);
extern Node* init_vacum(enum token_type t_type);
#endif
