.class public abstract Lk5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x40ebe3fbb621829bL    # 57119.86598277577

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lk5/e;->a:I

    const v0, 0x401de9e7

    sput v0, Lk5/e;->b:F

    return-void
.end method
