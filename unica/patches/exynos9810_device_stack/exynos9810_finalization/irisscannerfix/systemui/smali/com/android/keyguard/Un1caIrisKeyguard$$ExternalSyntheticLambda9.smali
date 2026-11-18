.class public final synthetic Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Lcom/samsung/android/camera/iris/SemIrisManager;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iput-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$2:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput p4, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$3:I

    iput-object p5, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$4:Landroid/view/View;

    iput-wide p6, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$2:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$3:I

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$4:Landroid/view/View;

    iget-wide v5, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/Un1caIrisKeyguard;->lambda$start$11$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V

    return-void
.end method
