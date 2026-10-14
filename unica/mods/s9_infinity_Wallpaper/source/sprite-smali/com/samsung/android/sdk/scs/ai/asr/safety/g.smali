.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;->e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;->e:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->b(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
