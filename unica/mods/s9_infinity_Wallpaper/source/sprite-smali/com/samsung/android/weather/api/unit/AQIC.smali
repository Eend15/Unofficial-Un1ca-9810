.class public abstract Lcom/samsung/android/weather/api/unit/AQIC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/unit/AQIC$ATMO;,
        Lcom/samsung/android/weather/api/unit/AQIC$CAI;,
        Lcom/samsung/android/weather/api/unit/AQIC$CAQI;,
        Lcom/samsung/android/weather/api/unit/AQIC$DAQI;,
        Lcom/samsung/android/weather/api/unit/AQIC$EPA;,
        Lcom/samsung/android/weather/api/unit/AQIC$HJ6332012;,
        Lcom/samsung/android/weather/api/unit/AQIC$IMECA;,
        Lcom/samsung/android/weather/api/unit/AQIC$NAQI;,
        Lcom/samsung/android/weather/api/unit/AQIC$NONE;,
        Lcom/samsung/android/weather/api/unit/AQIC$UBA;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\n\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\u0019\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u0082\u0001\n\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\u00a8\u0006\""
    }
    d2 = {
        "Lcom/samsung/android/weather/api/unit/AQIC;",
        "",
        "",
        "name",
        "",
        "levelRange",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Ljava/lang/String;",
        "getName",
        "()Ljava/lang/String;",
        "I",
        "getLevelRange",
        "()I",
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
        "Lcom/samsung/android/weather/api/unit/AQIC$ATMO;",
        "Lcom/samsung/android/weather/api/unit/AQIC$CAI;",
        "Lcom/samsung/android/weather/api/unit/AQIC$CAQI;",
        "Lcom/samsung/android/weather/api/unit/AQIC$DAQI;",
        "Lcom/samsung/android/weather/api/unit/AQIC$EPA;",
        "Lcom/samsung/android/weather/api/unit/AQIC$HJ6332012;",
        "Lcom/samsung/android/weather/api/unit/AQIC$IMECA;",
        "Lcom/samsung/android/weather/api/unit/AQIC$NAQI;",
        "Lcom/samsung/android/weather/api/unit/AQIC$NONE;",
        "Lcom/samsung/android/weather/api/unit/AQIC$UBA;",
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


# instance fields
.field private final levelRange:I

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/weather/api/unit/AQIC;->name:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/samsung/android/weather/api/unit/AQIC;->levelRange:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILF3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/weather/api/unit/AQIC;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract synthetic aboveNormal(I)Z
.end method

.method public final getLevelRange()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/unit/AQIC;->levelRange:I

    return p0
.end method

.method public abstract synthetic getMaxValue(La3/a;)I
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/unit/AQIC;->name:Ljava/lang/String;

    return-object p0
.end method

.method public abstract synthetic getScaleColor(I)I
.end method
