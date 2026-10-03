.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

.field public final synthetic e:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;->d:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;->e:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;->e:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;->d:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->a(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method
