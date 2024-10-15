%{
#include <stdio.h>
#include <string.h>
int count = 0;
char word [100] = "Arnab";
%}

WORD [a-zA-Z]+

%%

{WORD} {if(strcmp(yytext, word) == 0){count++;}}

. {}

"\n" {printf("Frequency of the given word is : %d\n", count); count = 0;}

%%

int main()
{

	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}