/* 
Title: Lexical Analyzer for Counting Spaces
Description: This Lex program counts the number of spaces in each line of the input text. 
             When a newline character is encountered, the count of spaces is printed, 
             and the count is reset to zero for the next line.
 */

%{
#include <stdio.h>
int space = 0;
%}

%option noyywrap

SPACE [ ]

%%

{SPACE} {space++;}

. { /* Ignore other characters */ }

"\n" {printf("Number of spaces : %d\n", space); space = 0;}

%%

int main()
{
    printf("Enter text:\n");
    yylex();
    return 0;
}
