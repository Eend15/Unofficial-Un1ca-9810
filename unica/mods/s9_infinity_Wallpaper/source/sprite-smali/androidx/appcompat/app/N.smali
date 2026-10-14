.class public final Landroidx/appcompat/app/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Landroidx/appcompat/app/N;


# instance fields
.field public a:I

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/appcompat/app/N;->a:I

    const/4 v1, 0x0

    const-string v2, "TiltClockResourceInfo"

    if-nez p1, :cond_0

    const-string p0, "service settings is NULL"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v3, "bg_color"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "KEY_BG_COLOR is NULL"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/N;->a:I

    goto :goto_0

    :cond_2
    iput v0, p0, Landroidx/appcompat/app/N;->a:I

    const-string v0, "TiltClockResourceInfo : KEY_BG_COLOR is NULL or EMPTY"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NullPointerException KEY_BG_COLOR = "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string v0, "IllegalArgumentException KEY_BG_COLOR = "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "2023-02-01 12:45"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "timeStringConvertToLong: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/app/N;->c:J

    const-string v2, "timestamp"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/app/N;->b:J

    return-void
.end method


# virtual methods
.method public a(DDJ)V
    .locals 15

    move-object v0, p0

    const-wide v1, 0xdc6d62da00L

    sub-long v3, p5, v1

    long-to-float v3, v3

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v3, v4

    const v4, 0x3c8ceb25

    mul-float/2addr v4, v3

    const v5, 0x40c7ae92

    add-float/2addr v4, v5

    float-to-double v5, v4

    const-wide v7, 0x3fa11c5fc0000000L    # 0.03341960161924362

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v11, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double/2addr v7, v11

    add-double/2addr v7, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v11, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double/2addr v9, v11

    add-double/2addr v9, v7

    const-wide v7, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v9, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v9, v7

    move-wide/from16 v7, p3

    neg-double v7, v7

    const-wide v11, 0x4076800000000000L    # 360.0

    div-double/2addr v7, v11

    const v4, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v3, v4

    float-to-double v11, v3

    sub-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-float v3, v11

    add-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v7

    const-wide v7, 0x3f75b573eab367a1L    # 0.0053

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v7, -0x4083bcd35a858794L    # -0.0069

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    const-wide v7, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v7, v7, p1

    const-wide v9, -0x4045311600000000L    # -0.10471975803375244

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    sub-double/2addr v9, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    div-double/2addr v9, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v9, v5

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    if-ltz v5, :cond_0

    iput v6, v0, Landroidx/appcompat/app/N;->a:I

    iput-wide v7, v0, Landroidx/appcompat/app/N;->b:J

    iput-wide v7, v0, Landroidx/appcompat/app/N;->c:J

    return-void

    :cond_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpg-double v5, v9, v11

    const/4 v11, 0x0

    if-gtz v5, :cond_1

    iput v11, v0, Landroidx/appcompat/app/N;->a:I

    iput-wide v7, v0, Landroidx/appcompat/app/N;->b:J

    iput-wide v7, v0, Landroidx/appcompat/app/N;->c:J

    return-void

    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v9

    double-to-float v5, v7

    float-to-double v7, v5

    add-double v9, v3, v7

    const-wide v12, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v9, v1

    iput-wide v9, v0, Landroidx/appcompat/app/N;->b:J

    sub-double/2addr v3, v7

    mul-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/appcompat/app/N;->c:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_2

    iget-wide v1, v0, Landroidx/appcompat/app/N;->b:J

    cmp-long v1, v1, p5

    if-lez v1, :cond_2

    iput v11, v0, Landroidx/appcompat/app/N;->a:I

    goto :goto_0

    :cond_2
    iput v6, v0, Landroidx/appcompat/app/N;->a:I

    :goto_0
    return-void
.end method
