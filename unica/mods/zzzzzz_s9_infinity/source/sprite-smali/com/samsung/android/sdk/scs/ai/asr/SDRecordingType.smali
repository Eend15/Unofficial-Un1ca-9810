.class public final enum Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

.field public static final enum TYPE_CALL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

.field public static final enum TYPE_NORMAL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->TYPE_NORMAL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->TYPE_CALL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    const-string v1, "TYPE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->TYPE_NORMAL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    const-string v1, "TYPE_CALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->TYPE_CALL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->$values()[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-object v0
.end method


# virtual methods
.method public getTypeInt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->type:I

    return p0
.end method
