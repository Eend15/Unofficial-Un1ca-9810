.class public final enum Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

.field public static final enum BTC_LANGUAGES_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

.field public static final enum DICTATION_ASR:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

.field public static final enum DICTATION_LANGUAGE_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

.field public static final enum LANGPACK_CONFIG:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;
    .locals 4

    sget-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->DICTATION_LANGUAGE_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    sget-object v1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->DICTATION_ASR:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    sget-object v2, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->BTC_LANGUAGES_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    sget-object v3, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->LANGPACK_CONFIG:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    const-string v1, "DICTATION_LANGUAGE_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->DICTATION_LANGUAGE_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    const-string v1, "DICTATION_ASR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->DICTATION_ASR:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    const-string v1, "BTC_LANGUAGES_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->BTC_LANGUAGES_INFO:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    const-string v1, "LANGPACK_CONFIG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->LANGPACK_CONFIG:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->$values()[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->$VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;
    .locals 1

    const-class v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->$VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    return-object v0
.end method
