%{
#include <stdio.h>
#include <stdlib.h>
int integer = 0;
int fraction = 0;
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+ {printf("%s is a positive integer\n", yytext); integer++;}

-{DIGIT}+ {printf("%s is a negetive integer\n", yytext); integer++;}

\+?{DIGIT}+\.{DIGIT}+ {printf("%s is a positive fraction\n", yytext); fraction++;}

-{DIGIT}+\.{DIGIT}+ {printf("%s is a negetive fraction\n", yytext); fraction++;}

. {}

"\n" {printf("Integers = %d, Fractions = %d\n", integer, fraction); integer = 0; fraction = 0;}

%%

int main()
{
	yylex();
	return 0;
}