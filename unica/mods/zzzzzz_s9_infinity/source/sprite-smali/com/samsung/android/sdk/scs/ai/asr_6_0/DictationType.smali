.class public final enum Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

.field public static final enum EMOJI:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

.field public static final enum TYPING:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->TYPING:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->EMOJI:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    const-string v1, "TYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->TYPING:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    const-string v1, "EMOJI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->EMOJI:Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->$values()[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;

    return-object v0
.end method
