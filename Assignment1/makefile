calc:
	bison -d calc.y
	flex calc.l
	gcc -o calc calc.tab.c lex.yy.c -ll

