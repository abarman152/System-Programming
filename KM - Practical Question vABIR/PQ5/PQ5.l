%{
/* 
 Title: Lexical Analyzer for Counting Vowels and Consonants
 Description: This code uses Lex to create a lexical analyzer that counts 
              and prints the number of vowels and consonants in the input text.
              When a newline character is encountered, it displays these counts 
              and resets the counters.
 */

#include <stdio.h>
int vowels = 0;
int consonants = 0;
%}

%option noyywrap

%%

[aeiouAEIOU] {printf("%s is a vowel\n", yytext); vowels++;}

[a-zA-Z] {printf("%s is a consonant\n", yytext); consonants++;}

. {}

"\n" {printf("Vowels = %d, Consonants = %d\n", vowels, consonants); vowels = 0; consonants = 0;}

%%

int main()
{
    printf("Ener: ");
    yylex();
    return 1;
}
