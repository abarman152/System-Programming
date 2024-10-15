/*
Title: Parser for Simple Expressions

Description:
This Bison file defines a parser for simple arithmetic expressions, checking their validity and evaluating them.
*/

%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *s);
int yylex();
%}

%token NUMBER ALPHA

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

Expression: E { printf("Expression is Valid\n"); return 0; }

E: E '+' E   { $$ = $1 + $3; }
 | E '-' E   { $$ = $1 - $3; }
 | E '*' E   { $$ = $1 * $3; }
 | E '/' E   { $$ = $1 / $3; }
 | E '%' E   { $$ = $1 % $3; }
 | '(' E ')' { $$ = $2; }
 | NUMBER    { $$ = $1; }
 | ALPHA     { $$ = $1; }
 ;

%%

int main()
{
    printf("Enter an expression:\n");
    return yyparse();
}

void yyerror(const char *s)
{
    fprintf(stderr, "Error: %s\n", s);
}
