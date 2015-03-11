; File:      jasmin/examples/Hello3.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints the result of an addition
; -------------------------------------------------------------------------


.class public test.Hello3
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 3
   .limit locals 2

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   astore 0

   aload 0
   ldc "hello world"
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   aload 0
   iconst_3
   iconst_1
   iadd
   invokevirtual java/io/PrintStream/println(I)V

   return
.end method




