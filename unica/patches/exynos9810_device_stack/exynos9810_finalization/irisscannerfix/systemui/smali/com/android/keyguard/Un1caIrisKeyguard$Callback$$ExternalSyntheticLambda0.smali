.class public final synthetic Lcom/android/keyguard/Un1caIrisKeyguard$Callback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/Un1caIrisKeyguard$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/Un1caIrisKeyguard$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/Un1caIrisKeyguard$Callback;

    invoke-virtual {v0}, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;->lambda$onAuthenticationError$0$com-android-keyguard-Un1caIrisKeyguard$Callback()V

    return-void
.end method
