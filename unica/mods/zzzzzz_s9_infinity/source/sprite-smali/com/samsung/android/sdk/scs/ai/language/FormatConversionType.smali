.class public final enum Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

.field public static final enum FORMATCONVERSION_TABLE:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

.field public static final enum FORMATCONVERSION_TRAVEL_PLAN:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->FORMATCONVERSION_TABLE:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->FORMATCONVERSION_TRAVEL_PLAN:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    const-string v1, "FORMATCONVERSION_TABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->FORMATCONVERSION_TABLE:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    const-string v1, "FORMATCONVERSION_TRAVEL_PLAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->FORMATCONVERSION_TRAVEL_PLAN:Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->$values()[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    return-object v0
.end method
