.class public final Lh5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk5/i;

.field public final b:Lk5/i;

.field public c:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/j;->a:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/j;->b:Lk5/i;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/j;->a:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/j;->b:Lk5/i;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lm5/b;Lk5/h;Lk5/h;I)V
    .locals 11

    iget-object v0, p2, Lk5/h;->e:Lk5/d;

    iget-object v1, p3, Lk5/h;->e:Lk5/d;

    iget-object v2, p1, Lm5/b;->a:[Lk5/i;

    aget-object p4, v2, p4

    iget v2, p1, Lm5/b;->l:I

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v2

    iget-object v3, p0, Lh5/j;->b:Lk5/i;

    iget-object v4, p0, Lh5/j;->a:Lk5/i;

    iget-object p2, p2, Lk5/h;->d:Lk5/i;

    iget-object p3, p3, Lk5/h;->d:Lk5/i;

    iget-object v5, p1, Lm5/b;->c:Lk5/i;

    if-eqz v2, :cond_2

    iget-object v6, p1, Lm5/b;->b:Lk5/i;

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1

    const/4 v7, 0x2

    if-eq v2, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v2, v1, Lk5/d;->e:F

    iget v7, v6, Lk5/i;->d:F

    mul-float/2addr v7, v2

    iget v1, v1, Lk5/d;->d:F

    iget v8, v6, Lk5/i;->e:F

    mul-float v9, v1, v8

    sub-float/2addr v7, v9

    iput v7, v4, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->d:F

    mul-float/2addr v6, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v6

    iput v8, v4, Lk5/i;->e:F

    iget v6, v5, Lk5/i;->d:F

    mul-float v9, v2, v6

    iget v5, v5, Lk5/i;->e:F

    mul-float v10, v1, v5

    sub-float/2addr v9, v10

    iget v10, p3, Lk5/i;->d:F

    add-float/2addr v9, v10

    mul-float/2addr v1, v6

    mul-float/2addr v2, v5

    add-float/2addr v2, v1

    iget p3, p3, Lk5/i;->e:F

    add-float/2addr v2, p3

    iget p3, v0, Lk5/d;->e:F

    iget v1, p4, Lk5/i;->d:F

    mul-float v5, p3, v1

    iget v0, v0, Lk5/d;->d:F

    iget p4, p4, Lk5/i;->e:F

    mul-float v6, v0, p4

    sub-float/2addr v5, v6

    iget v6, p2, Lk5/i;->d:F

    add-float/2addr v5, v6

    mul-float/2addr v0, v1

    mul-float/2addr p3, p4

    add-float/2addr p3, v0

    iget p2, p2, Lk5/i;->e:F

    add-float/2addr p3, p2

    sub-float p2, v5, v9

    sub-float p4, p3, v2

    mul-float/2addr p2, v7

    mul-float/2addr p4, v8

    add-float/2addr p4, p2

    iget p2, p1, Lm5/b;->m:F

    sub-float/2addr p4, p2

    iget p1, p1, Lm5/b;->n:F

    sub-float/2addr p4, p1

    iput p4, p0, Lh5/j;->c:F

    iput v5, v3, Lk5/i;->d:F

    iput p3, v3, Lk5/i;->e:F

    iget p0, v4, Lk5/i;->d:F

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p0, p1

    iput p0, v4, Lk5/i;->d:F

    iget p0, v4, Lk5/i;->e:F

    mul-float/2addr p0, p1

    iput p0, v4, Lk5/i;->e:F

    goto/16 :goto_0

    :cond_1
    iget v2, v0, Lk5/d;->e:F

    iget v7, v6, Lk5/i;->d:F

    mul-float/2addr v7, v2

    iget v0, v0, Lk5/d;->d:F

    iget v8, v6, Lk5/i;->e:F

    mul-float v9, v0, v8

    sub-float/2addr v7, v9

    iput v7, v4, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->d:F

    mul-float/2addr v6, v0

    mul-float/2addr v8, v2

    add-float/2addr v8, v6

    iput v8, v4, Lk5/i;->e:F

    iget v4, v5, Lk5/i;->d:F

    mul-float v6, v2, v4

    iget v5, v5, Lk5/i;->e:F

    mul-float v9, v0, v5

    sub-float/2addr v6, v9

    iget v9, p2, Lk5/i;->d:F

    add-float/2addr v6, v9

    mul-float/2addr v0, v4

    mul-float/2addr v2, v5

    add-float/2addr v2, v0

    iget p2, p2, Lk5/i;->e:F

    add-float/2addr v2, p2

    iget p2, v1, Lk5/d;->e:F

    iget v0, p4, Lk5/i;->d:F

    mul-float v4, p2, v0

    iget v1, v1, Lk5/d;->d:F

    iget p4, p4, Lk5/i;->e:F

    mul-float v5, v1, p4

    sub-float/2addr v4, v5

    iget v5, p3, Lk5/i;->d:F

    add-float/2addr v4, v5

    mul-float/2addr v1, v0

    mul-float/2addr p2, p4

    add-float/2addr p2, v1

    iget p3, p3, Lk5/i;->e:F

    add-float/2addr p2, p3

    sub-float p3, v4, v6

    sub-float p4, p2, v2

    mul-float/2addr p3, v7

    mul-float/2addr p4, v8

    add-float/2addr p4, p3

    iget p3, p1, Lm5/b;->m:F

    sub-float/2addr p4, p3

    iget p1, p1, Lm5/b;->n:F

    sub-float/2addr p4, p1

    iput p4, p0, Lh5/j;->c:F

    iput v4, v3, Lk5/i;->d:F

    iput p2, v3, Lk5/i;->e:F

    goto :goto_0

    :cond_2
    iget-object p4, p1, Lm5/b;->a:[Lk5/i;

    const/4 v2, 0x0

    aget-object p4, p4, v2

    iget v2, v0, Lk5/d;->e:F

    iget v6, v5, Lk5/i;->d:F

    mul-float v7, v2, v6

    iget v0, v0, Lk5/d;->d:F

    iget v5, v5, Lk5/i;->e:F

    mul-float v8, v0, v5

    sub-float/2addr v7, v8

    iget v8, p2, Lk5/i;->d:F

    add-float/2addr v7, v8

    mul-float/2addr v0, v6

    mul-float/2addr v2, v5

    add-float/2addr v2, v0

    iget p2, p2, Lk5/i;->e:F

    add-float/2addr v2, p2

    iget p2, v1, Lk5/d;->e:F

    iget v0, p4, Lk5/i;->d:F

    mul-float v5, p2, v0

    iget v1, v1, Lk5/d;->d:F

    iget p4, p4, Lk5/i;->e:F

    mul-float v6, v1, p4

    sub-float/2addr v5, v6

    iget v6, p3, Lk5/i;->d:F

    add-float/2addr v5, v6

    mul-float/2addr v1, v0

    mul-float/2addr p2, p4

    add-float/2addr p2, v1

    iget p3, p3, Lk5/i;->e:F

    add-float/2addr p2, p3

    sub-float p3, v5, v7

    iput p3, v4, Lk5/i;->d:F

    sub-float p4, p2, v2

    iput p4, v4, Lk5/i;->e:F

    invoke-virtual {v4}, Lk5/i;->j()F

    add-float/2addr v7, v5

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    iput v7, v3, Lk5/i;->d:F

    add-float/2addr v2, p2

    mul-float/2addr v2, v0

    iput v2, v3, Lk5/i;->e:F

    iget p2, v4, Lk5/i;->d:F

    mul-float/2addr p3, p2

    iget p2, v4, Lk5/i;->e:F

    mul-float/2addr p4, p2

    add-float/2addr p4, p3

    iget p2, p1, Lm5/b;->m:F

    sub-float/2addr p4, p2

    iget p1, p1, Lm5/b;->n:F

    sub-float/2addr p4, p1

    iput p4, p0, Lh5/j;->c:F

    :goto_0
    return-void
.end method
