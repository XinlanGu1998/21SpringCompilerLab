digit [0-9]
letter [_a-zA-Z]
character [0-9_a-zA-Z]
%{
#include<stdio.h>
int line=1;

%}
%%
("int"|"float")/[^0-9_a-zA-Z] {return TYPE;}
"if"/[^0-9_a-zA-Z] {return IF;}
"else"/[^0-9_a-zA-Z] {return ELSE;}
"while"/[^0-9_a-zA-Z] {return WHILE;}
"return"/[^0-9_a-zA-Z] {return RETURN;}
"struct"/[^0-9_a-zA-Z] {return STRUCT;}
(([1-9][0-9]*)|0)\.{digit}+ {return FLOAT;}
0[0-7]+ {return INT;} /*cast before return*/
0[xX][0-9A-Fa-f]+ {return INT;} /*cast before return*/
([1-9][0-9]*)|0 {return INT;}
{letter}{character}* {return ID;}
";" {return SEMI;}
"," {return COMMA;}
"=="|">="|"<="|"!=" {return RELOP;}
(">"|"<")/[^=] {return RELOP;}
"="/[^=] {return ASSIGNOP;}
"*" {return STAR;}
"+" {return PLUS;}
"-" {return MINUS;}
"." {return DOT;}
"!"/[^=] {return NOT;}
"/" {return DIV;}
"&&" {return AND;}
"||" {return OR;}
"(" {return LP;}
")" {return RP;}
"[" {return LB;}
"]" {return RB;}
"{" {return LC;}
"}" {return RC;}
\n {line++;}
[ \t\0]+ {}
. {printf("ERROR TYPE A at line %d, undefined character: ",line);puts(yytext);}
%%
