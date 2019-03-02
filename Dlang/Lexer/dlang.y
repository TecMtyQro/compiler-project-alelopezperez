%{

#include <stdio.h>
#include <stdlib.h>
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
%token T_eles
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

%start line

%%
line : ;           


%%



