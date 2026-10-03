.class public final enum Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum UNAUTHORIZED_RESOURCE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNAUTHORIZED_RESOURCE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v1, "AVAILABLE_BY_PIVOT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v1, "DOWNLOADABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v1, "UNAUTHORIZED_RESOURCE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNAUTHORIZED_RESOURCE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->$values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

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

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->value:I

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->value:I

    return p0
.end method
