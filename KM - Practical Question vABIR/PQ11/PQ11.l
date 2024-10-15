/*
Title: Lexical Analyzer for Simple Expressions

Description:
This Lex file tokenizes numeric and alphabetic inputs, returning appropriate tokens for the parser to process.
*/

%{
#include <stdio.h>
#include <stdlib.h>
#include "parser.tab.h"
extern int yylval;
int mywrap();
%}

%option noyywrap

%%

[0-9]+ { yylval = atoi(yytext); return NUMBER; }

[a-zA-Z]+ { yylval = atoi(yytext); return ALPHA; }

[\t] ;

[\n] return 0;

. return yytext[0];

%%

int mywrap()
{
    return 1;
}
