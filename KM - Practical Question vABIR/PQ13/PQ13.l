/*
Title: Palindrome Checker using Lex

Description:
This Lex program checks if a given string is a palindrome. It processes each line of input to determine if the string is the same forwards and backwards. After processing each line, it prints whether the string is a palindrome or not. Non-alphanumeric characters are ignored in the palindrome check. The program reads input until the end-of-file (Ctrl+D) is encountered.
*/


%{
#include <stdio.h>
#include <string.h>
int flag;
int i, j;
%}

%option noyywrap

%%

[a-zA-Z0-9]* {

	for(i=0, j=(yyleng-1); i<=j; i++, j--)
	{
		if(yytext[i]==yytext[j])
		{
			flag=1;
		}
		else
		{
			flag=0;
			break;
		}
	}

  }

"\n" {

		if(flag==1)
		{
			printf("The String is Palindrome\n");
		}
		else
		{
			printf("The String is not Palindrome\n");
		}

     }

%%

int main()
{
	yylex();
	return 0;
}
