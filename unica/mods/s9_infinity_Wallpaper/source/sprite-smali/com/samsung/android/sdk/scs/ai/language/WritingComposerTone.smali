.class public final enum Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

.field public static final enum WRITINGCOMPOSER_CASUAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

.field public static final enum WRITINGCOMPOSER_POLITE:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

.field public static final enum WRITINGCOMPOSER_PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_CASUAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_POLITE:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    const-string v1, "WRITINGCOMPOSER_PROFESSIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    const-string v1, "WRITINGCOMPOSER_CASUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_CASUAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    const-string v1, "WRITINGCOMPOSER_POLITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->WRITINGCOMPOSER_POLITE:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->$values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    return-object v0
.end method
