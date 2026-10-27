.class public final Lio/mesalabs/unica/camera/ApertureMode;
.super Ljava/lang/Object;
.source "ApertureMode.java"


# static fields
.field public static final AUTO:I = 0x0

.field public static final F15:I = 0x1

.field public static final F24:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static label(ILjava/lang/Float;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 11
    const-string p0, "AUTO"

    return-object p0

    :cond_5
    if-nez p1, :cond_a

    .line 12
    const-string p0, "F \u2014"

    return-object p0

    :cond_a
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "F%.1f"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 6
    const-string p0, "AUTO"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "F1.5"

    return-object p0

    :cond_b
    const-string p0, "F2.4"

    return-object p0
.end method

.method public static next(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x1

    .line 5
    rem-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static request(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x1

    if-ne p0, p1, :cond_9

    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_c

    :cond_9
    const p0, 0x4019999a    # 2.4f

    .line 8
    :goto_c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
