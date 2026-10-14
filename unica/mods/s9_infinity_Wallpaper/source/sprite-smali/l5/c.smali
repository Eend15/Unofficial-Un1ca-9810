.class public final Ll5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:Ll5/c;

.field public c:Ll5/a;

.field public d:Lj5/e;

.field public e:F

.field public f:F

.field public g:[Ll5/e;

.field public h:I

.field public final i:LK/o;

.field public final j:Lw0/l;

.field public final k:Lw0/l;

.field public final l:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw0/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Ll5/c;->j:Lw0/l;

    new-instance v0, Lw0/l;

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Ll5/c;->k:Lw0/l;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Ll5/c;->l:Lk5/i;

    const/4 v0, 0x0

    iput-object v0, p0, Ll5/c;->c:Ll5/a;

    iput-object v0, p0, Ll5/c;->b:Ll5/c;

    iput-object v0, p0, Ll5/c;->g:[Ll5/e;

    const/4 v1, 0x0

    iput v1, p0, Ll5/c;->h:I

    iput-object v0, p0, Ll5/c;->d:Lj5/e;

    new-instance v0, LK/o;

    invoke-direct {v0}, LK/o;-><init>()V

    iput-object v0, p0, Ll5/c;->i:LK/o;

    return-void
.end method


# virtual methods
.method public final a(Li5/a;Lk5/h;Lk5/h;)V
    .locals 12

    iget v0, p0, Ll5/c;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ll5/c;->h:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Ll5/c;->g:[Ll5/e;

    aget-object v1, v1, v0

    iget-object v2, p0, Ll5/c;->d:Lj5/e;

    iget v3, v1, Ll5/e;->a:I

    iget-object v3, p0, Ll5/c;->j:Lw0/l;

    invoke-virtual {v2, v3, p2}, Lj5/e;->b(Lw0/l;Lk5/h;)V

    iget-object v2, p0, Ll5/c;->d:Lj5/e;

    iget-object v4, p0, Ll5/c;->k:Lw0/l;

    invoke-virtual {v2, v4, p3}, Lj5/e;->b(Lw0/l;Lk5/h;)V

    iget-object v2, v1, Ll5/e;->c:Ljava/lang/Object;

    check-cast v2, Lw0/l;

    iget-object v5, v2, Lw0/l;->e:Ljava/lang/Object;

    check-cast v5, Lk5/i;

    iget-object v6, v3, Lw0/l;->e:Ljava/lang/Object;

    check-cast v6, Lk5/i;

    iget v7, v6, Lk5/i;->d:F

    iget-object v8, v4, Lw0/l;->e:Ljava/lang/Object;

    check-cast v8, Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    cmpg-float v10, v7, v9

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    iput v7, v5, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iget v7, v8, Lk5/i;->e:F

    cmpg-float v8, v6, v7

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    iput v6, v5, Lk5/i;->e:F

    iget-object v6, v2, Lw0/l;->f:Ljava/lang/Object;

    check-cast v6, Lk5/i;

    iget-object v3, v3, Lw0/l;->f:Ljava/lang/Object;

    check-cast v3, Lk5/i;

    iget v7, v3, Lk5/i;->d:F

    iget-object v4, v4, Lw0/l;->f:Ljava/lang/Object;

    check-cast v4, Lk5/i;

    iget v8, v4, Lk5/i;->d:F

    cmpl-float v9, v7, v8

    if-lez v9, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    iput v7, v6, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iget v4, v4, Lk5/i;->e:F

    cmpl-float v7, v3, v4

    if-lez v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    iput v3, v6, Lk5/i;->e:F

    iget-object v3, p3, Lk5/h;->d:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    iget-object v7, p2, Lk5/h;->d:Lk5/i;

    iget v8, v7, Lk5/i;->d:F

    sub-float/2addr v4, v8

    iget-object v8, p0, Ll5/c;->l:Lk5/i;

    iput v4, v8, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iget v4, v7, Lk5/i;->e:F

    sub-float/2addr v3, v4

    iput v3, v8, Lk5/i;->e:F

    iget v1, v1, Ll5/e;->b:I

    iget-object v3, p1, Li5/a;->a:Li5/c;

    iget-object v4, v3, Li5/c;->b:[Li5/d;

    aget-object v4, v4, v1

    iget-object v7, v4, Li5/d;->a:Lw0/l;

    iget-object v9, v7, Lw0/l;->e:Ljava/lang/Object;

    check-cast v9, Lk5/i;

    iget v10, v9, Lk5/i;->d:F

    iget v11, v5, Lk5/i;->d:F

    cmpl-float v10, v10, v11

    iget-object v11, v7, Lw0/l;->f:Ljava/lang/Object;

    check-cast v11, Lk5/i;

    if-lez v10, :cond_5

    iget v9, v9, Lk5/i;->e:F

    iget v5, v5, Lk5/i;->e:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_5

    iget v5, v6, Lk5/i;->d:F

    iget v9, v11, Lk5/i;->d:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_5

    iget v5, v6, Lk5/i;->e:F

    iget v9, v11, Lk5/i;->e:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v3, v4}, Li5/c;->e(Li5/d;)V

    iget-object v2, v2, Lw0/l;->e:Ljava/lang/Object;

    check-cast v2, Lk5/i;

    iget v4, v2, Lk5/i;->d:F

    const v5, 0x3dcccccd    # 0.1f

    sub-float/2addr v4, v5

    iget-object v7, v7, Lw0/l;->e:Ljava/lang/Object;

    check-cast v7, Lk5/i;

    iput v4, v7, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    sub-float/2addr v2, v5

    iput v2, v7, Lk5/i;->e:F

    iget v2, v6, Lk5/i;->d:F

    add-float/2addr v2, v5

    iput v2, v11, Lk5/i;->d:F

    iget v4, v6, Lk5/i;->e:F

    add-float/2addr v4, v5

    iput v4, v11, Lk5/i;->e:F

    iget v5, v8, Lk5/i;->d:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iget v8, v8, Lk5/i;->e:F

    mul-float/2addr v8, v6

    const/4 v6, 0x0

    cmpg-float v9, v5, v6

    if-gez v9, :cond_6

    iget v2, v7, Lk5/i;->d:F

    add-float/2addr v2, v5

    iput v2, v7, Lk5/i;->d:F

    goto :goto_5

    :cond_6
    add-float/2addr v2, v5

    iput v2, v11, Lk5/i;->d:F

    :goto_5
    cmpg-float v2, v8, v6

    if-gez v2, :cond_7

    iget v2, v7, Lk5/i;->e:F

    add-float/2addr v2, v8

    iput v2, v7, Lk5/i;->e:F

    goto :goto_6

    :cond_7
    add-float/2addr v4, v8

    iput v4, v11, Lk5/i;->e:F

    :goto_6
    invoke-virtual {v3, v1}, Li5/c;->d(I)V

    invoke-virtual {p1, v1}, Li5/a;->a(I)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method
