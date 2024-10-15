%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+ {printf("%s is a positive integer\n", yytext);}

-{DIGIT}+ {printf("%s is a negetive integer\n", yytext);}

\+?{DIGIT}+\.{DIGIT}+ {printf("%s is a positive fraction\n", yytext);}

-{DIGIT}+\.{DIGIT}+ {printf("%s is a negetive fraction\n", yytext);}

. {}

%%

int main()
{
	yylex();
	return 0;
}