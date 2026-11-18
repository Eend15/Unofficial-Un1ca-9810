.class public final synthetic Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard;ILjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iput p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$1:I

    iput-object p3, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard;

    iget v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$1:I

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->lambda$refreshEnrolled$3$com-android-keyguard-Un1caIrisKeyguard(ILjava/lang/Runnable;)V

    return-void
.end method
