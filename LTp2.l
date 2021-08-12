%{ 
	#include<stdio.h>
	#include "y.tab.h"
	
%} 
 
%%   


[0-9]+  {printf("valid integer constant:%s\n" , yytext); return NUMBER;}
([0-9]*[.])[0-9]+ {printf("valid float constant:%s\n" , yytext); return NUMBER; }

("addition")|("Addition")|("ADDITION")|("add")|("ADD")|("Add")|("subtraction")|("Subtraction")|("SUBTRACTION")|("sub")|("Sub")|("SUB") {printf("valid operator:%s\n" , yytext); return OP; }
("multiplication")|("Multiplication")|("MULTIPLICATION")|("mul")|("MUL")|("Mul")|("DIVISION")|("division")|("Division")|("div")|("DIV")|("Div") {printf("valid operator:%s\n" , yytext); return OP ;}


("what is result ?")|("WHAT IS RESULT ?")|("What is result ?") {print("valid sentence:%s\n",yytext); return w;}

("also")|("Also")|("ALSO") {return a;}

("now do")|("Now do")|("NOW DO") {return n;}

("OF BOTH ANSWERS")|("of both answers") {return b;}

(\.) {printf("valid punctuation: %s\n" , yytext); return c; }

("with")|("WITH") {return p;}

("TO")|("to") {return t;}

(" ") {printf(""); } 

\n {return NL;}

. {printf("Error at %s\n",yytext);}

%%

int yywrap(void)
{
 return 1;
}