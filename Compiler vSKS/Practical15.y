%{
#include<stdio.h>
void yyerror();
int yylex();
%}

%token NUMBER ALPHA

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'


%%

Expression: E {printf("Expression is Valid\n"); return 0;}

E:E'+'E

|E'-'E

|E'*'E

|E'/'E

|E'%'E

|'('E')'

| NUMBER

| ALPHA

;

%%


int main()
{
	yyparse();
}

void yyerror()
{
	printf("The Expression is Invalid\n");
}
