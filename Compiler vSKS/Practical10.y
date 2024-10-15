%{
#include<stdio.h>
void yyerror();
int yylex();
%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'


%%

Expression: E {printf("Result : %d\n", $$); return 0;}

E:E'+'E {$$=$1+$3;}

|E'-'E {$$=$1-$3;}

|E'*'E {$$=$1*$3;}

|E'/'E {$$=$1/$3;}

|E'%'E {$$=$1%$3;}

|'('E')' {$$=$2;}

| NUMBER {$$=$1;}

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
