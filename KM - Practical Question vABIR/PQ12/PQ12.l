/*
Title: Word Frequency Counter using Lex

Description:
This lex program counts the frequency of a specific word ("Arnab") in the given input.
The program reads the input line by line and prints the frequency of the word "Arnab"
each time a newline character is encountered.
*/

%{
#include <stdio.h>
#include <string.h>
int count = 0;
char word[100] = "Arnab";
%}

%option noyywrap

WORD [a-zA-Z]+

%%

{WORD} {if(strcmp(yytext, word) == 0) {count++;}}

. {}

"\n" {printf("Frequency of the given word is : %d\n", count); count = 0;}

%%

int main()
{
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    return 0;
}
