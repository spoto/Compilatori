; File:      jasmin/examples/Internal.j
; Author:    Fausto Spoto, 16 March 2015
; Purpose:   An internal node of a tree
; -------------------------------------------------------------------------


.class public test.Internal
.super test/Node

.field private final left Ltest/Node;
.field private final right Ltest/Node;

;
; initializer
.method public <init>(Ltest/Node;Ltest/Node;)V
    .limit locals 3
    .limit stack 2

    aload_0
    invokespecial test/Node/<init>()V
    aload_0
    aload_1
    putfield test/Internal/left Ltest/Node;
    aload_0
    aload_2
    putfield test/Internal/right Ltest/Node;
    return
.end method

.method public toString()Ljava/lang/String;
    .limit stack 2

    ldc "["
    
    aload_0
    getfield test/Internal/left Ltest/Node;
    invokevirtual test/Node/toString()Ljava/lang/String;

    invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;

    ldc ","

    invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;

    aload_0
    getfield test/Internal/right Ltest/Node;
    invokevirtual test/Node/toString()Ljava/lang/String;

    invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;

    ldc "]"

    invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;

    areturn
.end method




