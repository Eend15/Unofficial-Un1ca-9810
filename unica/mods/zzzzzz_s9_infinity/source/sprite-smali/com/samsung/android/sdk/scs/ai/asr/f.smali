.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->c(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->b(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, [Lcom/samsung/android/sdk/scs/ai/asr/DictationType;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->A(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->g(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->q(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->s(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->k(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->r(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->x(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;->getOrder()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->y(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->z(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/util/Locale;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->n(Ljava/util/Locale;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->i(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->b(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;->getOrder()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->d(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
