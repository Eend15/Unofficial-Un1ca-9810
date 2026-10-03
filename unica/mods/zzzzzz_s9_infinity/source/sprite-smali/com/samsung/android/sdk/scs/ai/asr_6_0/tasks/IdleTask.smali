.class public Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/IdleTask;
.super Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/RecognitionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/RecognitionTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IdleTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/RecognitionTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    const-string v0, "IdleTask"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/RecognitionTask;->complete(Ljava/lang/Object;)V

    return-void
.end method
