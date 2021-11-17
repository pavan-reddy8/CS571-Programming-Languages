Group Members:
1)
Name: Kanishk Barhanpurkar
B-Number: B00863529
Email Address: kbarhan1@binghamton.edu

2)
Name: Pavan Gangareddy
Binghamton ID: B00854317
Email Address: pgangar1@binghamton.edu


The ZIP file contains following files-
a) calc.l - This flex (fast lexical analyzer generator) file which is lex source program contains the token information.
b) calc.y - This bison file contains the logic to parse the generated tree based on the defined grammer.
c) Makefile - This file contains the compilation and linking code of calc.l and calc.y files.
d) README - This is a text file and it contains the details of group member, code execution details and the algorithm summary.

Steps to execute the program:
1) Untar the pl-pavan_kanishk.tar file in a folder.
2) The tar file contains below mentioned files
	a) calc.l - This flex file contains the token information.
	b) calc.y - This bison file contains the logic to parse the generated tree based on the defined grammer.
	c) Makefile - This file contains the compilation and linking code of calc.l and calc.y files.
	d) README - This is a text file and it contains the details of group member, code execution details and the algorithm summary.
3) Within the same folder, type "make" on the command prompt and press enter.
4) The above mentioned command will compile the calc.l & calc.y files and will redirect the output file and a text file which contains all test cases should be used.

Coding Instructions for executing the assingment files- 
Flex file	  :flex -l calc.l
Bison file	  :bison -dv calc.y
Linking the files :gcc -o calc calc.tab.c lex.yy.c -lfl

 
Algorithm used for the program:
1) Process of lexical analysis will be performed by the calc.l (flex) file. 
2) Process of syntactic analysis will be performed by the bison file.

3) Bison file will perform the parsing of the tokens based on the grammer mentioned in the following format:
	Stmts -> | Stmt Stmts
	Stmt -> print E;
	E -> Float | Int | E E + | E E -
	Int -> digit+
	Float -> digit+.digit+

4)The postfix expression will be evaluated on the basis of above mentioned grammar and it will terminate the execution process as soon as it finds the syntax error.c