.class public final enum Lcom/samsung/android/sdk/scs/ai/language/ToneType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/ToneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ToneType;

.field public static final enum CASUAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

.field public static final enum POLITE:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

.field public static final enum PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

.field public static final enum SOCIAL_POST:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

.field public static final enum WITTY:Lcom/samsung/android/sdk/scs/ai/language/ToneType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/ToneType;
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->CASUAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->POLITE:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->WITTY:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->SOCIAL_POST:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    const-string v1, "PROFESSIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->PROFESSIONAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    const-string v1, "CASUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->CASUAL:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    const-string v1, "POLITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->POLITE:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    const-string v1, "WITTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->WITTY:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    const-string v1, "SOCIAL_POST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->SOCIAL_POST:Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->$values()[Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ToneType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/ToneType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/ToneType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/ToneType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/ToneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    return-object v0
.end method
