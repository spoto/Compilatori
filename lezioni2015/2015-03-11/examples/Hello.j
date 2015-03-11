; File:      jasmin/examples/Hello.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints the hello world
; -------------------------------------------------------------------------


.class public test.Hello
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

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   ldc "hello world"
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   return
.end method




