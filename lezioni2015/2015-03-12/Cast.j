; File:      jasmin/examples/Cast.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   Example of cast
; -------------------------------------------------------------------------


.class public test.Cast
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 1

   ;new java/util/HashSet
   ;dup
   ;invokespecial java/util/HashSet/<init>()V

   ldc "ciao"
   invokestatic test/Cast/foo(Ljava/lang/Object;)V

   return

.end method

.method public static foo(Ljava/lang/Object;)V
   .limit stack 2
   .limit locals 1

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   aload 0
   checkcast java/lang/String
   invokevirtual java/lang/String/length()I
   invokevirtual java/io/PrintStream/println(I)V
   return
   
.end method






