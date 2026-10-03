.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr_6_0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->k(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
