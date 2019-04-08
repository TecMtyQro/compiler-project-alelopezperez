all:
	bison -dv dlang.y
	flex dlang.l
	gcc dlang.tab.c lex.yy.c main.c -ll -ly
