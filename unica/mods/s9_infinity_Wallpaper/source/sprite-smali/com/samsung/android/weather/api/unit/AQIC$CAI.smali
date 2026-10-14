.class public final Lcom/samsung/android/weather/api/unit/AQIC$CAI;
.super Lcom/samsung/android/weather/api/unit/AQIC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/unit/AQIC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CAI"
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/unit/AQIC$CAI;",
        "Lcom/samsung/android/weather/api/unit/AQIC;",
        "<init>",
        "()V",
        "",
        "level",
        "",
        "aboveNormal",
        "(I)Z",
        "getScaleColor",
        "(I)I",
        "La3/a;",
        "type",
        "getMaxValue",
        "(La3/a;)I",
        "Companion",
        "com/samsung/android/weather/api/unit/b",
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
.field public static final BAD:I = 0x3

.field public static final Companion:Lcom/samsung/android/weather/api/unit/b;

.field public static final GOOD:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final VERY_BAD:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/unit/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/unit/AQIC$CAI;->Companion:Lcom/samsung/android/weather/api/unit/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "CAI"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/weather/api/unit/AQIC;-><init>(Ljava/lang/String;ILF3/f;)V

    return-void
.end method


# virtual methods
.method public aboveNormal(I)Z
    .locals 0

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxValue(La3/a;)I
    .locals 1

    const-string p0, "type"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    const/16 v0, 0x1f4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/16 v0, 0x258

    :cond_2
    :goto_0
    return v0
.end method

.method public getScaleColor(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget p0, LZ2/a;->cai_cat_color_2:I

    goto :goto_0

    :cond_0
    sget p0, LZ2/a;->cai_cat_color_4:I

    goto :goto_0

    :cond_1
    sget p0, LZ2/a;->cai_cat_color_3:I

    goto :goto_0

    :cond_2
    sget p0, LZ2/a;->cai_cat_color_2:I

    goto :goto_0

    :cond_3
    sget p0, LZ2/a;->cai_cat_color_1:I

    :goto_0
    return p0
.end method
