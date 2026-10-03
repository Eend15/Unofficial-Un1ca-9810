.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/l;->a:I

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/l;->a:I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/l;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->a(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->b(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
