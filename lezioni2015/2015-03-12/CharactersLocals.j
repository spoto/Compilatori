; File:      jasmin/examples/CharactersLocals.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   A loop on characters
; -------------------------------------------------------------------------


.class public test.CharactersLocals
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
   .limit locals 2

   bipush 65
   istore 1

loop:
   iload 1
   bipush 91
   if_icmpge fine

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   iload 1
   invokevirtual java/io/PrintStream/println(C)V

   iinc 1 1
   goto loop

fine:
   return

.end method




