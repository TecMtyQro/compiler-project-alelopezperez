alpha [_,a-zA-Z]
digit [0-9]
%option yylineno
%x C_COMMENT
%{
	#include "dlang.tab.h"
	#include <stdio.h>
	#include <stdlib.h>
	#include <unistd.h>
	#include <sys/types.h>
	#include <sys/stat.h>
	#include <fcntl.h>
	int line=1;
	
%}

%%
\/\/.* ;
"/*"            { BEGIN(C_COMMENT); }
<C_COMMENT>"*/" { BEGIN(INITIAL); }
<C_COMMENT>.    { }
<C_COMMENT>\n   { }
[ \t]	;
[\n] {line++; printf("\n");}
"abstract"		{printf("<%s>",yytext); return T_abstract;}
"alias"			{printf("<%s>",yytext); return T_alias;}
"align"  		{printf("<%s>",yytext); return T_align;}
"asm"			{printf("<%s>",yytext); return T_asm;}
"assert"		{printf("<%s>",yytext); return T_assert;}
"auto"			{printf("<%s>",yytext); return T_auto;}
"body"			{printf("<%s>",yytext); return T_body;}
"bool"			{printf("<%s>",yytext); return T_bool;}
"break"			{printf("<%s>",yytext); return T_break;}
"byte"			{printf("<%s>",yytext); return T_byte;}
"case"			{printf("<%s>",yytext); return T_case;}
"cast"			{printf("<%s>",yytext); return T_cast;}
"catch"			{printf("<%s>",yytext); return T_catch;}
"cdouble"		{printf("<%s>",yytext); return T_cdouble;}
"cent"			{printf("<%s>",yytext); return T_cent;}           
"cfloat"    		{printf("<%s>",yytext); return T_cfloat;}
"char"      		{printf("<%s>",yytext); return T_char;}
"class"     		{printf("<%s>",yytext); return T_class;}
"const"     		{printf("<%s>",yytext); return T_const;}
"continue"  		{printf("<%s>",yytext); return T_continue;}
"creal"     		{printf("<%s>",yytext); return T_creal;}
"dchar"     		{printf("<%s>",yytext); return T_dchar;}
"debug"     		{printf("<%s>",yytext); return T_debug;}
"default"   		{printf("<%s>",yytext); return T_default;}
"delegate"  		{printf("<%s>",yytext); return T_delegate;}
"deprecated"   		{printf("<%s>",yytext); return T_deprecated;}
"do"           		{printf("<%s>",yytext); return T_do;}
"double"       		{printf("<%s>",yytext); return T_double;}
"else"         		{printf("<%s>",yytext); return T_eles;}
"enum"         		{printf("<%s>",yytext); return T_enum;}
"export"       		{printf("<%s>",yytext); return T_export;}
"extern"       		{printf("<%s>",yytext); return T_extern;}
"false"        		{printf("<%s>",yytext); return T_false;}
"finally"      		{printf("<%s>",yytext); return T_finally;}
"final"        		{printf("<%s>",yytext); return T_final;}
"float"        		{printf("<%s>",yytext); return T_float;}
"foreach_reverse" 	{printf("<%s>",yytext); return T_foreach_reverse;}
"foreach"      		{printf("<%s>",yytext); return T_foreach;}
"for"          		{printf("<%s>",yytext); return T_for;}
"function"        	{printf("<%s>",yytext); return T_function;}
"goto"            	{printf("<%s>",yytext); return T_goto;}
"idouble"           {printf("<%s>",yytext);return T_idouble;}
"ifloat"            {printf("<%s>",yytext);return T_ifloat;}
"if"            	{printf("<%s>",yytext);return T_if;}
"immutable"         {printf("<%s>",yytext);return T_immutable;}
"import"            {printf("<%s>",yytext);return T_import;}
"inout"            	{printf("<%s>",yytext);return T_inout;}
"interface"         {printf("<%s>",yytext);return T_interface;}
"int"            	{printf("<%s>",yytext);return T_int;}
"invariant"         {printf("<%s>",yytext);return T_invariant;}
"in"            	{printf("<%s>",yytext);return T_in;}
"ireal"            	{printf("<%s>",yytext);return T_ireal;}
"is"            	{printf("<%s>",yytext);return T_is;}
"lazy"            	{printf("<%s>",yytext);return T_lazy;}
"long"            	{printf("<%s>",yytext);return T_long;}
"mixin"            	{printf("<%s>",yytext);return T_mixin;}
"module"            {printf("<%s>",yytext);return T_module;}
"new"           	{printf("<%s>",yytext);return T_new;}
"nothrow"           {printf("<%s>",yytext);return T_nothrow;}
"null"            	{printf("<%s>",yytext);return T_null;}
"out"            	{printf("<%s>",yytext);return T_out;}
"override"          {printf("<%s>",yytext);return T_override;}
"package"           {printf("<%s>",yytext);return T_package;}
"pragma"            {printf("<%s>",yytext);return T_pragma;}
"private"           {printf("<%s>",yytext);return T_private;}
"protected"         {printf("<%s>",yytext);return T_protected;}
"public"            {printf("<%s>",yytext);return T_public;}
"pure"            	{printf("<%s>",yytext);return T_pure;}
"real"            	{printf("<%s>",yytext);return T_real;}
"ref"            	{printf("<%s>",yytext);return T_ref;}
"return"            {printf("<%s>",yytext);return T_return;}
"scope"            	{printf("<%s>",yytext);return T_scope;}
"shared"           	{printf("<%s>",yytext);return T_shared;}
"short"            	{printf("<%s>",yytext);return T_short;}
"static"            {printf("<%s>",yytext);return T_static;}
"struct"            {printf("<%s>",yytext);return T_struc;}
"super"            	{printf("<%s>",yytext);return T_super;}
"switch"            {printf("<%s>",yytext);return T_switch;}
"synchronized"     	{printf("<%s>",yytext);return T_synchronized;}
"template"          {printf("<%s>",yytext);return T_template;}
"this"            	{printf("<%s>",yytext);return T_this;}
"throw"            	{printf("<%s>",yytext);return T_throw;}
"true"            	{printf("<%s>",yytext);return T_true;}
"try"            	{printf("<%s>",yytext);return T_try;}
"typeid"            {printf("<%s>",yytext);return T_typeid;}
"typeof"           	{printf("<%s>",yytext);return T_typeof;}
"ubyte"            	{printf("<%s>",yytext);return T_ubyte;}
"ucent"            	{printf("<%s>",yytext);return T_ucent;}
"uint"            	{printf("<%s>",yytext);return T_uint;}
"ulong"           	{printf("<%s>",yytext);return T_ulong;}
"union"            	{printf("<%s>",yytext);return T_union;}
"unittest"          {printf("<%s>",yytext);return T_unittest;}
"ushort"            {printf("<%s>",yytext);return T_ushort;}
"version"           {printf("<%s>",yytext);return T_version;}
"void"            	{printf("<%s>",yytext);return T_void;}
"wchar"            	{printf("<%s>",yytext);return T_wchar;}
"while"            	{printf("<%s>",yytext);return T_while;}
"with"            	{printf("<%s>",yytext);return T_with;}

\'{alpha}\' {printf("<char literal, %s>",yytext);}
\"([ \t]|{alpha})([ \t]|{alpha}|{digit})*\" {printf("<string literal, %s>",yytext);}
\"(.)*\" {printf("<string literal, %s>",yytext);}
"..."		{printf("<%s>",yytext);}
".."		{printf("<%s>",yytext);}
"."			{printf("<%s>",yytext);}                                                     
"\/="       {printf("<%s>",yytext);return T_neq;}
"\/"        {printf("<%s>",yytext);return T_bslash;}
"&&"        {printf("<%s>",yytext);return T_land;}
"&="        {printf("<%s>",yytext);return T_andeq;}
"&"        	{printf("<%s>",yytext);return T_and;}
"||"        {printf("<%s>",yytext);return T_lor;}
"|="        {printf("<%s>",yytext);return T_oreq;}
"|"        	{printf("<%s>",yytext);return T_or;}
"--"        {printf("<%s>",yytext);return T_dec;}
"-="        {printf("<%s>",yytext);return T_deceq;}
"-"        	{printf("<%s>",yytext);return T_minus;}
"++"        {printf("<%s>",yytext);return T_inc;}
"+="        {printf("<%s>",yytext);return T_inceq;}
"+"        	{printf("<%s>",yytext);return T_plus;}

"<<="        	{printf("<%s>",yytext);}
"<<"        	{printf("<%s>",yytext);}
"<="        	{printf("<%s>",yytext);}
"<"        		{printf("<%s>",yytext);}
">>>="        	{printf("<%s>",yytext);}
">>>"        	{printf("<%s>",yytext);}
">>="        	{printf("<%s>",yytext);}
">>"        	{printf("<%s>",yytext);}
">="        	{printf("<%s>",yytext);}
">"        		{printf("<%s>",yytext);}
"!="        	{printf("<%s>",yytext);}
"!"        		{printf("<%s>",yytext);}
"("        		{printf("<%s>",yytext);}
")"        		{printf("<%s>",yytext);}
"["        		{printf("<%s>",yytext);}
"]"        		{printf("<%s>",yytext);}
"{"        		{printf("<%s>",yytext);}	
"}"        		{printf("<%s>",yytext);}
"?"        		{printf("<%s>",yytext);}
","        		{printf("<%s>",yytext);}
";"        		{printf("<%s>",yytext);}
":"        		{printf("<%s>",yytext);}
"$"        		{printf("<%s>",yytext);}
"=="        	{printf("<%s>",yytext);}
"="        		{printf("<%s>",yytext);}
"*="        	{printf("<%s>",yytext);}
"*"        		{printf("<%s>",yytext);}
"%="        	{printf("<%s>",yytext);}
"%"        		{printf("<%s>",yytext);}
"^^="        	{printf("<%s>",yytext);}
"^^"        	{printf("<%s>",yytext);}
"^="        	{printf("<%s>",yytext);}
"^"        		{printf("<%s>",yytext);}
"~="        	{printf("<%s>",yytext);}
"~"        		{printf("<%s>",yytext);}
"@"        		{printf("<%s>",yytext);}
"=>"        	{printf("<%s>",yytext);}
"#"        		{printf("<%s>",yytext);}


{digit}+\.{digit}+  {printf("<float, %s>",yytext);return NUM;}
{digit}+       		{printf("<integer, %s>",yytext);return NUM;}
{alpha}({alpha}|{digit})*	{printf("<id, %s>",yytext);}

.			{printf(" ERROR on Line %d ",yylineno);}
%%



