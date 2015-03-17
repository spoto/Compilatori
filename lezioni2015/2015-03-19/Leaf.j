; File:      jasmin/examples/Leaf.j
; Author:    Fausto Spoto, 16 March 2015
; Purpose:   A leaf node of a tree
; -------------------------------------------------------------------------


.class public test.Leaf
.super test/Node

.field private final value I

;
; initializer
.method public <init>(I)V
    .limit locals 2
    .limit stack 2

    aload_0
    invokespecial test/Node/<init>()V
    aload_0
    iload_1
    putfield test/Leaf/value I
    return
.end method

.method public toString()Ljava/lang/String;
    aload_0
    getfield test/Leaf/value I
    invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
    areturn
.end method




