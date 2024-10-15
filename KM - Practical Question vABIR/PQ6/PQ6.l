/* 
Title: Lexical Analyzer for Identifying Special Characters
Description: This code uses Lex to create a lexical analyzer that identifies
             and prints whether each character in the input text is a special
             character or not. It distinguishes between alphabets, numbers, 
             whitespace, and special characters.
 */

%{
#include <stdio.h>
%}

%option noyywrap

ALPHA [a-zA-Z]
NUMBER [0-9]
WHITESPACE [ \t]

%%

{ALPHA} {printf("%s is not a special character\n", yytext);}

{NUMBER} {printf("%s is not a special character\n", yytext);}

{WHITESPACE} {printf("%s is not a special character\n", yytext);}

. {printf("%s is a special character\n", yytext);}

%%

int main()
{
    printf("Enter:");
    yylex();
    return 0;
}
