.class public final synthetic Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;ZLandroid/os/CancellationSignal;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iput-boolean p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p3, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$2:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget-boolean v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$1:Z

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;->f$2:Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->lambda$start$5$com-android-keyguard-Un1caIrisKeyguard(ZLandroid/os/CancellationSignal;)V

    return-void
.end method
