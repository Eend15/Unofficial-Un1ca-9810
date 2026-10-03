.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Enum;Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->a:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->d:Ljava/lang/Enum;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->a:I

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->d:Ljava/lang/Enum;

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;->a(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->d:Ljava/lang/Enum;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->c(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
