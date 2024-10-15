%{
/* 
 Title: Lexical Analyzer for Identifying Positive and Negative Integers
 Description: This code uses Lex to create a lexical analyzer that identifies
               positive and negative integers in the input. It also counts and
               prints the total number of positive and negative integers encountered.
 */

#include <stdio.h>
int pos = 0, neg = 0;
%}

%option noyywrap

DIGIT [0-9]

%%

\+?{DIGIT}+ {
    printf("%s is a positive integer\n", yytext); 
    pos++;
}

-{DIGIT}+ {
    printf("%s is a negative integer\n", yytext); 
    neg++;
}

[ \t] {}

. {
    printf("%s is neither a positive integer nor a negative integer\n", yytext);
}

\n {
    printf("Number of Positive Integers: %d, Number of Negative Integers: %d\n", pos, neg);
    pos = 0; 
    neg = 0;
}

%%

int main()
{
    printf("Enter Numbers: ");
    yylex();
    return 0;
}
