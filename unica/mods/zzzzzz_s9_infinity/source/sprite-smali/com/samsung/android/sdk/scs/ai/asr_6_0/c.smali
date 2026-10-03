.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->c(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->b(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, [Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->w(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->u(Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->t(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;->getOrder()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->s(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->d(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->y(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->m(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->q(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/util/Locale;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->l(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;->getOrder()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->i(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->n(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
