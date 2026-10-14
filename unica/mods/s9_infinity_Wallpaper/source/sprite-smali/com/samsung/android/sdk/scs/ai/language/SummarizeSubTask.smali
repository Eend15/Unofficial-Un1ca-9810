.class public final enum Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public static final enum ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public static final enum CONFERENCE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public static final enum DIALOGUE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public static final enum LECTURE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->CONFERENCE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->LECTURE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->DIALOGUE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    const-string v1, "ARTICLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    const-string v1, "CONFERENCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->CONFERENCE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    const-string v1, "LECTURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->LECTURE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    const-string v1, "DIALOGUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->DIALOGUE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->$values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    return-object v0
.end method
