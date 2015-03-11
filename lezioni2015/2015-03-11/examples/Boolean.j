; File:      jasmin/examples/Boolean.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a Boolean
; -------------------------------------------------------------------------


.class public test.Boolean
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

   ; stampo il booleano
   getstatic java/lang/System/out   Ljava/io/PrintStream;
   iconst_2 ; significa vero!
   invokevirtual java/io/PrintStream/println(Z)V

   return

.end method




