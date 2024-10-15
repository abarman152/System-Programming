%{
#include <stdio.h>
int pos = 0, neg = 0;
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+\.{DIGIT}+ {printf("%s is a positive fraction\n", yytext); pos++;}

-{DIGIT}+\.{DIGIT}+ {printf("%s is a negetive fraction\n", yytext); neg++;}

[ \t] {}

. {printf("%s is neither a positive fraction nor a negetive fraction\n", yytext); }

"\n" {printf("No of Positive Fractions: %d, No of Negetive Fractions: %d\n", pos, neg); pos = 0; neg = 0;}


%%

int main()
{
	yylex();
	return 0;
}