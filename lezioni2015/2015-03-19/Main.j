; File:      jasmin/examples/Main.j
; Author:    Fausto Spoto, 16 March 2015
; Purpose:   A test program over binary trees
; -------------------------------------------------------------------------


.class public test.Main
.super java/lang/Object

; initializer
.method private <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 7

    getstatic java/lang/System/out   Ljava/io/PrintStream;

    new test/Internal
    dup

    new test/Leaf
    dup
    bipush 13
    invokespecial test/Leaf/<init>(I)V

    new test/Leaf
    dup
    bipush 17
    invokespecial test/Leaf/<init>(I)V

    invokespecial test/Internal/<init>(Ltest/Node;Ltest/Node;)V

    invokevirtual java/lang/Object/toString()Ljava/lang/String;
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    return
.end method




