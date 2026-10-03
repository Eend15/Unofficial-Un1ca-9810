.class public final Lv1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(J)[I
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {}, Lv1/h;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lv1/h;->c(J)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lv1/h;->d(Lq1/a;)V

    :cond_0
    iget-wide v3, v0, Lv1/h;->a:J

    iget-wide v5, v0, Lv1/h;->b:J

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getIndex: currentTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " sunriseTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sunsetTime="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "DailyGradientIndexProvider"

    invoke-static {v6, v3, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v7, v0, Lv1/h;->c:J

    iget-wide v9, v0, Lv1/h;->d:J

    cmp-long v3, v1, v9

    const/4 v5, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x2

    if-gtz v3, :cond_1

    cmp-long v3, v7, v1

    if-gtz v3, :cond_1

    new-array v0, v12, [I

    aput v11, v0, v4

    aput v4, v0, v5

    move v1, v5

    move-object v3, v6

    goto/16 :goto_1

    :cond_1
    iget-wide v13, v0, Lv1/h;->e:J

    move-object v3, v6

    iget-wide v5, v0, Lv1/h;->f:J

    cmp-long v16, v1, v5

    const/4 v15, 0x5

    if-gtz v16, :cond_2

    cmp-long v17, v13, v1

    if-gtz v17, :cond_2

    new-array v0, v12, [I

    aput v15, v0, v4

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    move v1, v2

    goto/16 :goto_1

    :cond_2
    const-wide/16 v17, 0x1

    add-long v19, v9, v17

    cmp-long v21, v1, v13

    if-gez v21, :cond_3

    cmp-long v19, v19, v1

    if-gtz v19, :cond_3

    sub-long/2addr v13, v9

    int-to-long v5, v15

    div-long v5, v13, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getIndex: dayTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " dayTimeInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v7, v0, Lv1/h;->d:J

    sub-long v0, v1, v7

    div-long/2addr v0, v5

    add-long v0, v0, v17

    long-to-int v0, v0

    add-int/lit8 v1, v0, -0x1

    new-array v2, v12, [I

    aput v1, v2, v4

    const/4 v1, 0x1

    aput v0, v2, v1

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_3
    const v0, 0x5265c00

    int-to-long v9, v0

    add-long v13, v7, v9

    sub-long/2addr v13, v5

    if-gez v16, :cond_4

    sub-long/2addr v5, v9

    sub-long v13, v7, v5

    :cond_4
    const/4 v0, 0x3

    int-to-long v7, v0

    div-long v7, v13, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "getIndex: nightTime="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " nightTimeInterval="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long v0, v1, v5

    div-long/2addr v0, v7

    const/4 v2, 0x7

    int-to-long v5, v2

    add-long/2addr v0, v5

    long-to-int v0, v0

    add-int/lit8 v1, v0, -0x1

    new-array v2, v12, [I

    aput v1, v2, v4

    const/4 v1, 0x1

    aput v0, v2, v1

    goto :goto_0

    :goto_1
    aget v2, v0, v4

    if-ltz v2, :cond_5

    if-gt v2, v11, :cond_5

    aget v5, v0, v1

    if-ltz v5, :cond_5

    if-le v5, v11, :cond_6

    :cond_5
    aget v0, v0, v1

    const-string v5, "index is calculated wrong currIdx="

    const-string v6, " prevIdx="

    invoke-static {v5, v6, v0, v2}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v12, [I

    aput v11, v0, v4

    aput v4, v0, v1

    :cond_6
    aget v2, v0, v4

    aget v1, v0, v1

    const-string v5, "getIndex: previousIdx="

    const-string v6, " currentIdx="

    invoke-static {v5, v6, v2, v1}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(J)Z
    .locals 10

    iget-wide v0, p0, Lv1/h;->a:J

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    iget-wide v2, p0, Lv1/h;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-lez v6, :cond_0

    iget-wide v8, p0, Lv1/h;->b:J

    cmp-long p0, v8, v4

    if-lez p0, :cond_0

    cmp-long p0, v2, p1

    if-lez p0, :cond_0

    invoke-static {v1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v7

    :goto_0
    const-string p1, "isValidWeatherData: isValid="

    invoke-static {p1, p0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    const-string v0, "DailyGradientIndexProvider"

    invoke-static {v0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final d(Lq1/a;)V
    .locals 8

    invoke-static {}, Lv1/h;->b()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWeatherData: todayStartTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " currentWeatherData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DailyGradientIndexProvider"

    invoke-static {v5, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-wide v6, p1, Lq1/a;->h:J

    iput-wide v6, p0, Lv1/h;->a:J

    iget-wide v6, p1, Lq1/a;->i:J

    iput-wide v6, p0, Lv1/h;->b:J

    :cond_0
    invoke-virtual {p0, v0, v1}, Lv1/h;->c(J)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "updateGradientIndex: using default values for sunrise and sunset times"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0x1499700

    int-to-long v2, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lv1/h;->a:J

    const p1, 0x3dcc500

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lv1/h;->b:J

    :cond_1
    iget-wide v0, p0, Lv1/h;->a:J

    const p1, 0x1b7740

    int-to-long v2, p1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lv1/h;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lv1/h;->d:J

    iget-wide v0, p0, Lv1/h;->b:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lv1/h;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lv1/h;->f:J

    return-void
.end method
