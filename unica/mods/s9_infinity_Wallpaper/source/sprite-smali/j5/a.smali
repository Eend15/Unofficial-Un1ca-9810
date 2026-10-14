.class public final Lj5/a;
.super Lj5/e;
.source "SourceFile"


# instance fields
.field public final c:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lj5/e;-><init>(I)V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/a;->c:Lk5/i;

    const/4 v0, 0x0

    iput v0, p0, Lj5/e;->b:F

    return-void
.end method


# virtual methods
.method public final a()Lj5/e;
    .locals 4

    new-instance v0, Lj5/a;

    invoke-direct {v0}, Lj5/a;-><init>()V

    iget-object v1, p0, Lj5/a;->c:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iget-object v3, v0, Lj5/a;->c:Lk5/i;

    iput v2, v3, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v3, Lk5/i;->e:F

    iget p0, p0, Lj5/e;->b:F

    iput p0, v0, Lj5/e;->b:F

    return-object v0
.end method

.method public final b(Lw0/l;Lk5/h;)V
    .locals 6

    iget-object v0, p2, Lk5/h;->e:Lk5/d;

    iget v1, v0, Lk5/d;->e:F

    iget-object v2, p0, Lj5/a;->c:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    mul-float v4, v1, v3

    iget v0, v0, Lk5/d;->d:F

    iget v2, v2, Lk5/i;->e:F

    mul-float v5, v0, v2

    sub-float/2addr v4, v5

    iget-object p2, p2, Lk5/h;->d:Lk5/i;

    iget v5, p2, Lk5/i;->d:F

    add-float/2addr v4, v5

    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget p2, p2, Lk5/i;->e:F

    add-float/2addr v1, p2

    iget-object p2, p1, Lw0/l;->e:Ljava/lang/Object;

    check-cast p2, Lk5/i;

    iget p0, p0, Lj5/e;->b:F

    sub-float v0, v4, p0

    iput v0, p2, Lk5/i;->d:F

    sub-float v0, v1, p0

    iput v0, p2, Lk5/i;->e:F

    add-float/2addr v4, p0

    iget-object p1, p1, Lw0/l;->f:Ljava/lang/Object;

    check-cast p1, Lk5/i;

    iput v4, p1, Lk5/i;->d:F

    add-float/2addr v1, p0

    iput v1, p1, Lk5/i;->e:F

    return-void
.end method

.method public final c(Lj5/c;F)V
    .locals 3

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, v0

    iget v0, p0, Lj5/e;->b:F

    mul-float/2addr p2, v0

    mul-float/2addr p2, v0

    iput p2, p1, Lj5/c;->a:F

    iget-object p0, p0, Lj5/a;->c:Lk5/i;

    iget v1, p0, Lk5/i;->d:F

    iget-object v2, p1, Lj5/c;->b:Lk5/i;

    iput v1, v2, Lk5/i;->d:F

    iget v1, p0, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lk5/i;->d:F

    mul-float/2addr v0, v0

    iget p0, p0, Lk5/i;->e:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    add-float/2addr p0, v1

    mul-float/2addr p0, p2

    iput p0, p1, Lj5/c;->c:F

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj5/a;->a()Lj5/e;

    move-result-object p0

    return-object p0
.end method
