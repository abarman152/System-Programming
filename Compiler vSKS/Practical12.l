%{
# include <stdio.h>
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
	yylex();
	return 1;
}