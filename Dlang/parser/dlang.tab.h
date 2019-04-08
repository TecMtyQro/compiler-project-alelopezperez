#ifndef YY_parse_h_included
#define YY_parse_h_included
/*#define YY_USE_CLASS 
*/
#line 1 "/usr/share/bison++/bison.h"
/* before anything */
#ifdef c_plusplus
 #ifndef __cplusplus
  #define __cplusplus
 #endif
#endif


 #line 8 "/usr/share/bison++/bison.h"

#line 21 "/usr/share/bison++/bison.h"
 /* %{ and %header{ and %union, during decl */
#ifndef YY_parse_COMPATIBILITY
 #ifndef YY_USE_CLASS
  #define  YY_parse_COMPATIBILITY 1
 #else
  #define  YY_parse_COMPATIBILITY 0
 #endif
#endif

#if YY_parse_COMPATIBILITY != 0
/* backward compatibility */
 #ifdef YYLTYPE
  #ifndef YY_parse_LTYPE
   #define YY_parse_LTYPE YYLTYPE
/* WARNING obsolete !!! user defined YYLTYPE not reported into generated header */
/* use %define LTYPE */
  #endif
 #endif
/*#ifdef YYSTYPE*/
  #ifndef YY_parse_STYPE
   #define YY_parse_STYPE YYSTYPE
  /* WARNING obsolete !!! user defined YYSTYPE not reported into generated header */
   /* use %define STYPE */
  #endif
/*#endif*/
 #ifdef YYDEBUG
  #ifndef YY_parse_DEBUG
   #define  YY_parse_DEBUG YYDEBUG
   /* WARNING obsolete !!! user defined YYDEBUG not reported into generated header */
   /* use %define DEBUG */
  #endif
 #endif 
 /* use goto to be compatible */
 #ifndef YY_parse_USE_GOTO
  #define YY_parse_USE_GOTO 1
 #endif
#endif

/* use no goto to be clean in C++ */
#ifndef YY_parse_USE_GOTO
 #define YY_parse_USE_GOTO 0
#endif

#ifndef YY_parse_PURE

 #line 65 "/usr/share/bison++/bison.h"

#line 65 "/usr/share/bison++/bison.h"
/* YY_parse_PURE */
#endif


 #line 68 "/usr/share/bison++/bison.h"
#ifndef YY_USE_CLASS
# ifndef YYSTYPE
#  define YYSTYPE int
#  define YYSTYPE_IS_TRIVIAL 1
# endif
#endif

#line 68 "/usr/share/bison++/bison.h"
/* prefix */

#ifndef YY_parse_DEBUG

 #line 71 "/usr/share/bison++/bison.h"

#line 71 "/usr/share/bison++/bison.h"
/* YY_parse_DEBUG */
#endif

#ifndef YY_parse_LSP_NEEDED

 #line 75 "/usr/share/bison++/bison.h"

#line 75 "/usr/share/bison++/bison.h"
 /* YY_parse_LSP_NEEDED*/
#endif

/* DEFAULT LTYPE*/
#ifdef YY_parse_LSP_NEEDED
 #ifndef YY_parse_LTYPE
  #ifndef BISON_YYLTYPE_ISDECLARED
   #define BISON_YYLTYPE_ISDECLARED
typedef
  struct yyltype
    {
      int timestamp;
      int first_line;
      int first_column;
      int last_line;
      int last_column;
      char *text;
   }
  yyltype;
  #endif

  #define YY_parse_LTYPE yyltype
 #endif
#endif

/* DEFAULT STYPE*/
#ifndef YY_parse_STYPE
 #define YY_parse_STYPE int
#endif

/* DEFAULT MISCELANEOUS */
#ifndef YY_parse_PARSE
 #define YY_parse_PARSE yyparse
#endif

#ifndef YY_parse_LEX
 #define YY_parse_LEX yylex
#endif

#ifndef YY_parse_LVAL
 #define YY_parse_LVAL yylval
#endif

#ifndef YY_parse_LLOC
 #define YY_parse_LLOC yylloc
#endif

#ifndef YY_parse_CHAR
 #define YY_parse_CHAR yychar
#endif

#ifndef YY_parse_NERRS
 #define YY_parse_NERRS yynerrs
#endif

#ifndef YY_parse_DEBUG_FLAG
 #define YY_parse_DEBUG_FLAG yydebug
#endif

#ifndef YY_parse_ERROR
 #define YY_parse_ERROR yyerror
#endif

#ifndef YY_parse_PARSE_PARAM
 #ifndef __STDC__
  #ifndef __cplusplus
   #ifndef YY_USE_CLASS
    #define YY_parse_PARSE_PARAM
    #ifndef YY_parse_PARSE_PARAM_DEF
     #define YY_parse_PARSE_PARAM_DEF
    #endif
   #endif
  #endif
 #endif
 #ifndef YY_parse_PARSE_PARAM
  #define YY_parse_PARSE_PARAM void
 #endif
#endif

/* TOKEN C */
#ifndef YY_USE_CLASS

 #ifndef YY_parse_PURE
  #ifndef yylval
   extern YY_parse_STYPE YY_parse_LVAL;
  #else
   #if yylval != YY_parse_LVAL
    extern YY_parse_STYPE YY_parse_LVAL;
   #else
    #warning "Namespace conflict, disabling some functionality (bison++ only)"
   #endif
  #endif
 #endif


 #line 169 "/usr/share/bison++/bison.h"
#define	T_abstract	258
#define	T_alias	259
#define	T_align	260
#define	T_asm	261
#define	T_assert	262
#define	T_auto	263
#define	T_body	264
#define	T_bool	265
#define	T_break	266
#define	T_byte	267
#define	T_case	268
#define	T_cast	269
#define	T_catch	270
#define	T_cdouble	271
#define	T_cent	272
#define	T_cfloat	273
#define	T_char	274
#define	T_class	275
#define	T_const	276
#define	T_continue	277
#define	T_creal	278
#define	T_dchar	279
#define	T_debug	280
#define	T_default	281
#define	T_delegate	282
#define	T_deprecated	283
#define	T_do	284
#define	T_double	285
#define	T_else	286
#define	T_enum	287
#define	T_export	288
#define	T_extern	289
#define	T_false	290
#define	T_final	291
#define	T_finally	292
#define	T_float	293
#define	T_for	294
#define	T_foreach	295
#define	T_foreach_reverse	296
#define	T_function	297
#define	T_goto	298
#define	T_idouble	299
#define	T_if	300
#define	T_ifloat	301
#define	T_immutable	302
#define	T_import	303
#define	T_in	304
#define	T_inout	305
#define	T_int	306
#define	T_interface	307
#define	T_invariant	308
#define	T_ireal	309
#define	T_is	310
#define	T_lazy	311
#define	T_long	312
#define	T_mixin	313
#define	T_module	314
#define	T_new	315
#define	T_nothrow	316
#define	T_null	317
#define	T_out	318
#define	T_override	319
#define	T_package	320
#define	T_pragma	321
#define	T_private	322
#define	T_protected	323
#define	T_public	324
#define	T_pure	325
#define	T_real	326
#define	T_ref	327
#define	T_return	328
#define	T_scope	329
#define	T_shared	330
#define	T_short	331
#define	T_static	332
#define	T_struc	333
#define	T_super	334
#define	T_switch	335
#define	T_synchronized	336
#define	T_template	337
#define	T_this	338
#define	T_throw	339
#define	T_true	340
#define	T_try	341
#define	T_typeid	342
#define	T_typeof	343
#define	T_ubyte	344
#define	T_ucent	345
#define	T_uint	346
#define	T_ulong	347
#define	T_union	348
#define	T_unittest	349
#define	T_ushort	350
#define	T_version	351
#define	T_void	352
#define	T_wchar	353
#define	T_while	354
#define	T_with	355
#define	NUM	356
#define	T_neq	357
#define	T_bslash	358
#define	T_land	359
#define	T_andeq	360
#define	T_and	361
#define	T_lor	362
#define	T_oreq	363
#define	T_or	364
#define	T_dec	365
#define	T_deceq	366
#define	T_minus	367
#define	T_inc	368
#define	T_inceq	369
#define	T_plus	370
#define	T_GEQ	371
#define	T_GR	372
#define	T_NOTEQ	373
#define	T_OPAREN	374
#define	T_CPAREN	375
#define	T_OCOR	376
#define	T_CCOR	377
#define	T_SEMICOLON	378
#define	T_EQUAL	379
#define	T_multiply	380
#define	T_COMA	381
#define	T_LE	382
#define	T_isEqual	383
#define	DEC	384
#define	ID	385
#define	T_LT	386
#define	END_OF_FILE	387
#define	T_multeq	388
#define	T_LITCHAR	389
#define	T_dot	390
#define	T_COLON	391
#define	T_LSTRING	392


#line 169 "/usr/share/bison++/bison.h"
 /* #defines token */
/* after #define tokens, before const tokens S5*/
#else
 #ifndef YY_parse_CLASS
  #define YY_parse_CLASS parse
 #endif

 #ifndef YY_parse_INHERIT
  #define YY_parse_INHERIT
 #endif

 #ifndef YY_parse_MEMBERS
  #define YY_parse_MEMBERS 
 #endif

 #ifndef YY_parse_LEX_BODY
  #define YY_parse_LEX_BODY  
 #endif

 #ifndef YY_parse_ERROR_BODY
  #define YY_parse_ERROR_BODY  
 #endif

 #ifndef YY_parse_CONSTRUCTOR_PARAM
  #define YY_parse_CONSTRUCTOR_PARAM
 #endif
 /* choose between enum and const */
 #ifndef YY_parse_USE_CONST_TOKEN
  #define YY_parse_USE_CONST_TOKEN 0
  /* yes enum is more compatible with flex,  */
  /* so by default we use it */ 
 #endif
 #if YY_parse_USE_CONST_TOKEN != 0
  #ifndef YY_parse_ENUM_TOKEN
   #define YY_parse_ENUM_TOKEN yy_parse_enum_token
  #endif
 #endif

class YY_parse_CLASS YY_parse_INHERIT
{
public: 
 #if YY_parse_USE_CONST_TOKEN != 0
  /* static const int token ... */
  
 #line 212 "/usr/share/bison++/bison.h"
static const int T_abstract;
static const int T_alias;
static const int T_align;
static const int T_asm;
static const int T_assert;
static const int T_auto;
static const int T_body;
static const int T_bool;
static const int T_break;
static const int T_byte;
static const int T_case;
static const int T_cast;
static const int T_catch;
static const int T_cdouble;
static const int T_cent;
static const int T_cfloat;
static const int T_char;
static const int T_class;
static const int T_const;
static const int T_continue;
static const int T_creal;
static const int T_dchar;
static const int T_debug;
static const int T_default;
static const int T_delegate;
static const int T_deprecated;
static const int T_do;
static const int T_double;
static const int T_else;
static const int T_enum;
static const int T_export;
static const int T_extern;
static const int T_false;
static const int T_final;
static const int T_finally;
static const int T_float;
static const int T_for;
static const int T_foreach;
static const int T_foreach_reverse;
static const int T_function;
static const int T_goto;
static const int T_idouble;
static const int T_if;
static const int T_ifloat;
static const int T_immutable;
static const int T_import;
static const int T_in;
static const int T_inout;
static const int T_int;
static const int T_interface;
static const int T_invariant;
static const int T_ireal;
static const int T_is;
static const int T_lazy;
static const int T_long;
static const int T_mixin;
static const int T_module;
static const int T_new;
static const int T_nothrow;
static const int T_null;
static const int T_out;
static const int T_override;
static const int T_package;
static const int T_pragma;
static const int T_private;
static const int T_protected;
static const int T_public;
static const int T_pure;
static const int T_real;
static const int T_ref;
static const int T_return;
static const int T_scope;
static const int T_shared;
static const int T_short;
static const int T_static;
static const int T_struc;
static const int T_super;
static const int T_switch;
static const int T_synchronized;
static const int T_template;
static const int T_this;
static const int T_throw;
static const int T_true;
static const int T_try;
static const int T_typeid;
static const int T_typeof;
static const int T_ubyte;
static const int T_ucent;
static const int T_uint;
static const int T_ulong;
static const int T_union;
static const int T_unittest;
static const int T_ushort;
static const int T_version;
static const int T_void;
static const int T_wchar;
static const int T_while;
static const int T_with;
static const int NUM;
static const int T_neq;
static const int T_bslash;
static const int T_land;
static const int T_andeq;
static const int T_and;
static const int T_lor;
static const int T_oreq;
static const int T_or;
static const int T_dec;
static const int T_deceq;
static const int T_minus;
static const int T_inc;
static const int T_inceq;
static const int T_plus;
static const int T_GEQ;
static const int T_GR;
static const int T_NOTEQ;
static const int T_OPAREN;
static const int T_CPAREN;
static const int T_OCOR;
static const int T_CCOR;
static const int T_SEMICOLON;
static const int T_EQUAL;
static const int T_multiply;
static const int T_COMA;
static const int T_LE;
static const int T_isEqual;
static const int DEC;
static const int ID;
static const int T_LT;
static const int END_OF_FILE;
static const int T_multeq;
static const int T_LITCHAR;
static const int T_dot;
static const int T_COLON;
static const int T_LSTRING;


#line 212 "/usr/share/bison++/bison.h"
 /* decl const */
 #else
  enum YY_parse_ENUM_TOKEN { YY_parse_NULL_TOKEN=0
  
 #line 215 "/usr/share/bison++/bison.h"
	,T_abstract=258
	,T_alias=259
	,T_align=260
	,T_asm=261
	,T_assert=262
	,T_auto=263
	,T_body=264
	,T_bool=265
	,T_break=266
	,T_byte=267
	,T_case=268
	,T_cast=269
	,T_catch=270
	,T_cdouble=271
	,T_cent=272
	,T_cfloat=273
	,T_char=274
	,T_class=275
	,T_const=276
	,T_continue=277
	,T_creal=278
	,T_dchar=279
	,T_debug=280
	,T_default=281
	,T_delegate=282
	,T_deprecated=283
	,T_do=284
	,T_double=285
	,T_else=286
	,T_enum=287
	,T_export=288
	,T_extern=289
	,T_false=290
	,T_final=291
	,T_finally=292
	,T_float=293
	,T_for=294
	,T_foreach=295
	,T_foreach_reverse=296
	,T_function=297
	,T_goto=298
	,T_idouble=299
	,T_if=300
	,T_ifloat=301
	,T_immutable=302
	,T_import=303
	,T_in=304
	,T_inout=305
	,T_int=306
	,T_interface=307
	,T_invariant=308
	,T_ireal=309
	,T_is=310
	,T_lazy=311
	,T_long=312
	,T_mixin=313
	,T_module=314
	,T_new=315
	,T_nothrow=316
	,T_null=317
	,T_out=318
	,T_override=319
	,T_package=320
	,T_pragma=321
	,T_private=322
	,T_protected=323
	,T_public=324
	,T_pure=325
	,T_real=326
	,T_ref=327
	,T_return=328
	,T_scope=329
	,T_shared=330
	,T_short=331
	,T_static=332
	,T_struc=333
	,T_super=334
	,T_switch=335
	,T_synchronized=336
	,T_template=337
	,T_this=338
	,T_throw=339
	,T_true=340
	,T_try=341
	,T_typeid=342
	,T_typeof=343
	,T_ubyte=344
	,T_ucent=345
	,T_uint=346
	,T_ulong=347
	,T_union=348
	,T_unittest=349
	,T_ushort=350
	,T_version=351
	,T_void=352
	,T_wchar=353
	,T_while=354
	,T_with=355
	,NUM=356
	,T_neq=357
	,T_bslash=358
	,T_land=359
	,T_andeq=360
	,T_and=361
	,T_lor=362
	,T_oreq=363
	,T_or=364
	,T_dec=365
	,T_deceq=366
	,T_minus=367
	,T_inc=368
	,T_inceq=369
	,T_plus=370
	,T_GEQ=371
	,T_GR=372
	,T_NOTEQ=373
	,T_OPAREN=374
	,T_CPAREN=375
	,T_OCOR=376
	,T_CCOR=377
	,T_SEMICOLON=378
	,T_EQUAL=379
	,T_multiply=380
	,T_COMA=381
	,T_LE=382
	,T_isEqual=383
	,DEC=384
	,ID=385
	,T_LT=386
	,END_OF_FILE=387
	,T_multeq=388
	,T_LITCHAR=389
	,T_dot=390
	,T_COLON=391
	,T_LSTRING=392


#line 215 "/usr/share/bison++/bison.h"
 /* enum token */
     }; /* end of enum declaration */
 #endif
public:
 int YY_parse_PARSE(YY_parse_PARSE_PARAM);
 virtual void YY_parse_ERROR(char *msg) YY_parse_ERROR_BODY;
 #ifdef YY_parse_PURE
  #ifdef YY_parse_LSP_NEEDED
   virtual int  YY_parse_LEX(YY_parse_STYPE *YY_parse_LVAL,YY_parse_LTYPE *YY_parse_LLOC) YY_parse_LEX_BODY;
  #else
   virtual int  YY_parse_LEX(YY_parse_STYPE *YY_parse_LVAL) YY_parse_LEX_BODY;
  #endif
 #else
  virtual int YY_parse_LEX() YY_parse_LEX_BODY;
  YY_parse_STYPE YY_parse_LVAL;
  #ifdef YY_parse_LSP_NEEDED
   YY_parse_LTYPE YY_parse_LLOC;
  #endif
  int YY_parse_NERRS;
  int YY_parse_CHAR;
 #endif
 #if YY_parse_DEBUG != 0
  public:
   int YY_parse_DEBUG_FLAG;	/*  nonzero means print parse trace	*/
 #endif
public:
 YY_parse_CLASS(YY_parse_CONSTRUCTOR_PARAM);
public:
 YY_parse_MEMBERS 
};
/* other declare folow */
#endif


#if YY_parse_COMPATIBILITY != 0
 /* backward compatibility */
 /* Removed due to bison problems
 /#ifndef YYSTYPE
 / #define YYSTYPE YY_parse_STYPE
 /#endif*/

 #ifndef YYLTYPE
  #define YYLTYPE YY_parse_LTYPE
 #endif
 #ifndef YYDEBUG
  #ifdef YY_parse_DEBUG 
   #define YYDEBUG YY_parse_DEBUG
  #endif
 #endif

#endif
/* END */

 #line 267 "/usr/share/bison++/bison.h"
#endif
