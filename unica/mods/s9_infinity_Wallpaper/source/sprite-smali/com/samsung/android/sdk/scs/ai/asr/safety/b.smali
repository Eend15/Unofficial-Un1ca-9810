.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic d:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;->d:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;->e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;->d:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;->e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->e(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V

    return-void
.end method
