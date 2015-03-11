; File:      jasmin/examples/Loop3.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a loop variable
; -------------------------------------------------------------------------


.class public test.Loop3
.super java/lang/Object

.field private static i I


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
   putstatic test/Loop3/i  I

start:
   ; controllo la guardia
   getstatic test/Loop3/i I
   bipush 50
   if_icmpge fine

   ; stampo il contatore 
   getstatic java/lang/System/out   Ljava/io/PrintStream;
   getstatic test/Loop3/i I
   invokevirtual java/io/PrintStream/println(I)V

   ; incremento il contatore
   getstatic test/Loop3/i I
   iconst_1
   iadd
   putstatic test/Loop3/i I
 
   goto start

fine:
   return

.end method




