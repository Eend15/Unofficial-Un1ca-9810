.class public final Lg4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;LU3/k;Lj4/e;I)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg4/e;->c:Ljava/lang/Object;

    iput p4, p0, Lg4/e;->a:I

    invoke-interface {p3}, Lj4/e;->q()Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lg4/e;->d:Ljava/lang/Object;

    iget-object p1, p0, Lg4/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    new-instance p2, LF4/a;

    const/16 p3, 0xe

    invoke-direct {p2, p3, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lg4/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(La4/C;)LU3/O;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg4/e;->e:Ljava/lang/Object;

    check-cast v0, LI4/j;

    invoke-virtual {v0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/B;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg4/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Lg4/f;

    invoke-interface {p0, p1}, Lg4/f;->a(La4/C;)LU3/O;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lm5/a;)V
    .locals 5

    iget-object v0, p1, Lm5/a;->f:Ll5/c;

    iget-object v1, p1, Lm5/a;->g:Ll5/c;

    iget-object v0, v0, Ll5/c;->c:Ll5/a;

    iget-object v1, v1, Ll5/c;->c:Ll5/a;

    iget-object v2, p0, Lg4/e;->d:Ljava/lang/Object;

    check-cast v2, Lg5/a;

    if-eqz v2, :cond_0

    iget v3, p1, Lm5/a;->a:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v2, p1, Lm5/a;->b:Lm5/a;

    if-eqz v2, :cond_1

    iget-object v3, p1, Lm5/a;->c:Lm5/a;

    iput-object v3, v2, Lm5/a;->c:Lm5/a;

    :cond_1
    iget-object v3, p1, Lm5/a;->c:Lm5/a;

    if-eqz v3, :cond_2

    iput-object v2, v3, Lm5/a;->b:Lm5/a;

    :cond_2
    iget-object v2, p0, Lg4/e;->c:Ljava/lang/Object;

    check-cast v2, Lm5/a;

    if-ne p1, v2, :cond_3

    iput-object v3, p0, Lg4/e;->c:Ljava/lang/Object;

    :cond_3
    iget-object v2, p1, Lm5/a;->d:Lw0/i;

    iget-object v3, v2, Lw0/i;->g:Ljava/lang/Object;

    check-cast v3, Lw0/i;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lw0/i;->h:Ljava/lang/Object;

    check-cast v4, Lw0/i;

    iput-object v4, v3, Lw0/i;->h:Ljava/lang/Object;

    :cond_4
    iget-object v4, v2, Lw0/i;->h:Ljava/lang/Object;

    check-cast v4, Lw0/i;

    if-eqz v4, :cond_5

    iput-object v3, v4, Lw0/i;->g:Ljava/lang/Object;

    :cond_5
    iget-object v3, v0, Ll5/a;->n:Lw0/i;

    if-ne v2, v3, :cond_6

    iput-object v4, v0, Ll5/a;->n:Lw0/i;

    :cond_6
    iget-object v0, p1, Lm5/a;->e:Lw0/i;

    iget-object v2, v0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v2, Lw0/i;

    if-eqz v2, :cond_7

    iget-object v3, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v3, Lw0/i;

    iput-object v3, v2, Lw0/i;->h:Ljava/lang/Object;

    :cond_7
    iget-object v3, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v3, Lw0/i;

    if-eqz v3, :cond_8

    iput-object v2, v3, Lw0/i;->g:Ljava/lang/Object;

    :cond_8
    iget-object v2, v1, Ll5/a;->n:Lw0/i;

    if-ne v0, v2, :cond_9

    iput-object v3, v1, Ll5/a;->n:Lw0/i;

    :cond_9
    iget-object v0, p0, Lg4/e;->e:Ljava/lang/Object;

    check-cast v0, Ll5/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lm5/a;->f:Ll5/c;

    iget-object v2, p1, Lm5/a;->g:Ll5/c;

    iget-object v3, p1, Lm5/a;->j:Lh5/k;

    iget v3, v3, Lh5/k;->e:I

    const/4 v4, 0x1

    if-lez v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Ll5/c;->c:Ll5/a;

    invoke-virtual {v3, v4}, Ll5/a;->f(Z)V

    iget-object v3, v2, Ll5/c;->c:Ll5/a;

    invoke-virtual {v3, v4}, Ll5/a;->f(Z)V

    :cond_a
    iget-object v1, v1, Ll5/c;->d:Lj5/e;

    iget v1, v1, Lj5/e;->a:I

    iget-object v2, v2, Ll5/c;->d:Lj5/e;

    iget v2, v2, Lj5/e;->a:I

    iget-object v0, v0, Ll5/h;->o:[[Lm5/c;

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lm5/c;->a:LY4/a;

    iget-object v1, v0, LY4/a;->f:[Ljava/lang/Object;

    iget v2, v0, LY4/a;->d:I

    sub-int/2addr v2, v4

    iput v2, v0, LY4/a;->d:I

    aput-object p1, v1, v2

    iget p1, p0, Lg4/e;->a:I

    sub-int/2addr p1, v4

    iput p1, p0, Lg4/e;->a:I

    return-void
.end method

.method public c()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg4/e;->b:Ljava/lang/Object;

    check-cast v1, Li5/a;

    const/4 v2, 0x0

    iput v2, v1, Li5/a;->g:I

    move v3, v2

    :goto_0
    iget v4, v1, Li5/a;->d:I

    iget-object v5, v1, Li5/a;->a:Li5/c;

    const/4 v6, 0x1

    if-ge v3, v4, :cond_a

    iget-object v4, v1, Li5/a;->b:[I

    aget v4, v4, v3

    iput v4, v1, Li5/a;->h:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v7, v5, Li5/c;->b:[Li5/d;

    aget-object v4, v7, v4

    iget-object v4, v4, Li5/d;->a:Lw0/l;

    iget-object v7, v5, Li5/c;->g:Li5/b;

    iput v2, v7, Li5/b;->b:I

    iget-object v5, v5, Li5/c;->a:Li5/d;

    invoke-virtual {v7, v5}, Li5/b;->a(Li5/d;)V

    :cond_1
    :goto_1
    iget v5, v7, Li5/b;->b:I

    if-lez v5, :cond_9

    iget-object v8, v7, Li5/b;->c:Ljava/lang/Object;

    check-cast v8, [Li5/d;

    add-int/lit8 v5, v5, -0x1

    iput v5, v7, Li5/b;->b:I

    aget-object v5, v8, v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, v4, Lw0/l;->e:Ljava/lang/Object;

    check-cast v8, Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    iget-object v10, v5, Li5/d;->a:Lw0/l;

    iget-object v11, v10, Lw0/l;->f:Ljava/lang/Object;

    check-cast v11, Lk5/i;

    iget v12, v11, Lk5/i;->d:F

    sub-float/2addr v9, v12

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-gtz v9, :cond_1

    iget v8, v8, Lk5/i;->e:F

    iget v9, v11, Lk5/i;->e:F

    sub-float/2addr v8, v9

    cmpl-float v8, v8, v12

    if-lez v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, v10, Lw0/l;->e:Ljava/lang/Object;

    check-cast v8, Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    iget-object v10, v4, Lw0/l;->f:Ljava/lang/Object;

    check-cast v10, Lk5/i;

    iget v11, v10, Lk5/i;->d:F

    sub-float/2addr v9, v11

    cmpl-float v9, v9, v12

    if-gtz v9, :cond_1

    iget v8, v8, Lk5/i;->e:F

    iget v9, v10, Lk5/i;->e:F

    sub-float/2addr v8, v9

    cmpl-float v8, v8, v12

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, v5, Li5/d;->d:Li5/d;

    if-nez v8, :cond_8

    iget v8, v1, Li5/a;->h:I

    iget v5, v5, Li5/d;->f:I

    if-ne v5, v8, :cond_5

    goto :goto_1

    :cond_5
    iget v8, v1, Li5/a;->g:I

    iget v9, v1, Li5/a;->f:I

    if-ne v8, v9, :cond_6

    iget-object v8, v1, Li5/a;->e:[Li5/e;

    mul-int/lit8 v9, v9, 0x2

    iput v9, v1, Li5/a;->f:I

    new-array v9, v9, [Li5/e;

    iput-object v9, v1, Li5/a;->e:[Li5/e;

    array-length v10, v8

    invoke-static {v8, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    :goto_2
    iget v9, v1, Li5/a;->f:I

    if-ge v8, v9, :cond_6

    iget-object v9, v1, Li5/a;->e:[Li5/e;

    new-instance v10, Li5/e;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    iget v8, v1, Li5/a;->h:I

    if-ge v5, v8, :cond_7

    iget-object v9, v1, Li5/a;->e:[Li5/e;

    iget v10, v1, Li5/a;->g:I

    aget-object v9, v9, v10

    iput v5, v9, Li5/e;->d:I

    iput v8, v9, Li5/e;->e:I

    goto :goto_3

    :cond_7
    iget-object v9, v1, Li5/a;->e:[Li5/e;

    iget v10, v1, Li5/a;->g:I

    aget-object v9, v9, v10

    iput v8, v9, Li5/e;->d:I

    iput v5, v9, Li5/e;->e:I

    :goto_3
    iget v5, v1, Li5/a;->g:I

    add-int/2addr v5, v6

    iput v5, v1, Li5/a;->g:I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v7, v8}, Li5/b;->a(Li5/d;)V

    iget-object v5, v5, Li5/d;->e:Li5/d;

    invoke-virtual {v7, v5}, Li5/b;->a(Li5/d;)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    iput v2, v1, Li5/a;->d:I

    iget-object v3, v1, Li5/a;->e:[Li5/e;

    iget v4, v1, Li5/a;->g:I

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_b
    :goto_5
    iget v3, v1, Li5/a;->g:I

    if-ge v2, v3, :cond_1b

    iget-object v3, v1, Li5/a;->e:[Li5/e;

    aget-object v3, v3, v2

    iget v4, v3, Li5/e;->d:I

    iget-object v7, v5, Li5/c;->b:[Li5/d;

    aget-object v4, v7, v4

    iget-object v4, v4, Li5/d;->b:Ll5/e;

    iget v8, v3, Li5/e;->e:I

    aget-object v7, v7, v8

    iget-object v7, v7, Li5/d;->b:Ll5/e;

    iget-object v8, v4, Ll5/e;->d:Ljava/lang/Object;

    check-cast v8, Ll5/c;

    iget-object v9, v7, Ll5/e;->d:Ljava/lang/Object;

    check-cast v9, Ll5/c;

    iget v4, v4, Ll5/e;->a:I

    iget v7, v7, Ll5/e;->a:I

    iget-object v10, v8, Ll5/c;->c:Ll5/a;

    iget-object v11, v9, Ll5/c;->c:Ll5/a;

    if-ne v10, v11, :cond_c

    goto/16 :goto_9

    :cond_c
    iget-object v12, v11, Ll5/a;->n:Lw0/i;

    :goto_6
    if-eqz v12, :cond_f

    iget-object v13, v12, Lw0/i;->e:Ljava/lang/Object;

    check-cast v13, Ll5/a;

    if-ne v13, v10, :cond_e

    iget-object v13, v12, Lw0/i;->f:Ljava/lang/Object;

    check-cast v13, Lm5/a;

    iget-object v14, v13, Lm5/a;->f:Ll5/c;

    iget-object v15, v13, Lm5/a;->g:Ll5/c;

    iget v6, v13, Lm5/a;->h:I

    iget v13, v13, Lm5/a;->i:I

    if-ne v14, v8, :cond_d

    if-ne v6, v4, :cond_d

    if-ne v15, v9, :cond_d

    if-ne v13, v7, :cond_d

    :goto_7
    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_d
    if-ne v14, v9, :cond_e

    if-ne v6, v7, :cond_e

    if-ne v15, v8, :cond_e

    if-ne v13, v4, :cond_e

    goto :goto_7

    :cond_e
    iget-object v6, v12, Lw0/i;->h:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Lw0/i;

    const/4 v6, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {v11, v10}, Ll5/a;->i(Ll5/a;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v8, v9}, LU0/e;->x(Ll5/c;Ll5/c;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_7

    :cond_11
    iget-object v6, v0, Lg4/e;->e:Ljava/lang/Object;

    check-cast v6, Ll5/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Ll5/c;->d:Lj5/e;

    iget v10, v10, Lj5/e;->a:I

    iget-object v11, v9, Ll5/c;->d:Lj5/e;

    iget v11, v11, Lj5/e;->a:I

    iget-object v6, v6, Ll5/h;->o:[[Lm5/c;

    invoke-static {v10}, Lq/e;->c(I)I

    move-result v10

    aget-object v6, v6, v10

    invoke-static {v11}, Lq/e;->c(I)I

    move-result v10

    aget-object v6, v6, v10

    iget-object v10, v6, Lm5/c;->a:LY4/a;

    const/4 v11, 0x0

    if-eqz v10, :cond_15

    iget-boolean v6, v6, Lm5/c;->b:Z

    if-eqz v6, :cond_13

    iget v6, v10, LY4/a;->d:I

    iget v12, v10, LY4/a;->e:I

    if-lt v6, v12, :cond_12

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v12}, LY4/a;->f(I)V

    :cond_12
    iget-object v6, v10, LY4/a;->f:[Ljava/lang/Object;

    iget v12, v10, LY4/a;->d:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v10, LY4/a;->d:I

    aget-object v6, v6, v12

    check-cast v6, Lm5/a;

    invoke-virtual {v6, v8, v4, v9, v7}, Lm5/a;->a(Ll5/c;ILl5/c;I)V

    goto :goto_8

    :cond_13
    iget v6, v10, LY4/a;->d:I

    iget v12, v10, LY4/a;->e:I

    if-lt v6, v12, :cond_14

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v12}, LY4/a;->f(I)V

    :cond_14
    iget-object v6, v10, LY4/a;->f:[Ljava/lang/Object;

    iget v12, v10, LY4/a;->d:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v10, LY4/a;->d:I

    aget-object v6, v6, v12

    check-cast v6, Lm5/a;

    invoke-virtual {v6, v9, v7, v8, v4}, Lm5/a;->a(Ll5/c;ILl5/c;I)V

    goto :goto_8

    :cond_15
    move-object v6, v11

    :goto_8
    if-nez v6, :cond_16

    goto/16 :goto_7

    :cond_16
    iget-object v4, v6, Lm5/a;->f:Ll5/c;

    iget-object v7, v6, Lm5/a;->g:Ll5/c;

    iget-object v4, v4, Ll5/c;->c:Ll5/a;

    iget-object v7, v7, Ll5/c;->c:Ll5/a;

    iput-object v11, v6, Lm5/a;->b:Lm5/a;

    iget-object v8, v0, Lg4/e;->c:Ljava/lang/Object;

    check-cast v8, Lm5/a;

    iput-object v8, v6, Lm5/a;->c:Lm5/a;

    if-eqz v8, :cond_17

    iput-object v6, v8, Lm5/a;->b:Lm5/a;

    :cond_17
    iput-object v6, v0, Lg4/e;->c:Ljava/lang/Object;

    iget-object v8, v6, Lm5/a;->d:Lw0/i;

    iput-object v6, v8, Lw0/i;->f:Ljava/lang/Object;

    iput-object v7, v8, Lw0/i;->e:Ljava/lang/Object;

    iput-object v11, v8, Lw0/i;->g:Ljava/lang/Object;

    iget-object v9, v4, Ll5/a;->n:Lw0/i;

    iput-object v9, v8, Lw0/i;->h:Ljava/lang/Object;

    if-eqz v9, :cond_18

    iput-object v8, v9, Lw0/i;->g:Ljava/lang/Object;

    :cond_18
    iput-object v8, v4, Ll5/a;->n:Lw0/i;

    iget-object v8, v6, Lm5/a;->e:Lw0/i;

    iput-object v6, v8, Lw0/i;->f:Ljava/lang/Object;

    iput-object v4, v8, Lw0/i;->e:Ljava/lang/Object;

    iput-object v11, v8, Lw0/i;->g:Ljava/lang/Object;

    iget-object v6, v7, Ll5/a;->n:Lw0/i;

    iput-object v6, v8, Lw0/i;->h:Ljava/lang/Object;

    if-eqz v6, :cond_19

    iput-object v8, v6, Lw0/i;->g:Ljava/lang/Object;

    :cond_19
    iput-object v8, v7, Ll5/a;->n:Lw0/i;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ll5/a;->f(Z)V

    invoke-virtual {v7, v6}, Ll5/a;->f(Z)V

    iget v4, v0, Lg4/e;->a:I

    add-int/2addr v4, v6

    iput v4, v0, Lg4/e;->a:I

    :cond_1a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    iget v4, v1, Li5/a;->g:I

    if-ge v2, v4, :cond_b

    iget-object v4, v1, Li5/a;->e:[Li5/e;

    aget-object v4, v4, v2

    iget v7, v4, Li5/e;->d:I

    iget v8, v3, Li5/e;->d:I

    if-ne v7, v8, :cond_b

    iget v4, v4, Li5/e;->e:I

    iget v7, v3, Li5/e;->e:I

    if-eq v4, v7, :cond_1a

    goto/16 :goto_5

    :cond_1b
    return-void
.end method
