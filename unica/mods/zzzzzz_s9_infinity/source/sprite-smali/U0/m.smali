.class public final LU0/m;
.super LU0/q;
.source "SourceFile"


# instance fields
.field public final a:LU0/o;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(LU0/o;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/m;->a:LU0/o;

    iput p2, p0, LU0/m;->b:F

    iput p3, p0, LU0/m;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, LU0/m;->a:LU0/o;

    iget v1, v0, LU0/o;->c:F

    iget v2, p0, LU0/m;->c:F

    sub-float/2addr v1, v2

    iget v0, v0, LU0/o;->b:F

    iget p0, p0, LU0/m;->b:F

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
