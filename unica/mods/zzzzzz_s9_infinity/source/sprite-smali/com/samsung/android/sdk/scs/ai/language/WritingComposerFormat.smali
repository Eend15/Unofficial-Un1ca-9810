.class public final enum Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_COMMENT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_COMMENT_WITH_CONTEXT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_EMAIL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_EXTRACT_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_PERSONALIZED_HISTORY:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_PERSONALIZED_HISTORY_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_SOCIAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_SOCIAL_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field public static final enum WRITINGCOMPOSER_STANDARD:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;
    .locals 11

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_STANDARD:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_EMAIL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_SOCIAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_COMMENT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_SOCIAL_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_COMMENT_WITH_CONTEXT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_HISTORY:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_HISTORY_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v8, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v9, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    sget-object v10, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_EXTRACT_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_STANDARD:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_EMAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_EMAIL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_SOCIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_SOCIAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_COMMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_COMMENT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_SOCIAL_WITH_MULTIMODAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_SOCIAL_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_COMMENT_WITH_CONTEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_COMMENT_WITH_CONTEXT:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_PERSONALIZED_HISTORY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_HISTORY:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_PERSONALIZED_HISTORY_WITH_MULTIMODAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_HISTORY_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS_WITH_MULTIMODAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_PERSONALIZED_CHARACTERISTICS_WITH_MULTIMODAL:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    const-string v1, "WRITINGCOMPOSER_EXTRACT_CHARACTERISTICS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->WRITINGCOMPOSER_EXTRACT_CHARACTERISTICS:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->$values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    return-object v0
.end method
