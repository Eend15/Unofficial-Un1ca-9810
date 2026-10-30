.class final Lcom/android/keyguard/Un1caIrisKeyguard$Callback;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "Un1caIrisKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/Un1caIrisKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field private final mSession:Landroid/os/CancellationSignal;

.field private final mUser:I

.field final synthetic this$0:Lcom/android/keyguard/Un1caIrisKeyguard;


# direct methods
.method constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mSession:Landroid/os/CancellationSignal;

    .line 245
    iput p3, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mUser:I

    .line 246
    return-void
.end method


# virtual methods
.method synthetic lambda$onAuthenticationError$0$com-android-keyguard-Un1caIrisKeyguard$Callback()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    const-string v1, "retry"

    invoke-static {v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$mstart(Lcom/android/keyguard/Un1caIrisKeyguard;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmCancel(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/CancellationSignal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mSession:Landroid/os/CancellationSignal;

    if-eq v0, v1, :cond_b

    return-void

    .line 257
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mSession:Landroid/os/CancellationSignal;

    invoke-static {v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$mfinish(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UN1CA-IrisKeyguard"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 p2, 0x9

    if-ne p1, p2, :cond_5f

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmRetriesLeft(Lcom/android/keyguard/Un1caIrisKeyguard;)I

    move-result p1

    if-lez p1, :cond_5f

    .line 260
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmRetriesLeft(Lcom/android/keyguard/Un1caIrisKeyguard;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fputmRetriesLeft(Lcom/android/keyguard/Un1caIrisKeyguard;I)V

    .line 261
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmHandler(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/keyguard/Un1caIrisKeyguard$Callback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$Callback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard$Callback;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    :cond_5f
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 266
    const-string v0, "UN1CA-IrisKeyguard"

    const-string v1, "iris not recognised"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .registers 3

    .line 249
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmCancel(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mSession:Landroid/os/CancellationSignal;

    if-eq p1, v0, :cond_b

    return-void

    .line 250
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mSession:Landroid/os/CancellationSignal;

    invoke-static {p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$mfinish(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    .line 251
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "iris matched"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->mUser:I

    invoke-static {p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$monMatched(Lcom/android/keyguard/Un1caIrisKeyguard;I)V

    .line 253
    return-void
.end method
