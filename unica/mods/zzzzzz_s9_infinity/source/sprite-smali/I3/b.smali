.class public final LI3/b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-object p0
.end method
