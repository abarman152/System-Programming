/* 
Title: Yacc (Bison) Parser for Simple Arithmetic Expressions
Description: This Yacc file defines a parser for arithmetic expressions involving addition, subtraction, multiplication, division, and modulus operations. 
             It supports parentheses for grouping and prints the result of the expression. The `yyerror` function handles syntax errors.
*/

%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token NUMBER

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

Expression: E {printf("Result: %d\n", $$);}

E: E '+' E {$$ = $1 + $3;}
 | E '-' E {$$ = $1 - $3;}
 | E '*' E {$$ = $1 * $3;}
 | E '/' E {$$ = $1 / $3;}
 | E '%' E {$$ = $1 % $3;}
 | '(' E ')' {$$ = $2;}
 | NUMBER {$$ = $1;}
;

%%

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
