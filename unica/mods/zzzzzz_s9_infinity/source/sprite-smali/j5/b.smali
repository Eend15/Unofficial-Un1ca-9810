.class public final Lj5/b;
.super Lj5/e;
.source "SourceFile"


# instance fields
.field public final c:Lk5/i;

.field public final d:Lk5/i;

.field public final e:Lk5/i;

.field public final f:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lj5/e;-><init>(I)V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/b;->c:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/b;->d:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/b;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/b;->f:Lk5/i;

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lj5/e;->b:F

    return-void
.end method


# virtual methods
.method public final a()Lj5/e;
    .locals 4

    new-instance v0, Lj5/b;

    invoke-direct {v0}, Lj5/b;-><init>()V

    iget v1, p0, Lj5/e;->b:F

    iput v1, v0, Lj5/e;->b:F

    iget-object v1, v0, Lj5/b;->e:Lk5/i;

    iget-object v2, p0, Lj5/b;->e:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iget-object v1, v0, Lj5/b;->c:Lk5/i;

    iget-object v2, p0, Lj5/b;->c:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iget-object v1, v0, Lj5/b;->d:Lk5/i;

    iget-object v2, p0, Lj5/b;->d:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iget-object v1, v0, Lj5/b;->f:Lk5/i;

    iget-object p0, p0, Lj5/b;->f:Lk5/i;

    iget v2, p0, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget p0, p0, Lk5/i;->e:F

    iput p0, v1, Lk5/i;->e:F

    return-object v0
.end method

.method public final b(Lw0/l;Lk5/h;)V
    .locals 10

    iget-object v0, p1, Lw0/l;->e:Ljava/lang/Object;

    check-cast v0, Lk5/i;

    iget-object v1, p2, Lk5/h;->e:Lk5/d;

    iget v2, v1, Lk5/d;->e:F

    iget-object v3, p0, Lj5/b;->c:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    mul-float v5, v2, v4

    iget v1, v1, Lk5/d;->d:F

    iget v3, v3, Lk5/i;->e:F

    mul-float v6, v1, v3

    sub-float/2addr v5, v6

    iget-object p2, p2, Lk5/h;->d:Lk5/i;

    iget v6, p2, Lk5/i;->d:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v1

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    iget p2, p2, Lk5/i;->e:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lj5/b;->d:Lk5/i;

    iget v7, v4, Lk5/i;->d:F

    mul-float v8, v2, v7

    iget v4, v4, Lk5/i;->e:F

    mul-float v9, v1, v4

    sub-float/2addr v8, v9

    add-float/2addr v8, v6

    mul-float/2addr v1, v7

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    add-float/2addr v2, p2

    cmpg-float p2, v5, v8

    if-gez p2, :cond_0

    move p2, v5

    goto :goto_0

    :cond_0
    move p2, v8

    :goto_0
    iput p2, v0, Lk5/i;->d:F

    cmpg-float p2, v3, v2

    if-gez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iput p2, v0, Lk5/i;->e:F

    cmpl-float p2, v5, v8

    if-lez p2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v8

    :goto_2
    iget-object p1, p1, Lw0/l;->f:Ljava/lang/Object;

    check-cast p1, Lk5/i;

    iput v5, p1, Lk5/i;->d:F

    cmpl-float p2, v3, v2

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iput v3, p1, Lk5/i;->e:F

    iget p2, v0, Lk5/i;->d:F

    iget p0, p0, Lj5/e;->b:F

    sub-float/2addr p2, p0

    iput p2, v0, Lk5/i;->d:F

    iget p2, v0, Lk5/i;->e:F

    sub-float/2addr p2, p0

    iput p2, v0, Lk5/i;->e:F

    iget p2, p1, Lk5/i;->d:F

    add-float/2addr p2, p0

    iput p2, p1, Lk5/i;->d:F

    iget p2, p1, Lk5/i;->e:F

    add-float/2addr p2, p0

    iput p2, p1, Lk5/i;->e:F

    return-void
.end method

.method public final c(Lj5/c;F)V
    .locals 3

    const/4 p2, 0x0

    iput p2, p1, Lj5/c;->a:F

    iget-object v0, p0, Lj5/b;->c:Lk5/i;

    iget-object v1, p1, Lj5/c;->b:Lk5/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v1, Lk5/i;->e:F

    iget-object p0, p0, Lj5/b;->d:Lk5/i;

    invoke-virtual {v1, p0}, Lk5/i;->b(Lk5/i;)V

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-virtual {v1, p0}, Lk5/i;->h(F)V

    iput p2, p1, Lj5/c;->c:F

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj5/b;->a()Lj5/e;

    move-result-object p0

    return-object p0
.end method
