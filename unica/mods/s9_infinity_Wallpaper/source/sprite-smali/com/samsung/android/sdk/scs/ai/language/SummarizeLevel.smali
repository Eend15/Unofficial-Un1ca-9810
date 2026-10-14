.class public final enum Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public static final enum BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public static final enum IN_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public static final enum IN_MORE_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public static final enum MORE_BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_MORE_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->MORE_BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    const-string v1, "IN_MORE_DETAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_MORE_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    const-string v1, "IN_DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    const-string v1, "BRIEFLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    const-string v1, "MORE_BRIEFLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->MORE_BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->$values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object v0
.end method
