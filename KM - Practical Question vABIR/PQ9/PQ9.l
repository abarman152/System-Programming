/* 
Title: Lexical Analyzer for Counting Words of Specific Length
Description: This Lex program counts the number of words in the input text that have a length 
             greater than 4 but less than 8 characters. The count is printed whenever a newline 
             character is encountered, and the count is reset to zero after printing.
 */

%{
#include <stdio.h>
int count = 0;
%}

%option noyywrap

WORD [a-zA-Z]+

%%

{WORD} {if(yyleng < 8 && yyleng > 4){count++;}}

. { /* Ignore other characters */ }

"\n" {printf("Number of words with length less than 8 and greater than 4 is : %d\n", count); count = 0;}

%%

int main()
{
    printf("Enter:\n");
    yylex();
    return 0;
}
