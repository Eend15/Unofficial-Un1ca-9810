.class public final enum Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

.field public static final enum LONG:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

.field public static final enum SHORT:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->LONG:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->SHORT:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->LONG:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    const-string v1, "SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->SHORT:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->$values()[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

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

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;->name:Ljava/lang/String;

    return-object p0
.end method
