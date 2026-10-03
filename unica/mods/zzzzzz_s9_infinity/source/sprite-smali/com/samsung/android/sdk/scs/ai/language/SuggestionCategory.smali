.class public final enum Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum CLIP_QNA:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum FILE_RENAME:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum NOTE_TRAVEL_TIP:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum NOW_BRIEF_INSIGHT:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum NOW_BRIEF_WEATHER:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum OTHERS:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum TITLE_GENERATION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

.field public static final enum TOUCH_TO_SEARCH_ENTITY_SUGGESTION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;
    .locals 8

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOW_BRIEF_WEATHER:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOW_BRIEF_INSIGHT:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->CLIP_QNA:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->TOUCH_TO_SEARCH_ENTITY_SUGGESTION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->FILE_RENAME:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->TITLE_GENERATION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOTE_TRAVEL_TIP:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->OTHERS:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "NOW_BRIEF_WEATHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOW_BRIEF_WEATHER:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "NOW_BRIEF_INSIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOW_BRIEF_INSIGHT:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "CLIP_QNA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->CLIP_QNA:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "TOUCH_TO_SEARCH_ENTITY_SUGGESTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->TOUCH_TO_SEARCH_ENTITY_SUGGESTION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "FILE_RENAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->FILE_RENAME:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "TITLE_GENERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->TITLE_GENERATION:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "NOTE_TRAVEL_TIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->NOTE_TRAVEL_TIP:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    const-string v1, "OTHERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->OTHERS:Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->$values()[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

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

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;->name:Ljava/lang/String;

    return-object p0
.end method
