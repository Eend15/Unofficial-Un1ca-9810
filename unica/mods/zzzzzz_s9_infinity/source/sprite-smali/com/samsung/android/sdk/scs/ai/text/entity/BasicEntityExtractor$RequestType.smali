.class public final enum Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum CALENDAR:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum CAPTURE:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum DEFAULT:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum GALLERY:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum REMINDER:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum SUGGESTION:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->CALENDAR:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->REMINDER:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->SUGGESTION:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->GALLERY:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->CAPTURE:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->DEFAULT:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "CALENDAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->CALENDAR:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "REMINDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->REMINDER:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "SUGGESTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->SUGGESTION:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "GALLERY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->GALLERY:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "CAPTURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->CAPTURE:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->DEFAULT:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->$values()[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    return-object v0
.end method
