%{
#include "syntax_tree.h"
#define YYSTYPE Node*
Node* root;
%}
%token INT
%token FLOAT
%token ID
%token SEMI COMMA
%token TYPE 
%token LC RC
%token STRUCT RETURN IF WHILE
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%right ASSIGNOP
%left OR
%left AND
%left RELOP
%left PLUS MINUS
%left STAR DIV
%right NOT
%left LP RP LB RB DOT

%%

Program : ExtDefList {$$=init_syn("Program",@$.first_line,1,$1);root=$$;}
	;
ExtDefList : ExtDef ExtDefList {$$=init_syn("ExtDefList",@$.first_line,2,$1,$2);}
	| {$$=init_vacum("ExtDefList");}
	; 
ExtDef : Specifier ExtDecList SEMI {$$=init_syn("ExtDef",@$.first_line,3,$1,$2,$3);}	
	| Specifier SEMI {$$=init_syn("ExtDef",@$.first_line,2,$1,$2);}			
	| Specifier FunDec CompSt {$$=init_syn("ExtDef",@$.first_line,3,$1,$2,$3);}		
	;
ExtDecList : VarDec {$$=init_syn("ExtDecList",@$.first_line,1,$1);}		
	| VarDec COMMA ExtDecList {$$=init_syn("ExtDecList",@$.first_line,3,$1,$2,$3);}		
	;
Specifier : TYPE {$$=init_syn("Specifier",@$.first_line,1,$1);}	
	| StructSpecifier {$$=init_syn("Specifier",@$.first_line,1,$1);}	
	;
StructSpecifier : STRUCT OptTag LC DefList RC {$$=init_syn("StructSpecifier",@$.first_line,5,$1,$2,$3,$4,$5);}
	| STRUCT Tag {$$=init_syn("StructSpecifier",@$.first_line,2,$1,$2);}
	;
OptTag : ID {$$=init_syn("OptTag",@$.first_line,1,$1);}
	| {$$=init_vacum("OptTag");}
	;
Tag : ID {$$=init_syn("Tag",@$.first_line,1,$1);}
	;

VarDec : ID {$$=init_syn("VarDec",@$.first_line,1,$1);}
	| VarDec LB INT RB {$$=init_syn("VarDec",@$.first_line,4,$1,$2,$3,$4);}
	;
FunDec : ID LP VarList RP {$$=init_syn("FunDec",@$.first_line,4,$1,$2,$3,$4);}
	| ID LP RP {$$=init_syn("FunDec",@$.first_line,3,$1,$2,$3);}
	;
VarList : ParamDec COMMA VarList {$$=init_syn("VarList",@$.first_line,3,$1,$2,$3);}
	| ParamDec {$$=init_syn("VarList",@$.first_line,1,$1);}
	;
ParamDec : Specifier VarDec {$$=init_syn("ParamDec",@$.first_line,2,$1,$2);}
	;

//Statements
CompSt : LC DefList StmtList RC {$$=init_syn("CompSt",@$.first_line,4,$1,$2,$3,$4);}
	;
StmtList : Stmt StmtList {$$=init_syn("StmtList",@$.first_line,2,$1,$2);}
	| {$$=init_vacum("StmtList");}
	; 
Stmt : Exp SEMI {$$=init_syn("Stmt",@$.first_line,2,$1,$2);}
	| CompSt {$$=init_syn("Stmt",@$.first_line,1,$1);}
	| RETURN Exp SEMI {$$=init_syn("Stmt",@$.first_line,3,$1,$2,$3);}
	| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE {$$=init_syn("Stmt",@$.first_line,5,$1,$2,$3,$4,$5);}
	| IF LP Exp RP Stmt ELSE Stmt {$$=init_syn("Stmt",@$.first_line,7,$1,$2,$3,$4,$5,$6,$7);}
	| WHILE LP Exp RP Stmt {$$=init_syn("Stmt",@$.first_line,5,$1,$2,$3,$4,$5);}
	;

DefList : Def DefList {$$=init_syn("DefList",@$.first_line,2,$1,$2);}
	| {$$=init_vacum("DefList");}
	; 
Def : Specifier DecList SEMI {$$=init_syn("Def",@$.first_line,3,$1,$2,$3);}
	;
DecList : Dec {$$=init_syn("DecList",@$.first_line,1,$1);}
	| Dec COMMA DecList {$$=init_syn("DecList",@$.first_line,3,$1,$2,$3);}
	;
Dec : VarDec {$$=init_syn("Dec",@$.first_line,1,$1);}
	| VarDec ASSIGNOP Exp {$$=init_syn("Dec",@$.first_line,3,$1,$2,$3);}
	;

Exp : Exp ASSIGNOP Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);} 
	| Exp AND Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp OR Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp RELOP Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp PLUS Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp MINUS Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp STAR Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp DIV Exp {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| LP Exp RP {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| MINUS Exp {$$=init_syn("Exp",@$.first_line,2,$1,$2);}
	| NOT Exp {$$=init_syn("Exp",@$.first_line,2,$1,$2);}
	| ID LP Args RP {$$=init_syn("Exp",@$.first_line,4,$1,$2,$3,$4);}
	| ID LP RP {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| Exp LB Exp RB {$$=init_syn("Exp",@$.first_line,4,$1,$2,$3,$4);}
	| Exp DOT ID {$$=init_syn("Exp",@$.first_line,3,$1,$2,$3);}
	| ID {$$=init_syn("Exp",@$.first_line,1,$1);}
	| INT {$$=init_syn("Exp",@$.first_line,1,$1);}
	| FLOAT {$$=init_syn("Exp",@$.first_line,1,$1);}
	;
Args : Exp COMMA Args {$$=init_syn("Args",@$.first_line,3,$1,$2,$3);}
	| Exp {$$=init_syn("Args",@$.first_line,1,$1);}
	;

%%

#include "lex.yy.c"
int main(int argc, char** argv)
{
	if (argc <= 1) return 1;
	FILE* f = fopen(argv[1], "r");
	if (!f)
	{
		perror(argv[1]);
		return 1;
	}
	yyrestart(f);
	yyparse();
	if(!ERROR_FLAG)
	{
		check_vacuum(root);
		print_tree(root,0);
	}
	return 0;
}
yyerror(char* msg){
	fprintf(stderr, "error:%s\n",msg);
}
