; File:      jasmin/examples/Characters.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   A loop on characters
; -------------------------------------------------------------------------


.class public test.Characters
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
   .limit locals 1

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   bipush 65

loop:
   dup
   bipush 91
   if_icmpge fine

   dup2
   invokevirtual java/io/PrintStream/println(C)V

   iconst_1
   iadd
   goto loop

fine:
   return

.end method




