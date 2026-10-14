.class public final Lcom/samsung/android/weather/api/unit/AQIC$NONE;
.super Lcom/samsung/android/weather/api/unit/AQIC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/unit/AQIC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NONE"
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/unit/AQIC$NONE;",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/weather/api/unit/AQIC;-><init>(Ljava/lang/String;ILF3/f;)V

    return-void
.end method


# virtual methods
.method public aboveNormal(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxValue(La3/a;)I
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getScaleColor(I)I
    .locals 0

    sget p0, LZ2/a;->cai_cat_color_2:I

    return p0
.end method
