.class public final Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final h:Ljava/lang/ThreadLocal;

.field public static final i:Landroidx/recyclerview/widget/n;


# instance fields
.field public d:Ljava/util/ArrayList;

.field public e:J

.field public f:J

.field public g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/q;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/recyclerview/widget/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/q;->i:Landroidx/recyclerview/widget/n;

    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/U;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->n()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3, v2}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/U;->c:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/M;->i(IJ)Landroidx/recyclerview/widget/U;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->g()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/M;->f(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/M;->a(Landroidx/recyclerview/widget/U;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    return-object p1

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    iput p2, p0, Landroidx/recyclerview/widget/o;->a:I

    iput p3, p0, Landroidx/recyclerview/widget/o;->b:I

    return-void
.end method

.method public final b(J)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/o;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v6, v7, Landroidx/recyclerview/widget/o;->d:I

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_5

    :cond_2
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    iget v9, v8, Landroidx/recyclerview/widget/o;->a:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v8, Landroidx/recyclerview/widget/o;->b:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v10, v9

    move v9, v3

    :goto_2
    iget v11, v8, Landroidx/recyclerview/widget/o;->d:I

    mul-int/lit8 v11, v11, 0x2

    if-ge v9, v11, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_3

    new-instance v11, Landroidx/recyclerview/widget/p;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/p;

    :goto_3
    iget-object v12, v8, Landroidx/recyclerview/widget/o;->c:[I

    add-int/lit8 v13, v9, 0x1

    aget v13, v12, v13

    if-gt v13, v10, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v14, v3

    :goto_4
    iput-boolean v14, v11, Landroidx/recyclerview/widget/p;->a:Z

    iput v10, v11, Landroidx/recyclerview/widget/p;->b:I

    iput v13, v11, Landroidx/recyclerview/widget/p;->c:I

    iput-object v7, v11, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    aget v12, v12, v9

    iput v12, v11, Landroidx/recyclerview/widget/p;->e:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v1, Landroidx/recyclerview/widget/q;->i:Landroidx/recyclerview/widget/n;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v3

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/p;

    iget-object v4, v2, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_7

    goto/16 :goto_c

    :cond_7
    iget-boolean v5, v2, Landroidx/recyclerview/widget/p;->a:Z

    if-eqz v5, :cond_8

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_7

    :cond_8
    move-wide/from16 v7, p1

    :goto_7
    iget v5, v2, Landroidx/recyclerview/widget/p;->e:I

    invoke-static {v4, v5, v7, v8}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/U;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v5, v4, Landroidx/recyclerview/widget/U;->b:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->f()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v4, v4, Landroidx/recyclerview/widget/U;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_9

    goto :goto_a

    :cond_9
    iget-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v5}, Lw0/m;->n()I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j;->h()V

    :cond_a
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/I;->b0(Landroidx/recyclerview/widget/M;)V

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/I;->c0(Landroidx/recyclerview/widget/M;)V

    :cond_b
    iget-object v5, v7, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Landroidx/recyclerview/widget/M;->d()V

    :cond_c
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/o;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v7, v5, Landroidx/recyclerview/widget/o;->d:I

    if-eqz v7, :cond_e

    :try_start_0
    const-string v7, "RV Nested Prefetch"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iput v6, v7, Landroidx/recyclerview/widget/S;->d:I

    invoke-virtual {v8}, LU3/b0;->c()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/S;->e:I

    iput-boolean v3, v7, Landroidx/recyclerview/widget/S;->g:Z

    iput-boolean v3, v7, Landroidx/recyclerview/widget/S;->h:Z

    iput-boolean v3, v7, Landroidx/recyclerview/widget/S;->i:Z

    move v7, v3

    :goto_8
    iget v8, v5, Landroidx/recyclerview/widget/o;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_d

    iget-object v8, v5, Landroidx/recyclerview/widget/o;->c:[I

    aget v8, v8, v7

    move-wide/from16 v9, p1

    invoke-static {v4, v8, v9, v10}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x2

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_d
    move-wide/from16 v9, p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_b

    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_e
    :goto_a
    move-wide/from16 v9, p1

    :goto_b
    iput-boolean v3, v2, Landroidx/recyclerview/widget/p;->a:Z

    iput v3, v2, Landroidx/recyclerview/widget/p;->b:I

    iput v3, v2, Landroidx/recyclerview/widget/p;->c:I

    const/4 v4, 0x0

    iput-object v4, v2, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v3, v2, Landroidx/recyclerview/widget/p;->e:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_c
    return-void
.end method

.method public final run()V
    .locals 9

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/recyclerview/widget/q;->d:Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    iput-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/q;->f:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/q;->b(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    iput-wide v0, p0, Landroidx/recyclerview/widget/q;->e:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method
