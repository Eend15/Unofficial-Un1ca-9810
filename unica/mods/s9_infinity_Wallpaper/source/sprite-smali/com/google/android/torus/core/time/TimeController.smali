.class public final Lcom/google/android/torus/core/time/TimeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/torus/core/time/TimeController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0008R$\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/google/android/torus/core/time/TimeController;",
        "",
        "<init>",
        "()V",
        "",
        "currentTimeMillis",
        "Lq3/m;",
        "resetDeltaTime",
        "(J)V",
        "resetElapsedTimeIfNeeded",
        "updateDeltaTime",
        "",
        "value",
        "elapsedTime",
        "F",
        "getElapsedTime",
        "()F",
        "deltaTimeMillis",
        "J",
        "getDeltaTimeMillis",
        "()J",
        "lastTimeMillis",
        "Companion",
        "torus_release"
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
.field public static final Companion:Lcom/google/android/torus/core/time/TimeController$Companion;

.field private static final MILLIS_TO_SECONDS:F = 0.001f

.field private static final MIN_THRESHOLD_OVERFLOW:F


# instance fields
.field private deltaTimeMillis:J

.field private elapsedTime:F

.field private lastTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/torus/core/time/TimeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/torus/core/time/TimeController$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/google/android/torus/core/time/TimeController;->Companion:Lcom/google/android/torus/core/time/TimeController$Companion;

    const v0, 0x5e3ce507

    sput v0, Lcom/google/android/torus/core/time/TimeController;->MIN_THRESHOLD_OVERFLOW:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime$default(Lcom/google/android/torus/core/time/TimeController;JILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic resetDeltaTime$default(Lcom/google/android/torus/core/time/TimeController;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime(J)V

    return-void
.end method

.method public static synthetic updateDeltaTime$default(Lcom/google/android/torus/core/time/TimeController;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/torus/core/time/TimeController;->updateDeltaTime(J)V

    return-void
.end method


# virtual methods
.method public final getDeltaTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/torus/core/time/TimeController;->deltaTimeMillis:J

    return-wide v0
.end method

.method public final getElapsedTime()F
    .locals 0

    iget p0, p0, Lcom/google/android/torus/core/time/TimeController;->elapsedTime:F

    return p0
.end method

.method public final resetDeltaTime(J)V
    .locals 2

    iput-wide p1, p0, Lcom/google/android/torus/core/time/TimeController;->lastTimeMillis:J

    iget p1, p0, Lcom/google/android/torus/core/time/TimeController;->elapsedTime:F

    iget-wide v0, p0, Lcom/google/android/torus/core/time/TimeController;->deltaTimeMillis:J

    long-to-float p2, v0

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/torus/core/time/TimeController;->elapsedTime:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/torus/core/time/TimeController;->deltaTimeMillis:J

    return-void
.end method

.method public final resetElapsedTimeIfNeeded()V
    .locals 2

    iget v0, p0, Lcom/google/android/torus/core/time/TimeController;->elapsedTime:F

    sget v1, Lcom/google/android/torus/core/time/TimeController;->MIN_THRESHOLD_OVERFLOW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/torus/core/time/TimeController;->elapsedTime:F

    :cond_0
    return-void
.end method

.method public final updateDeltaTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/torus/core/time/TimeController;->lastTimeMillis:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/torus/core/time/TimeController;->deltaTimeMillis:J

    return-void
.end method
