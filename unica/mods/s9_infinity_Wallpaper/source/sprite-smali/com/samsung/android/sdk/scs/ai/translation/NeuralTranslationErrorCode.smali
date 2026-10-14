.class public final enum Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum COMPUTATION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum ILLEGAL_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum INTERRUPTED:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum NONE:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum NOT_AVAILABLE_DIRECTION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum RESOURCE_ACCESS_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum UNAUTHORIZED_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;


# instance fields
.field private final codeValue:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;
    .locals 8

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->NOT_AVAILABLE_DIRECTION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->NONE:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->INTERRUPTED:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->COMPUTATION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->RESOURCE_ACCESS_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->ILLEGAL_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->UNAUTHORIZED_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-string v3, "NOT_AVAILABLE_DIRECTION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->NOT_AVAILABLE_DIRECTION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x2

    const/16 v2, 0xc8

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->NONE:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x3

    const/16 v2, 0x12c

    const-string v3, "INTERRUPTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->INTERRUPTED:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x4

    const/16 v2, 0x190

    const-string v3, "COMPUTATION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->COMPUTATION_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x5

    const/16 v2, 0x1f4

    const-string v3, "RESOURCE_ACCESS_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->RESOURCE_ACCESS_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x6

    const/16 v2, 0x1f5

    const-string v3, "ILLEGAL_RESOURCE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->ILLEGAL_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    const/4 v1, 0x7

    const/16 v2, 0x1f6

    const-string v3, "UNAUTHORIZED_RESOURCE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->UNAUTHORIZED_RESOURCE_ERROR:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->$values()[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

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

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->codeValue:I

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->values()[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->code()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->codeValue:I

    return p0
.end method
