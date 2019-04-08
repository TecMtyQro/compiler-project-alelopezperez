%{
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#define YYERROR_VERBOSE

int yylex();
int yyerror(char const *s);
%}

%token T_abstract
%token T_alias
%token T_align
%token T_asm
%token T_assert
%token T_auto
%token T_body
%token T_bool
%token T_break
%token T_byte
%token T_case
%token T_cast
%token T_catch
%token T_cdouble
%token T_cent
%token T_cfloat  
%token T_char
%token T_class
%token T_const
%token T_continue
%token T_creal
%token T_dchar
%token T_debug
%token T_default
%token T_delegate
%token T_deprecated
%token T_do
%token T_double
%token T_else
%token T_enum
%token T_export
%token T_extern
%token T_false
%token T_final
%token T_finally
%token T_float
%token T_for
%token T_foreach
%token T_foreach_reverse
%token T_function
%token T_goto
%token T_idouble
%token T_if
%token T_ifloat
%token T_immutable
%token T_import
%token T_in
%token T_inout
%token T_int
%token T_interface
%token T_invariant
%token T_ireal
%token T_is
%token T_lazy
%token T_long
%token T_mixin
%token T_module
%token T_new
%token T_nothrow
%token T_null
%token T_out
%token T_override
%token T_package
%token T_pragma
%token T_private
%token T_protected
%token T_public
%token T_pure
%token T_real
%token T_ref
%token T_return
%token T_scope
%token T_shared
%token T_short
%token T_static
%token T_struc
%token T_super
%token T_switch
%token T_synchronized
%token T_template
%token T_this
%token T_throw
%token T_true
%token T_try
%token T_typeid
%token T_typeof
%token T_ubyte
%token T_ucent
%token T_uint
%token T_ulong
%token T_union
%token T_unittest
%token T_ushort
%token T_version
%token T_void
%token T_wchar
%token T_while
%token T_with
%token NUM

%token T_neq 
%token T_bslash
%token T_land
%token T_andeq
%token T_and
%token T_lor
%token T_oreq
%token T_or
%token T_dec
%token T_deceq
%token T_minus
%token T_inc
%token T_inceq
%token T_plus
%token T_GEQ
%token T_GR
%token T_NOTEQ
%token T_OPAREN
%token T_CPAREN
%token T_OCOR	
%token T_CCOR
%token T_SEMICOLON
%token T_EQUAL
%token T_multiply
%token T_COMA
%token T_LE
%token T_isEqual
%token DEC
%token ID
%token T_LT
%token END_OF_FILE 0
%token T_multeq
%token T_LITCHAR
%token T_dot
%token T_COLON
%token T_LSTRING


%start prog

%%
prog: 
	
	expressions_list	{printf("Expressions list\n");}
	|block	{printf("Block\n");}
	;



call_method:
	ID T_dot ID param_list_use {printf("call method\n");}
	|ID T_dot ID  {printf("call attribute\n");}
	;


func_declaration:
	type ID param_list_type block {printf("FUnction DEclaration\n ");}
	; 

func_use:
	ID param_list_use
	;

param_list_use:
	T_OPAREN id_list T_CPAREN 
	|T_OPAREN  T_CPAREN
	;

param_list_type:
	T_OPAREN declaration_expression_list T_CPAREN
	|T_OPAREN  T_CPAREN	
	;

declaration_expression_list:
	declaration_expression T_COMA declaration_expression_list
	|declaration_expression	
	;

id_list:
	ID T_COMA id_list   {printf("ID LIST");}
	|ID  {printf("ID");}
	;
	


block:
	T_OCOR expressions_list T_CCOR   {printf("Block: ");}
	;

expressions_list: 	
	expression
	|expression expressions_list

	;
return_somehting:
	
	T_return 	  {printf("Return Empty: ");}
	|T_return assign_expression   {printf("Return Assigment: ");}
	|T_return literals   {printf("Return Literals: ");}
	
	;
expression:
	assign_expression T_SEMICOLON {printf("Assign Expression\n");}
	|ID T_SEMICOLON {printf("ID Declaration\n");}
	|while_expression {printf("While Delclaration\n");}
	|if_expression {printf("If Delclaration\n");}
	|func_declaration {printf("Function Delclaration\n");}
	|func_use T_SEMICOLON {printf("FUnction Usage Delclaration\n");}
	|for_expression {printf("For Delclaration\n");}
	|class_declaration {printf("Clase Delclaration\n");}
	|return_somehting T_SEMICOLON {printf("Return Delclaration\n");}
	|call_method T_SEMICOLON {printf("Call to method/attribute  \n");}
	;

assign_expression:
	type_assign_expression	 {printf("Type Assginment\n");}
	|declaration_expression {printf("Normal Declaration\n");}
	|existing_assign_expression {printf("Normal Declaration\n");}
	|inc_dec_declaration {printf("Increment/Decrementa Declaration\n");}
	;

if_expression:
	init_if  {printf("IF-Only Declaration\n");}
    | init_if else_expression  {printf("IF-Else Declaration\n");}
	;

init_if:
	T_if T_OPAREN condition T_CPAREN block   {printf("IF Condition Declaration\n");}
	|T_if T_OPAREN ID T_CPAREN block  {printf("IF ID-Condition Declaration\n");}
	;

else_expression:
	T_else T_if T_OPAREN condition T_CPAREN block else_expression  {printf("ELSE-IF Condition Declaration\n");}
	|T_else T_if T_OPAREN ID T_CPAREN block else_expression  {printf("ELSE-IF ID Condition Declaration\n");}
        | T_else block  {printf("ELSE Declaration\n");}
	;

while_expression:
	T_while T_OPAREN condition T_CPAREN block  {printf("While Block: \n");}
	|T_while T_OPAREN condition T_CPAREN {printf("While: \n");}
	;
for_expression:
	
	T_for T_OPAREN type_assign_expression T_SEMICOLON condition T_SEMICOLON  existing_assign_expression T_CPAREN block
	|T_for T_OPAREN existing_assign_expression T_SEMICOLON condition T_SEMICOLON  existing_assign_expression T_CPAREN block

	|T_for T_OPAREN type_assign_expression T_SEMICOLON condition T_SEMICOLON  inc_dec_declaration T_CPAREN block
	|T_for T_OPAREN existing_assign_expression T_SEMICOLON condition T_SEMICOLON inc_dec_declaration T_CPAREN block

	|T_for T_OPAREN type_assign_expression T_SEMICOLON condition T_SEMICOLON  existing_assign_expression T_CPAREN 
	|T_for T_OPAREN existing_assign_expression T_SEMICOLON condition T_SEMICOLON  existing_assign_expression T_CPAREN 

	|T_for T_OPAREN type_assign_expression T_SEMICOLON condition T_SEMICOLON  inc_dec_declaration T_CPAREN 
	|T_for T_OPAREN existing_assign_expression T_SEMICOLON condition T_SEMICOLON inc_dec_declaration T_CPAREN
	
	;
condition:
	operation_expression T_GR operation_expression {printf("Greater than condition ");}
	|operation_expression T_LT operation_expression {printf("Less than condition ");}
	|operation_expression T_isEqual operation_expression {printf("Equal condition ");}
	|operation_expression T_land operation_expression {printf("AND condition ");}
	|operation_expression T_lor operation_expression {printf("OR Operation ");}
	;

type_assign_expression:
	type ID Equal_type operation_expression
	;

operation_expression:
	literals T_plus operation_expression  {printf("Plus Operation \n");}
	|literals T_minus operation_expression {printf("Minus Operation \n");}
	|literals T_multiply operation_expression {printf("Multiply Operation \n");}
	|literals T_bslash operation_expression {printf("Division Operation \n");}
	|literals	
	;

literals:
	NUM {printf("Literal Number ");}
	|DEC {printf("Literal Decimal ");}
	|ID {printf("Literal ID ");}
	|T_minus NUM {printf("Literal Negative Number ");}
	|T_minus DEC {printf("Literal Negative Decimal ");}
	|T_minus ID {printf("Literal Negative ID ");}
	|T_LITCHAR {printf("Literal Char ");}
	|T_LSTRING {printf("Literal String ");}
	|T_null {printf("Null ");}
	;

declaration_expression:
	type ID
	|condition
	;


existing_assign_expression:
	ID Equal_type operation_expression
	;
type:
	T_int {printf("Type Int ");}
	|T_double {printf("Type Double ");}
	|T_float {printf("Type Float ");}
	|T_bool {printf("Type Bool ");}
	|T_void {printf("Type Void ");}
	;

Equal_type:
	T_inceq {printf(" += ");}
	|T_deceq {printf(" -= ");}
	|T_neq {printf(" /= ");}
	|T_multeq {printf(" *= ");}
	|T_EQUAL {printf(" = ");}
	;
inc_dec_declaration:
	ID inc_dec  {printf("ID INC/DEC ");}
	|inc_dec ID {printf("INC/DEC ID ");}
	;
inc_dec:
	T_inc {printf("Increment ");}
	|T_dec {printf("Decrement ");}
	;
class_declaration:
	T_class ID T_OCOR   attributes_func T_CCOR
	;

access_mode:
	T_public {printf("Publc ");}
	|T_private {printf("Private ");}
	|T_protected {printf("Protected ");}
	;
attributes_func:
	func_declaration 
	|assign_expression T_SEMICOLON 
	|func_declaration attributes_func
	|assign_expression T_SEMICOLON attributes_func
	|access_mode T_COLON attributes_func
	;

%%
int yyerror(char const *s) {
	printf("\n\n%s\n",s);

}    




