/* 
Title: Lex (Flex) Lexer for Arithmetic Expressions
Description: This Lex file defines a lexer for tokenizing arithmetic expressions. It recognizes numbers and operators, and handles whitespace and newlines. 
             The `yywrap` function indicates the end of input.
*/

%{
#include <stdio.h>
#include "pq8.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+ {yylval = atoi(yytext); return NUMBER;}

[\t\n]+ ;  // Ignore tabs and newlines

[+-/*%()] {return yytext[0];}  // Return operators and parentheses as tokens

. ;  // Ignore other characters

%%

int yywrap() {
    return 1;  // Indicates the end of input
}
