; File:      jasmin/examples/Loop4.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a loop variable
; -------------------------------------------------------------------------


.class public test.Loop4
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
   putstatic test/Loop4/i  I

start:
   ; controllo la guardia
   getstatic test/Loop4/i I
   bipush 50
   if_icmpge fine

   getstatic java/lang/System/out   Ljava/io/PrintStream;

   ; calcolo il contatore % 2
   getstatic test/Loop4/i I
   iconst_2
   irem

   ; controllo se è 0 oppure 1
   ifeq pari

   ; è dispari!
   ldc "dispari"
   goto dopo

pari:
   ; è pari!
   ldc "pari"

dopo:
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   ; incremento il contatore
   getstatic test/Loop4/i I
   iconst_1
   iadd
   putstatic test/Loop4/i I
 
   goto start

fine:
   return

.end method




