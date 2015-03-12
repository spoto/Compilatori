; File:      jasmin/examples/Concat.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   Prints a string concatenation
; -------------------------------------------------------------------------


.class public test.Concat
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

   ldc "ciao"
   ldc "come va?"
   invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;   
   iconst_2
   bipush 6
   invokevirtual java/lang/String/substring(II)Ljava/lang/String;
   invokevirtual java/lang/String/length()I

   invokevirtual java/io/PrintStream/println(I)V

   return

.end method




