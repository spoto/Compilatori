; File:      jasmin/examples/Hello2.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a string twice
; -------------------------------------------------------------------------


.class public test.Hello2
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

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   ldc "hello world"
   dup2
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   return
.end method




