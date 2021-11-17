%{
#include <stdio.h>
int yyerror(char *);
int yylex();
extern int yylineno;

%}

%token t_semi t_add t_sub  t_num t_print

%union{
        float float_val;
}

%type <float_val> E t_num
%left add sub
%left mul divt

%%
Stmts:	S Stmts 
	| {}//episilon transition;
; 
S:	t_print E t_semi
	{fprintf(stdout, "the value is %f\n", $2);} 
;

E: 	 E E t_add
	  {$$ = $1 + $2;}
	| E E t_sub
	  {$$ = $1 - $2;}
	| t_num
	  { $$ = $1;}
;
%%

int yyerror(char *s)
{
	printf("Parsing error: line %d \n", yylineno);
	return 0;
}

int main()
{
   yyparse();
   return 0;
}
