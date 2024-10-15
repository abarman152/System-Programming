%{
# include <stdio.h>
int caps = 0;
int smalls = 0;
%}

%option noyywrap

%%

[A-Z] {printf("%s is a uppercase letter \n",yytext); caps++;}

[a-z] {printf("%s is a lowercase letter \n",yytext); smalls++;}

. {}

"\n"  {printf("Total number of uppercase letters: %d and total number of lowercase letters: %d \n",caps,smalls); caps=0; smalls=0;}

%%

int main()
{
	yylex();
	return 0;
}