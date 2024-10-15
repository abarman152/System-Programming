%{
/* 
 Title: Lexical Analyzer for Identifying Positive and Negative Fractions
 Description: This code uses Lex to create a lexical analyzer that identifies
              positive and negative fractions in the input. It also counts and
              prints the total number of positive and negative fractions encountered.
 */

#include <stdio.h>
int pos = 0, neg = 0;
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+\.+{DIGIT}+ {printf("%s is a positive fraction\n", yytext); pos++;}

-{DIGIT}+\.+{DIGIT}+ {printf("%s is a negative fraction\n", yytext); neg++;}

[ \t] {}

. {printf("%s is neither a positive fraction nor a negative fraction\n", yytext); }

"\n" {printf("No of Positive Fractions: %d, No of Negative Fractions: %d\n", pos, neg); pos = 0; neg = 0;}

%%

int main()
{
    printf("Ener Fractions: ");
    yylex();
    return 0;
}
