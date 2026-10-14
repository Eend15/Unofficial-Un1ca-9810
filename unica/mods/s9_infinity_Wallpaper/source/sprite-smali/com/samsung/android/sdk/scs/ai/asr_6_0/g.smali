.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;->b(Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/g;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;->c(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
