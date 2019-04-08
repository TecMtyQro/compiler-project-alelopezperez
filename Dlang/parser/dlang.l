alpha [_a-zA-Z]
digit [0-9]
%option yylineno
%option noyywrap
%x C_COMMENT
%{
	#include "dlang.tab.h"


	
%}

%%
\/\/.* ;
"/*"            { BEGIN(C_COMMENT); }
<C_COMMENT>"*/" { BEGIN(INITIAL); }
<C_COMMENT>.    { }
<C_COMMENT>\n   { }
[ \t]	;
[\n] ;
"abstract"		{ return T_abstract;}
"alias"			{ return T_alias;}
"align"  		{ return T_align;}
"asm"			{ return T_asm;}
"assert"		{ return T_assert;}
"auto"			{ return T_auto;}
"body"			{ return T_body;}
"bool"			{ return T_bool;}
"break"			{ return T_break;}
"byte"			{ return T_byte;}
"case"			{ return T_case;}
"cast"			{ return T_cast;}
"catch"			{ return T_catch;}
"cdouble"		{ return T_cdouble;}
"cent"			{ return T_cent;}           
"cfloat"    		{ return T_cfloat;}
"char"      		{ return T_char;}
"class"     		{ return T_class;}
"const"     		{ return T_const;}
"continue"  		{ return T_continue;}
"creal"     		{ return T_creal;}
"dchar"     		{ return T_dchar;}
"debug"     		{ return T_debug;}
"default"   		{ return T_default;}
"delegate"  		{ return T_delegate;}
"deprecated"   		{ return T_deprecated;}
"do"           		{ return T_do;}
"double"       		{ return T_double;}
"else"         		{ return T_else;}
"enum"         		{ return T_enum;}
"export"       		{ return T_export;}
"extern"       		{ return T_extern;}
"false"        		{ return T_false;}
"finally"      		{ return T_finally;}
"final"        		{ return T_final;}
"float"        		{ return T_float;}
"foreach_reverse" 	{ return T_foreach_reverse;}
"foreach"      		{ return T_foreach;}
"for"          		{ return T_for;}
"function"        	{ return T_function;}
"goto"            	{ return T_goto;}
"idouble"           {return T_idouble;}
"ifloat"            {return T_ifloat;}
"if"            	{return T_if;}
"immutable"         {return T_immutable;}
"import"            {return T_import;}
"inout"            	{return T_inout;}
"interface"         {return T_interface;}
"int"            	{return T_int;}
"invariant"         {return T_invariant;}
"in"            	{return T_in;}
"ireal"            	{return T_ireal;}
"is"            	{return T_is;}
"lazy"            	{return T_lazy;}
"long"            	{return T_long;}
"mixin"            	{return T_mixin;}
"module"            {return T_module;}
"new"           	{return T_new;}
"nothrow"           {return T_nothrow;}
"null"            	{return T_null;}
"out"            	{return T_out;}
"override"          {return T_override;}
"package"           {return T_package;}
"pragma"            {return T_pragma;}
"private"           {return T_private;}
"protected"         {return T_protected;}
"public"            {return T_public;}
"pure"            	{return T_pure;}
"real"            	{return T_real;}
"ref"            	{return T_ref;}
"return"            {return T_return;}
"scope"            	{return T_scope;}
"shared"           	{return T_shared;}
"short"            	{return T_short;}
"static"            {return T_static;}
"struct"            {return T_struc;}
"super"            	{return T_super;}
"switch"            {return T_switch;}
"synchronized"     	{return T_synchronized;}
"template"          {return T_template;}
"this"            	{return T_this;}
"throw"            	{return T_throw;}
"true"            	{return T_true;}
"try"            	{return T_try;}
"typeid"            {return T_typeid;}
"typeof"           	{return T_typeof;}
"ubyte"            	{return T_ubyte;}
"ucent"            	{return T_ucent;}
"uint"            	{return T_uint;}
"ulong"           	{return T_ulong;}
"union"            	{return T_union;}
"unittest"          {return T_unittest;}
"ushort"            {return T_ushort;}
"version"           {return T_version;}
"void"            	{return T_void;}
"wchar"            	{return T_wchar;}
"while"            	{return T_while;}
"with"            	{return T_with;}

\'{alpha}\' {printf("<char literal, %s>\n",yytext); return T_LITCHAR;}
\'{digit}?\' {printf("<char literal, %s>\n",yytext); return T_LITCHAR;}
\"([ \t]|{alpha})([ \t]|{alpha}|{digit})*\" {printf("<string literal, %s>",yytext); return T_LSTRING;}
\"(.)*\" {printf("<string literal, %s>\n",yytext); return T_LSTRING;}

"..."		{}
".."		{}
"."			{ return T_dot;}                                                     
"\/="       {return T_neq;}
"\/"        {return T_bslash;}
"&&"        {return T_land;}
"&="        {return T_andeq;}
"&"        	{return T_and;}
"||"        {return T_lor;}
"|="        {return T_oreq;}
"|"        	{return T_or;}
"--"        {return T_dec;}
"-="        {return T_deceq;}
"-"        	{return T_minus;}
"++"        {return T_inc;}
"+="        {return T_inceq;}
"+"        	{return T_plus;}

"<<="        	{}
"<<"        	{}
"<="        	{ return T_LE;}
"<"        		{ return T_LT;}
">>>="        	{}
">>>"        	{}
">>="        	{}
">>"        	{}

">="        	{ return T_GEQ;}
">"        	{ return T_GR;}
"!="        	{ return T_NOTEQ;}
"!"        		{}
"("        		{ return T_OPAREN;}
")"        		{ return T_CPAREN;}
"["        		{}
"]"        		{}
"{"        		{ return T_OCOR;}	
"}"        		{ return T_CCOR;}

"?"        		{}
","        		{return T_COMA;}
";"        		{return T_SEMICOLON;}
":"        		{ return T_COLON;}

"$"        		{}
"=="        	{ return T_isEqual;}
"="        		{ return T_EQUAL;}
"*="        	{ return T_multeq;}
"*"        		{return T_multiply;}
"%="        	{}
"%"        		{}

"^^="        	{}
"^^"        	{}
"^="        	{}
"^"        		{}
"~="        	{}
"~"        		{}
"@"        		{}
"=>"        	{}
"#"        		{}


{digit}+\.{digit}+  {printf("<float, %s>\n",yytext);return DEC;}
{digit}+       		{printf("<integer, %s>\n",yytext);return NUM;}
{alpha}({alpha}|{digit})*	{return ID;}
.			{printf(" LEXICAL ERROR on Line %d \n",yylineno); return 1;}
%%
#include <stdio.h>


