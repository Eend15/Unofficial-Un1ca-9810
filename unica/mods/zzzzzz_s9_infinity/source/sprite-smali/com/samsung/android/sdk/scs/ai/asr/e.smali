.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/e;->a:I

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/e;->a:I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->p(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->t(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->d(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
