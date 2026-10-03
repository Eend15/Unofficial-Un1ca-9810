.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/d;->a:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/d;->a:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z

    move-result p0

    return p0
.end method
