.class public final synthetic Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

.field public final synthetic f$1:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iput-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->lambda$start$0$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V

    return-void
.end method
