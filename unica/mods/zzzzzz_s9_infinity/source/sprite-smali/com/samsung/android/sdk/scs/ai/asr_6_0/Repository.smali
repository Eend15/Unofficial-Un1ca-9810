.class interface abstract Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;
    }
.end annotation


# static fields
.field public static final settings:Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository$SharedPrefRepository;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr_6_0/Repository;

    return-void
.end method


# virtual methods
.method public abstract getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
.end method

.method public abstract setServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;)Z
.end method
