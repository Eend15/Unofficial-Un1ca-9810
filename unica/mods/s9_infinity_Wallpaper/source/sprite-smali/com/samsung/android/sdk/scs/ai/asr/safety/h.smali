.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    invoke-interface {p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->isWatching()Z

    move-result p0

    return p0
.end method
