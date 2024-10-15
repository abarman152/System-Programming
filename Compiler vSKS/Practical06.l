%{
#include <stdio.h>
%}

%option noyywrap

ALPHA [a-zA-Z]
NUMBER [0-9]
WHITESPACE [ \t]

%%

{ALPHA} {printf("%s is not a special character\n", yytext);}

{NUMBER} {printf("%s is not a special character\n", yytext);}

{WHITESPACE} {printf("%s is not a special character\n", yytext);}

. {printf("%s is a special character\n", yytext);}

%%

int main()
{
	yylex();
	return 0;
}