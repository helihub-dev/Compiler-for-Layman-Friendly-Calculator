%{
	#include<stdio.h>
	#include "y.tab.h"
	int yyerror(char *s);
	int yyparse(void);
%}
%token NL a b n OP w c p t NUMBER 

%%
S : T NL 
  | E NL  {printf("Given statement is valid\n"); return 0;}
T : O N X N c
E : T R
  | a T U R c
U : n O b c
R : w
O : OP
N : NUMBER
X : p
  | t

%%
int main()
{
 while(1)
 {
 printf("Enter:");
 yyparse();

 }
}
int yyerror(char *s)
{
 fprintf(stderr,"%s\n",s);
 exit(0);
}