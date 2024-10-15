%{
# include <stdio.h>
int count = 0;
%}

%option noyywrap

WORD [a-zA-Z]+

%%

{WORD} {if(yyleng < 8 && yyleng > 4){count++;}}

. {}

"\n" {printf("Number of words with length less than 8 and greater than 4 is : %d\n", count); count = 0;}

%%

int main()
{
	yylex();
	return 1;
}