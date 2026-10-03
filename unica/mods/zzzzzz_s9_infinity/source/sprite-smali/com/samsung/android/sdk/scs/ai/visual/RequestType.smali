.class public final enum Lcom/samsung/android/sdk/scs/ai/visual/RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/visual/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

.field public static final enum CLOUD:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

.field public static final enum ONDEVICE:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    const-string v1, "CLOUD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    const-string v1, "ONDEVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->$values()[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/RequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    return-object v0
.end method
