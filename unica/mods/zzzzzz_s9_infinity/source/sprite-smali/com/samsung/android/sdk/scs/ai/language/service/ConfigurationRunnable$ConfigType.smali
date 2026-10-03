.class public final enum Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

.field public static final enum APP:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

.field public static final enum LLM:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

.field public static final enum LPD:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

.field public static final enum SAFE:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->APP:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LPD:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LLM:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->SAFE:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->APP:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    const-string v1, "LPD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LPD:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    const-string v1, "LLM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LLM:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    const-string v1, "SAFE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->SAFE:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->$values()[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    return-object v0
.end method
