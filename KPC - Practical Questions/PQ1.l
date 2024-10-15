%{
#include <stdio.h>
#include <string.h>

void process_instruction(char* instruction);
void process_label(char* label);

%}

/*
Title: Assembler for Hypothetical Assembly Language

Description:
This Lex program is a simple assembler for a hypothetical assembly language.
It recognizes labels, instructions, and operands in the assembly code.
Labels are identified by a trailing colon, instructions by their names, and operands by numbers.
The program prints each recognized component as it processes the input.
*/

%option noyywrap

%%

[a-zA-Z_][a-zA-Z0-9_]*: {
    // Process labels (e.g., label1: )
    process_label(yytext);
}

MOV|ADD|SUB|MUL|DIV|JMP|CMP|NOP {
    // Process instructions (e.g., MOV, ADD, etc.)
    process_instruction(yytext);
}

[ \t]+   ; // Ignore whitespace

[0-9]+   { printf("Operand: %s\n", yytext); }

.        { printf("Unrecognized token: %s\n", yytext); }

\n       ; // Newline (ignore)

%%

void process_instruction(char* instruction) {
    printf("Instruction: %s\n", instruction);
}

void process_label(char* label) {
    printf("Label: %s\n", label);
}

int main() {
    printf("Enter assembly code (Ctrl+D to end):\n");
    yylex();
    return 0;
}
