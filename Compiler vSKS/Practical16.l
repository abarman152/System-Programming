%{
# include <stdio.h>
%}

%option noyywrap

ID [_a-zA-Z][_a-zA-Z0-9]*

%%

{ID} {printf("%s is an identifier\n", yytext);}

. {printf("%s is not an identifier\n", yytext);}

%%

int main()
{
	yylex();
	return 1;
}