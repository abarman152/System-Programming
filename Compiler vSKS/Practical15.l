%{
#include<stdio.h>
#include "Practical15.tab.h"
extern int yylval;
%}

%%

[0-9]+ {yylval=atoi(yytext); return NUMBER;}

[a-zA-Z]+ {yylval=atoi(yytext); return ALPHA;}

[\t] ;

[\n] return 0;

. return yytext[0];

%%

int yywrap()
{
	return 1;
}
