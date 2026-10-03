.class public final enum Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

.field public static final enum NOTE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

.field public static final enum ST_ENERGY:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

.field public static final enum ST_SOUND:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

.field public static final enum TITLE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

.field public static final enum VOICE_RECORDER_KEYWORDS:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->NOTE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->ST_ENERGY:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->VOICE_RECORDER_KEYWORDS:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->TITLE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->ST_SOUND:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    const/4 v1, 0x0

    const-string v2, "Note"

    const-string v3, "NOTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->NOTE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    const/4 v1, 0x1

    const-string v2, "StEnergy"

    const-string v3, "ST_ENERGY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->ST_ENERGY:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    const/4 v1, 0x2

    const-string v2, "Keywords"

    const-string v3, "VOICE_RECORDER_KEYWORDS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->VOICE_RECORDER_KEYWORDS:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    const/4 v1, 0x3

    const-string v2, "Title"

    const-string v3, "TITLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->TITLE:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    const/4 v1, 0x4

    const-string v2, "StSound"

    const-string v3, "ST_SOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->ST_SOUND:Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->$values()[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;->name:Ljava/lang/String;

    return-object p0
.end method
