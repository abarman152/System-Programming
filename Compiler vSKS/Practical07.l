%{
#include <stdio.h>
%}

%option noyywrap

ODD [13579]

%%

[0-9]*{ODD} {printf("%s is an odd number\n", yytext);}

[0-9]+ {printf("%s is an even number\n", yytext);}

[ \t] {}

. {printf("%s is not a number at all\n", yytext);}

%%

int main()
{
	yylex();
	return 0;
}