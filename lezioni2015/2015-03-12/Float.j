; File:      jasmin/examples/Float.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   Prints floats
; -------------------------------------------------------------------------


.class public test.Floats
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

   getstatic java/lang/System/out   Ljava/io/PrintStream;

   ldc 3.14f
   ldc 2000
   i2f   ; integer to float
   fadd

   invokevirtual java/io/PrintStream/println(F)V

   return

.end method
