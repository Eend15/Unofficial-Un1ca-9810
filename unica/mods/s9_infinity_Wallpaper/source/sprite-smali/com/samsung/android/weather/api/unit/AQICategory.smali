.class public final enum Lcom/samsung/android/weather/api/unit/AQICategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/weather/api/unit/AQICategory;",
        ">;"
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/unit/AQICategory;",
        "",
        "category",
        "Lcom/samsung/android/weather/api/unit/AQIC;",
        "<init>",
        "(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V",
        "getCategory",
        "()Lcom/samsung/android/weather/api/unit/AQIC;",
        "NONE",
        "CAI",
        "ATMO",
        "CAQI",
        "DAQI",
        "EPA",
        "HJ6332012",
        "IMECA",
        "NAQI",
        "UBA",
        "weather-common-1.0.10_release"
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

.field private static final synthetic $VALUES:[Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum ATMO:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum CAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum DAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum EPA:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum IMECA:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum NAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum NONE:Lcom/samsung/android/weather/api/unit/AQICategory;

.field public static final enum UBA:Lcom/samsung/android/weather/api/unit/AQICategory;


# instance fields
.field private final category:Lcom/samsung/android/weather/api/unit/AQIC;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/weather/api/unit/AQICategory;
    .locals 10

    sget-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->NONE:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v1, Lcom/samsung/android/weather/api/unit/AQICategory;->CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v2, Lcom/samsung/android/weather/api/unit/AQICategory;->ATMO:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->CAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v4, Lcom/samsung/android/weather/api/unit/AQICategory;->DAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v5, Lcom/samsung/android/weather/api/unit/AQICategory;->EPA:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v6, Lcom/samsung/android/weather/api/unit/AQICategory;->HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v7, Lcom/samsung/android/weather/api/unit/AQICategory;->IMECA:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v8, Lcom/samsung/android/weather/api/unit/AQICategory;->NAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    sget-object v9, Lcom/samsung/android/weather/api/unit/AQICategory;->UBA:Lcom/samsung/android/weather/api/unit/AQICategory;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/weather/api/unit/AQICategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$NONE;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$NONE;-><init>()V

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->NONE:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$CAI;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$CAI;-><init>()V

    const-string v2, "CAI"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$ATMO;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$ATMO;-><init>()V

    const-string v2, "ATMO"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->ATMO:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$CAQI;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$CAQI;-><init>()V

    const-string v2, "CAQI"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->CAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$DAQI;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$DAQI;-><init>()V

    const-string v2, "DAQI"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->DAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$EPA;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$EPA;-><init>()V

    const-string v2, "EPA"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->EPA:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$HJ6332012;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$HJ6332012;-><init>()V

    const-string v2, "HJ6332012"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$IMECA;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$IMECA;-><init>()V

    const-string v2, "IMECA"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->IMECA:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$NAQI;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$NAQI;-><init>()V

    const-string v2, "NAQI"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->NAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    new-instance v1, Lcom/samsung/android/weather/api/unit/AQIC$UBA;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/unit/AQIC$UBA;-><init>()V

    const-string v2, "UBA"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/unit/AQICategory;-><init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->UBA:Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-static {}, Lcom/samsung/android/weather/api/unit/AQICategory;->$values()[Lcom/samsung/android/weather/api/unit/AQICategory;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->$VALUES:[Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->$ENTRIES:Lx3/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/weather/api/unit/AQIC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/weather/api/unit/AQIC;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/weather/api/unit/AQICategory;->category:Lcom/samsung/android/weather/api/unit/AQIC;

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

    sget-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->$ENTRIES:Lx3/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/weather/api/unit/AQICategory;
    .locals 1

    const-class v0, Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/unit/AQICategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/weather/api/unit/AQICategory;
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/unit/AQICategory;->$VALUES:[Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/weather/api/unit/AQICategory;

    return-object v0
.end method


# virtual methods
.method public final getCategory()Lcom/samsung/android/weather/api/unit/AQIC;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/unit/AQICategory;->category:Lcom/samsung/android/weather/api/unit/AQIC;

    return-object p0
.end method
