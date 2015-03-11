; File:      jasmin/examples/Loop2.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a loop variable
; -------------------------------------------------------------------------


.class public test.Loop2
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

   bipush 4
   istore 1

start:
   ; controllo la guardia
   iload 1
   bipush 50
   if_icmpge fine

   ; stampo il contatore 
   getstatic java/lang/System/out   Ljava/io/PrintStream;
   iload 1
   invokevirtual java/io/PrintStream/println(I)V

   ; incremento il contatore
   iinc 1 1

   ;iload 1
   ;iconst_1
   ;iadd
   ;istore 1
 
   goto start

fine:
   return

.end method




