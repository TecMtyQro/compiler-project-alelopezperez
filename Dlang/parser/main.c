#include <string.h>
#include <stdio.h>
#include <stdlib.h>
extern int yyparse(); 
extern int yyerror(const char *s); 
extern int yylex();
extern int yylineno;
extern int yychar;

int main(){
	int result = yyparse();
	if (!result)
		printf("\n%s\n", "The input parse Correctly");
	else
		printf("%s %d %d \n", "The input is invalid error on line: ", yylineno, yychar);
	return result;
}
