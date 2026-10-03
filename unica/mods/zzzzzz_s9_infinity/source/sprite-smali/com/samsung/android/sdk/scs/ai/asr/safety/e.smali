.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->d()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
