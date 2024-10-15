%{
#include <stdio.h>
int pos = 0, neg = 0;
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+ {printf("%s is a positive integer\n", yytext); pos++;}

-{DIGIT}+ {printf("%s is a negetive integer\n", yytext); neg++;}

[ \t] {}

. {printf("%s is neither a positive integer nor a negetive integer\n", yytext); }

"\n" {printf("No of Positive Integers: %d, No of Negetive Integers: %d\n", pos, neg); pos = 0; neg = 0;}

%%

int main()
{
	yylex();
	return 0;
}