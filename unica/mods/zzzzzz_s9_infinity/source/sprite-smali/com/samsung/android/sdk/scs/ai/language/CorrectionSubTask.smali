.class public final enum Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

.field public static final enum GRAMMAR:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

.field public static final enum TYPO:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->TYPO:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->GRAMMAR:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    const-string v1, "TYPO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->TYPO:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    const-string v1, "GRAMMAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->GRAMMAR:Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->$values()[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    return-object v0
.end method
