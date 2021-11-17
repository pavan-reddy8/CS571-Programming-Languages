%{
#include <stdio.h>

int val=0;
%}

digit	[0-9]
abc  "abc"
%%

{digit}+ {
		if(atoi(yytext)>20){
			printf("num = %d",atoi(yytext));
		}
		}
{abc}+ {
	++val;
	
}
. { }

%%
main(void){
	yylex();
	printf("the number of abcs are %d",val);
	
}

