%{
#include <stdio.h>
#define YYDEBUG 1
void yyerror(char* msg);
void myerr(char* msg);
int yylex();
%}
%union {
	int type_int;
	float type_float;
	double type_double;
}
%token <type_int> INT
%token <type_float> FLOAT
%token ID
%token COMMA
%token TYPE 


%nonassoc LC RC
%nonassoc HIGHER_THAN_RC

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

%token SEMI

%%

//high-level definitions

Program: ExtDefList  
	;
ExtDefList: ExtDef ExtDefList
	|
	; 
ExtDef: Specifier ExtDecList SEMI	
	| Specifier error 			{myerr("Cannot combine with previous specifier.");}
	| Specifier ExtDecList error {myerr("Expected \";\" after definition.");}
	| Specifier SEMI
	| error SEMI {myerr("Expected specifier.");}		
	| Specifier FunDec CompSt	
	;
ExtDecList: VarDec			
	| VarDec COMMA ExtDecList		
	;

//Specifiers

Specifier: TYPE
	| StructSpecifier
	;
StructSpecifier: STRUCT OptTag LC DefList RC
	| STRUCT Tag
	;
OptTag: ID
	| 
	;
Tag: ID
	;

//Declarators

VarDec: ID
	| VarDec LB INT RB
	| VarDec LB error RB				{myerr("Expected INT between \"[]\".");}
	;
FunDec: ID LP VarList RP
	| ID LP RP
	| error LP RP									{myerr("Missing Func ID.");}
	| ID LP error 						{myerr("Missing \")\".");}
	| error RP							{myerr("Missing \"(\".");}
	;
VarList: ParamDec COMMA VarList
	| ParamDec
	;
ParamDec: Specifier VarDec
	;

//Statements

CompSt: LC DefList StmtList RC
	| error DefList StmtList RC						{myerr("Missing \"{\".");}
	| LC DefList StmtList error	%prec HIGHER_THAN_RC {myerr("Missing \"}\".");} 
	;
StmtList: Stmt StmtList
	|
	; 
Stmt: Exp SEMI
	| Exp error SEMI							{myerr("Missing \";\".");}
	| CompSt
	| RETURN Exp SEMI
	| RETURN Exp error SEMI						{myerr("Wrong return stmt.");}
	| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE
	| IF LP Exp RP Stmt ELSE Stmt
	| WHILE LP Exp RP Stmt						
	;

//Local definitions

DefList: Def DefList
	|
	; 
Def: Specifier DecList SEMI
	| error SEMI			{myerr("Missing \";\".");}
	;
DecList: Dec	
	| Dec COMMA DecList
	;
Dec: VarDec
	| VarDec ASSIGNOP Exp
	| VarDec ASSIGNOP error {myerr("Expected expression.");}
	;

//Expressions

Exp: Exp ASSIGNOP Exp
	| Exp ASSIGNOP error	{myerr("Expected expression.");}
	| Exp AND Exp
	| Exp OR Exp
	| Exp RELOP Exp
	| Exp PLUS Exp
	| Exp MINUS Exp
	| Exp STAR Exp
	| Exp DIV Exp
	| LP Exp RP
	| MINUS Exp
	| NOT Exp
	| ID LP Args RP
	| ID LP error RP	{myerr("Expected Args between \"()\".");}
	| ID LP RP
	| Exp LB Exp RB
	| Exp LB error RB 	{myerr("Expected INT between \"[]\".");}
	| Exp DOT ID
	| ID
	| INT
	| FLOAT
	;
Args: Exp COMMA Args
	| Exp
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

	//only enabled in debuging
	yydebug = 1; 

	yyparse();
	return 0;
}

void myerr(char* msg){
	printf("ERROR TYPE B at line %d: %s\n",line,msg);
}

void yyerror(char* msg){
	//do nothing
	//printf("YYERROR TYPE B at line %d: %s\n",line,msg);
}
