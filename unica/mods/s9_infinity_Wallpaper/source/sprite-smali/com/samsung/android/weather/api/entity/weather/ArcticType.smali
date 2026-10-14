.class public final enum Lcom/samsung/android/weather/api/entity/weather/ArcticType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/weather/api/entity/weather/ArcticType;",
        ">;"
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/ArcticType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "WHITE_NIGHT",
        "POLAR_NIGHT",
        "weather-api-1.0.46_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lx3/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/weather/api/entity/weather/ArcticType;

.field public static final enum NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

.field public static final enum POLAR_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

.field public static final enum WHITE_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/weather/api/entity/weather/ArcticType;
    .locals 3

    sget-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    sget-object v1, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->WHITE_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    sget-object v2, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->POLAR_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/weather/api/entity/weather/ArcticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    const-string v1, "WHITE_NIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/weather/api/entity/weather/ArcticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->WHITE_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    const-string v1, "POLAR_NIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/weather/api/entity/weather/ArcticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->POLAR_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    invoke-static {}, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->$values()[Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->$VALUES:[Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->$ENTRIES:Lx3/a;

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

.method public static getEntries()Lx3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->$ENTRIES:Lx3/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/ArcticType;
    .locals 1

    const-class v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/weather/api/entity/weather/ArcticType;
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->$VALUES:[Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    return-object v0
.end method
