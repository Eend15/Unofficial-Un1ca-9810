.class public final enum Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum EXCEED_RATE_LIMIT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum INPUT_DATA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum MISSING_MANDATORY_FIELD:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum MODEL_NOT_FOUND:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum NOT_SPECIFIED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum REQUEST_CANCELED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum RESOURCE_BUSY:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum SERVICE_EXCEPTION:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

.field public static final enum TIME_OUT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
    .locals 16

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->MODEL_NOT_FOUND:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->NOT_SPECIFIED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->RESOURCE_BUSY:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->REQUEST_CANCELED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->TIME_OUT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->NETWORK_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->INPUT_DATA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->MISSING_MANDATORY_FIELD:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v8, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->EXCEED_RATE_LIMIT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v9, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVICE_EXCEPTION:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v10, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v11, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v12, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v13, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v14, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v15, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    filled-new-array/range {v0 .. v15}, [Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->MODEL_NOT_FOUND:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "MODEL_NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->MODEL_NOT_FOUND:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->NOT_SPECIFIED:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "NOT_SPECIFIED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->NOT_SPECIFIED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->RESOURCE_BUSY:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "RESOURCE_BUSY"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->RESOURCE_BUSY:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->REQUEST_CANCELED:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "REQUEST_CANCELED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->REQUEST_CANCELED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->TIME_OUT:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "TIME_OUT"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->TIME_OUT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->NETWORK_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "NETWORK_ERROR"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->NETWORK_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->INPUT_DATA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "INPUT_DATA_ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->INPUT_DATA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->MISSING_MANDATORY_FIELD:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "MISSING_MANDATORY_FIELD"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->MISSING_MANDATORY_FIELD:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->EXCEED_RATE_LIMIT:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "EXCEED_RATE_LIMIT"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->EXCEED_RATE_LIMIT:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->SERVICE_EXCEPTION:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "SERVICE_EXCEPTION"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVICE_EXCEPTION:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->CLIENT_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "CLIENT_ERROR"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->AUTH_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "AUTH_ERROR"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "AUTH_SA_ERROR"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "SERVER_QUOTA_ERROR"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "SAFETY_FILTER_ERROR"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    sget-object v1, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/visual/ai/sdkcommon/VisualErrorCode;->getCode()I

    move-result v1

    const-string v2, "SERVER_ERROR"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->$values()[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

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

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->code:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->lambda$toCoreErrorCode$0(ILcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$toCoreErrorCode$0(ILcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;)Z
    .locals 0

    iget p1, p1, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->code:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toCoreErrorCode(I)Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->values()[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/b;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    return-object p0
.end method

.method public static toErrorCode(I)Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
    .locals 2

    div-int/lit16 v0, p0, 0x3e8

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    const/16 p0, 0x8

    if-eq v0, p0, :cond_0

    const/16 p0, 0x9

    if-eq v0, p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_3
    const/16 v0, 0x898

    if-eq p0, v0, :cond_5

    const/16 v0, 0x899

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->toCoreErrorCode(I)Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->code:I

    return p0
.end method
