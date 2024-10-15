/* 
Title: Lexical Analyzer for Counting Uppercase and Lowercase Letters
Description: This code uses Lex to create a lexical analyzer that counts 
           and prints the number of uppercase and lowercase letters 
             in the input text. When a newline character is encountered, 
              it displays these counts and resets the counters.
 */

%{
#include <stdio.h> /* Include standard input-output header */

/* Global variables to count uppercase and lowercase letters */
int caps = 0;
int smalls = 0;
%}
/* Lex option to indicate no need for yywrap function */
%option noyywrap

%%

[A-Z] {
    printf("%s is an uppercase letter \n", yytext);
    caps++;
}

[a-z] {
    printf("%s is a lowercase letter \n", yytext);
    smalls++;
}

. {}

"\n" {
    printf("Total number of uppercase letters: %d and total number of lowercase letters: %d \n", caps, smalls);
    caps = 0;
    smalls = 0;
}

%%

int main()
{
    yylex();
    return 0;
}
