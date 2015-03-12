; File:      jasmin/examples/Factorial.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   Prints the factorial
; -------------------------------------------------------------------------


.class public test.Factorial
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 4
   .limit locals 2

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   bipush 12
   invokestatic test/Factorial/factorial(I)I
   invokevirtual java/io/PrintStream/println(I)V

   return

.end method

.method public static factorial(I)I
   .limit stack 3
   .limit locals 1

   iload 0
   ifle  base_case

; caso ricorsivo
   iload 0

; calcolo n - 1
   dup
   iconst_1
   isub

; chiamo ricorsivamente factorial
   invokestatic test/Factorial/factorial(I)I

   imul
   ireturn

base_case:
   iconst_1
   ireturn

.end method



