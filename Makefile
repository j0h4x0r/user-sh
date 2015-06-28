user-sh : bison.tab.o execute.o lex.yy.o
	cc -o user-sh lex.yy.o bison.tab.o execute.o
lex.yy.o : lex.yy.c
	cc -c lex.yy.c
bison.tab.o : bison.tab.c global.h
	cc -c bison.tab.c
execute.o : execute.c global.h
	cc -c execute.c
bison.tab.c : bison.y
	bison -d bison.y
lex.yy.c : lex.l
	lex lex.l
clean :
	rm -f lex.yy.o bison.tab.o execute.o
