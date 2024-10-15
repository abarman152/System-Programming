%{
# include <stdio.h>
%}

%option noyywrap

%%

\+?[0-9]+ {printf("%s is a number\n", yytext);}

-[0-9]+ {printf("%s is a number\n", yytext);}

\+?[0-9]+\.[0-9]+ {printf("%s is a number\n", yytext);}

-[0-9]+\.[0-9]+ {printf("%s is a number\n", yytext);}

. {printf("%s is not a number\n", yytext);}

%%

int main()
{
	yylex();
	return 1;
}