; File:      jasmin/examples/CharactersField.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   A loop on characters
; -------------------------------------------------------------------------


.class public test.CharactersField
.super java/lang/Object

.field private static counter I

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
   putstatic test/CharactersField/counter I

loop:
   getstatic test/CharactersField/counter I
   bipush 91
   if_icmpge fine

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   getstatic test/CharactersField/counter I
   invokevirtual java/io/PrintStream/println(C)V

   getstatic test/CharactersField/counter I
   iconst_1
   iadd
   putstatic test/CharactersField/counter I
   goto loop

fine:
   return

.end method




