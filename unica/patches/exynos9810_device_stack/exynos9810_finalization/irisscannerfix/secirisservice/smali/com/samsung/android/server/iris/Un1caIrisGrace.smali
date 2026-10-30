.class final Lcom/samsung/android/server/iris/Un1caIrisGrace;
.super Ljava/lang/Object;
.source "Un1caIrisGrace.java"


# static fields
.field private static final ENROLL_IR_MS:J = 0xea60L

.field private static final MAX_GAIN:I = 0x14

.field private static final MAX_SHUTTER_NS:J = 0x15ef3c0L

.field private static final MSG_EYE_SAFETY_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisGrace"

.field private static extended:Z

.field private static timerStart:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clampExposure(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 36
    if-eqz p0, :cond_8b

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_c

    goto/16 :goto_8b

    .line 37
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_86

    aget-object v5, p0, v4

    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_83

    .line 40
    :cond_25
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 41
    if-lez v6, :cond_30

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_31

    :cond_30
    move-object v7, v5

    .line 42
    :goto_31
    const-string v8, ""

    if-lez v6, :cond_3c

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_3c
    move-object v5, v8

    .line 44
    :goto_3d
    :try_start_3d
    const-string v9, "shutterspeed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/32 v11, 0x15ef3c0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_6d

    .line 45
    :cond_55
    const-string v9, "gain"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x14

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_6b} :catch_6c

    goto :goto_6d

    .line 46
    :catch_6c
    move-exception v9

    :cond_6d
    :goto_6d
    nop

    .line 47
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez v6, :cond_76

    const-string v8, "="

    :cond_76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 49
    :cond_86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_8b
    :goto_8b
    return-object p0
.end method

.method static onEnrollProgress(Landroid/os/Handler;)V
    .registers 6

    .line 60
    sget-boolean v0, Lcom/samsung/android/server/iris/Un1caIrisGrace;->extended:Z

    if-nez v0, :cond_31

    if-nez p0, :cond_7

    goto :goto_31

    .line 62
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 63
    :cond_f
    sget-wide v1, Lcom/samsung/android/server/iris/Un1caIrisGrace;->timerStart:J

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 64
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_21

    return-void

    .line 65
    :cond_21
    sput-boolean v0, Lcom/samsung/android/server/iris/Un1caIrisGrace;->extended:Z

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    const-string p0, "UN1CA-IrisGrace"

    const-string v0, "registration scan window extended to 60000 ms"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 60
    :cond_31
    :goto_31
    return-void
.end method

.method static onTimerStart()V
    .registers 2

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/iris/Un1caIrisGrace;->timerStart:J

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/iris/Un1caIrisGrace;->extended:Z

    .line 56
    return-void
.end method
