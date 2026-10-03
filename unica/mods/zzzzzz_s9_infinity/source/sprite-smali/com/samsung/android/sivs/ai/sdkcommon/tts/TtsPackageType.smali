.class public final enum Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

.field public static final enum MULTI_SPEAKER:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

.field public static final enum NORMAL:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

.field public static final enum PERSONAL_TTS:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;
    .locals 3

    sget-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->NORMAL:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    sget-object v1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->MULTI_SPEAKER:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    sget-object v2, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->PERSONAL_TTS:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->NORMAL:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    const-string v1, "MULTI_SPEAKER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->MULTI_SPEAKER:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    const-string v1, "PERSONAL_TTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->PERSONAL_TTS:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    invoke-static {}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->$values()[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->$VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;
    .locals 1

    const-class v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->$VALUES:[Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    invoke-virtual {v0}, [Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageType;

    return-object v0
.end method
