; File:      jasmin/examples/Node.j
; Author:    Fausto Spoto, 16 March 2015
; Purpose:   A node of a tree
; -------------------------------------------------------------------------


.class public abstract test.Node
.super java/lang/Object

;
; standard initializer: esiste anche se la classe e' abstract!!!!
.method protected <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public abstract toString()Ljava/lang/String;
.end method




