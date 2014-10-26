; ModuleID = 'main.cpp'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin13.4.0"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", i32*, i8, i32*, i32*, i64*, i8, [256 x i8], [256 x i8], i8 }
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [28 x i8] c"This is going to be printed\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"This should not\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #0
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #0

; Function Attrs: nounwind
define i32 @main() #2 {
  %1 = alloca %"class.std::basic_string", align 8
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %2) #0
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %1, i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* %2)
  call void @_Z3LogILb1EEvRSoRKSs(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_string"* %1)
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %1)
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %2) #0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %4) #0
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %3, i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), %"class.std::allocator"* %4)
  call void @_Z3LogILb0EEvRSoRKSs(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_string"* %3)
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %3)
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %4) #0
  ret i32 0
}

; Function Attrs: nounwind
define linkonce_odr void @_Z3LogILb1EEvRSoRKSs(%"class.std::basic_ostream"* %out, %"class.std::basic_string"* %str) #2 {
  %1 = alloca %"class.std::basic_ostream"*, align 8
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_ostream"* %out, %"class.std::basic_ostream"** %1, align 8
  store %"class.std::basic_string"* %str, %"class.std::basic_string"** %2, align 8
  %3 = load %"class.std::basic_ostream"** %1, align 8
  %4 = load %"class.std::basic_string"** %2, align 8
  %5 = call %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* %3, %"class.std::basic_string"* %4)
  %6 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %5, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #2

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"*) #1

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #2

; Function Attrs: nounwind
define linkonce_odr void @_Z3LogILb0EEvRSoRKSs(%"class.std::basic_ostream"* %out, %"class.std::basic_string"* %str) #2 {
  %1 = alloca %"class.std::basic_ostream"*, align 8
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_ostream"* %out, %"class.std::basic_ostream"** %1, align 8
  store %"class.std::basic_string"* %str, %"class.std::basic_string"** %2, align 8
  ret void
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"*, %"class.std::basic_string"*) #1

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 6.0 (clang-600.0.51) (based on LLVM 3.5svn)"}
