%{
/* 
 Title: Lexical Analyzer for Identifying Numbers
 Description: This code uses Lex to create a lexical analyzer that identifies
              integers and floating-point numbers, both positive and negative.
              It prints whether each input token is a number or not.
 */

#include <stdio.h>
%}

%option noyywrap

%%

\+?[0-9]+ {printf("%s is a number\n", yytext);}

-[0-9]+ {printf("%s is a number\n", yytext);}

\+?[0-9]+\.[0-9]+ {printf("%s is a number\n", yytext);}

-[0-9]+\.[0-9]+ {printf("%s is a number\n", yytext);}

. {printf("%s is not a number\n", yytext);}

%%

int main()
{
    printf("Ener: ");
	yylex();
	return 1;
}
