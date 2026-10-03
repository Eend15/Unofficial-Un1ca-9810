.class public final synthetic Lcom/samsung/android/scs/ai/sdkcommon/asr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->b:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->a:I

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->b:Landroid/os/Parcelable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->b(Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->b(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
