/* 
Title: Lexical Analyzer for Identifying Odd and Even Numbers
Description: This code uses Lex to create a lexical analyzer that identifies
             whether a given input number is odd or even. It also handles
             whitespace and other non-number characters, indicating them as 
             not numbers.
 */

%{
#include <stdio.h>
%}

%option noyywrap

ODD [13579]

%%

[0-9]*{ODD} {printf("%s is an odd number\n", yytext);}

[0-9]+ {printf("%s is an even number\n", yytext);}

[ \t] {}

. {printf("%s is not a number at all\n", yytext);}

%%

int main()
{
    printf("Enter:\n");
    yylex();
    return 0;
}
