; File:      jasmin/examples/Loop1.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a loop variable
; -------------------------------------------------------------------------


.class public test.Loop1
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
   bipush 4

start:
   ; controllo la guardia
   dup
   bipush 50
   if_icmpge fine

   ; stampo il contatore 
   dup2
   invokevirtual java/io/PrintStream/println(I)V

   ; incremento il contatore
   iconst_1
   iadd
 
   goto start

fine:
   return

.end method




