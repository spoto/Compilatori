; File:      jasmin/examples/Loop.j
; Author:    Fausto Spoto, 9 March 2015
; Purpose:   Prints a loop variable
; -------------------------------------------------------------------------


.class public test.Loop
.super java/lang/Object

.field private static counter I

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java.lang.Object.<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 2

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   ldc "hello world"
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   bipush 0
   putstatic test/Loop/counter   I
   getstatic test/Loop/counter   I

start:
   bipush 100
   if_icmpge   fine

   getstatic test/Loop/counter   I
   dup
   invokestatic test.Loop.print(I)V
   bipush 1
   iadd
   dup
   putstatic test/Loop/counter   I

   goto start

fine:
   return
.end method

.method private static print(I)V
   .limit stack 2

   getstatic java/lang/System/out   Ljava/io/PrintStream;
   iload 0
   invokevirtual java/io/PrintStream/println(I)V
   return   
.end method