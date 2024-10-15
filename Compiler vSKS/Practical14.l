%{
# include <stdio.h>
int space = 0;
%}

%option noyywrap

SPACE [ ]

%%

{SPACE} {space++;}

. {}

"\n" {printf("Number of spaces : %d\n", space); space = 0;}

%%

int main()
{
	yylex();
	return 1;
}