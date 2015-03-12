; File:      jasmin/examples/Constructor.j
; Author:    Fausto Spoto, 12 March 2015
; Purpose:   Calls a constructor
; -------------------------------------------------------------------------


.class public test.Constructor
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 5
   .limit locals 2

   getstatic java/lang/System/out   Ljava/io/PrintStream;

   ldc "ciao"

   new java/util/HashSet
   dup
   invokespecial java/util/HashSet/<init>()V

   swap

   dup2
   invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
   pop  ; elimino il boolean
   pop  ; elimino la copia di "ciao"
   invokevirtual java/util/HashSet/toString()Ljava/lang/String;

   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   return

.end method




