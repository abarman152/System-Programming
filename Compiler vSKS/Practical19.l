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
