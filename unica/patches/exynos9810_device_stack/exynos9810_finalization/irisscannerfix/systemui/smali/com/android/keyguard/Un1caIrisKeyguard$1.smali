.class Lcom/android/keyguard/Un1caIrisKeyguard$1;
.super Ljava/lang/Object;
.source "Un1caIrisKeyguard.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/Un1caIrisKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/Un1caIrisKeyguard;


# direct methods
.method constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBindingDied$1$com-android-keyguard-Un1caIrisKeyguard$1()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$mensureServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    return-void
.end method

.method synthetic lambda$onServiceDisconnected$0$com-android-keyguard-Un1caIrisKeyguard$1()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$mensureServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 113
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fputmServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;Z)V

    .line 115
    :try_start_6
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmMonitor(Lcom/android/keyguard/Un1caIrisKeyguard;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_13

    .line 116
    :catchall_12
    move-exception p1

    :goto_13
    nop

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmHandler(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 104
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fputmServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;Z)V

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 108
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fputmServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;Z)V

    .line 109
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$1;->this$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-static {p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->-$$Nest$fgetmHandler(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method
