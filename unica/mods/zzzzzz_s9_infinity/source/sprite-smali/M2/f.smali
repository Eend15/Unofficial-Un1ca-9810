.class public final LM2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static c(LH2/a;)Ljava/lang/String;
    .locals 3

    const-string v0, "generateData"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generate_image_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LH2/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LH2/a;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(LH2/a;I)Ln0/g;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, LH2/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lq3/f;

    const-string v3, "id"

    invoke-direct {v2, v3, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, v0, LH2/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lq3/f;

    const-string v4, "which"

    invoke-direct {v3, v4, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, LH2/a;->l:Ljava/lang/String;

    new-instance v4, Lq3/f;

    const-string v5, "source_path"

    invoke-direct {v4, v5, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, LH2/a;->m:Ljava/lang/String;

    new-instance v5, Lq3/f;

    const-string v6, "source_alpha_path"

    invoke-direct {v5, v6, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lq3/f;

    const-string v1, "caller_package_name"

    iget-object v7, v0, LH2/a;->a:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, v0, LH2/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lq3/f;

    const-string v8, "engine_type"

    invoke-direct {v7, v8, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lq3/f;

    const-string v9, "generating_count_at_once"

    invoke-direct {v8, v9, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, v0, LH2/a;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v9, Lq3/f;

    const-string v10, "is_night"

    invoke-direct {v9, v10, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, v0, LH2/a;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v10, Lq3/f;

    const-string v11, "need_constraint"

    invoke-direct {v10, v11, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lq3/f;

    const-string v1, "current_time"

    iget-object v12, v0, LH2/a;->p:Ljava/lang/String;

    invoke-direct {v11, v1, v12}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lq3/f;

    const-string v1, "current_weather"

    iget-object v13, v0, LH2/a;->q:Ljava/lang/String;

    invoke-direct {v12, v1, v13}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lq3/f;

    const-string v14, "generating_type"

    invoke-direct {v13, v14, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, v0, LH2/a;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v14, Lq3/f;

    const-string v15, "force_square_generate"

    invoke-direct {v14, v15, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, v0, LH2/a;->v:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v15, Lq3/f;

    const-string v1, "scheduling_time"

    invoke-direct {v15, v1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v15}, [Lq3/f;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/y;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/y;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    iget-object v4, v3, Lq3/f;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lq3/f;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/y;->m(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/y;->d()Ln0/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(LH2/a;Ln0/g;Ljava/lang/String;ILjava/time/Duration;Ln0/e;)V
    .locals 3

    const-string v0, "generateData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraTag"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workPolicy"

    invoke-static {p4, v0}, LB/a;->t(ILjava/lang/String;)V

    new-instance v0, Ln0/p;

    const-class v1, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    invoke-direct {v0, v1}, Ln0/p;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LF4/x;->i(Ljava/util/UUID;)LF4/x;

    move-result-object v0

    check-cast v0, Ln0/p;

    iget-object v1, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast v1, Lw0/p;

    iput-object p2, v1, Lw0/p;->e:Ln0/g;

    iget-object p2, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast p2, Lw0/p;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lw0/p;->q:Z

    iput v1, p2, Lw0/p;->r:I

    if-eqz p6, :cond_0

    iget-object p2, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast p2, Lw0/p;

    iput-object p6, p2, Lw0/p;->j:Ln0/e;

    :cond_0
    if-eqz p5, :cond_2

    iget-object p2, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast p2, Lw0/p;

    invoke-static {p5}, Lx0/c;->a(Ljava/time/Duration;)J

    move-result-wide p5

    iput-wide p5, p2, Lw0/p;->g:J

    const-wide p5, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr p5, v1

    iget-object p2, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast p2, Lw0/p;

    iget-wide v1, p2, Lw0/p;->g:J

    cmp-long p2, p5, v1

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, LM2/f;->a:Landroid/content/Context;

    invoke-static {p0}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object p0

    invoke-static {p1}, LM2/f;->c(LH2/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, LF4/x;->b()Ln0/z;

    move-result-object p2

    check-cast p2, Ln0/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lo0/j;

    invoke-direct {p3, p0, p1, p4, p2}, Lo0/j;-><init>(Lo0/n;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p3}, Lo0/j;->M()Ln0/u;

    return-void
.end method

.method public final b(LH2/a;Ln0/g;Ljava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ILn0/e;)V
    .locals 16

    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p7

    const-string v3, "generateData"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flexTime"

    move-object/from16 v5, p4

    invoke-static {v5, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "extraTag"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "workPolicy"

    invoke-static {v1, v3}, LB/a;->t(ILjava/lang/String;)V

    new-instance v3, Ln0/v;

    const-class v6, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    invoke-direct {v3, v6}, LF4/x;-><init>(Ljava/lang/Class;)V

    iget-object v6, v3, LF4/x;->c:Ljava/lang/Object;

    check-cast v6, Lw0/p;

    invoke-static/range {p3 .. p3}, Lx0/c;->a(Ljava/time/Duration;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lx0/c;->a(Ljava/time/Duration;)J

    move-result-wide v9

    const-wide/32 v11, 0xdbba0

    cmp-long v5, v7, v11

    sget-object v13, Lw0/p;->u:Ljava/lang/String;

    if-gez v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v14

    const-string v15, "Interval duration lesser than minimum allowed value; Changed to 900000"

    invoke-virtual {v14, v13, v15}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v11, v7

    :goto_0
    iput-wide v11, v6, Lw0/p;->h:J

    const-wide/32 v11, 0x493e0

    cmp-long v5, v9, v11

    if-gez v5, :cond_2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v14

    const-string v15, "Flex duration lesser than minimum allowed value; Changed to 300000"

    invoke-virtual {v14, v13, v15}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v14, v6, Lw0/p;->h:J

    cmp-long v14, v9, v14

    if-lez v14, :cond_3

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "Flex duration greater than interval duration; Changed to "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v13, v7}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-wide v7, v6, Lw0/p;->h:J

    const-wide/32 v11, 0x493e0

    cmp-long v13, v11, v7

    if-gtz v13, :cond_9

    if-gez v5, :cond_4

    move-wide v9, v11

    goto :goto_1

    :cond_4
    cmp-long v5, v9, v7

    if-lez v5, :cond_5

    move-wide v9, v7

    :cond_5
    :goto_1
    iput-wide v9, v6, Lw0/p;->i:J

    invoke-static/range {p1 .. p1}, LM2/f;->c(LH2/a;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag"

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v3, LF4/x;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    const-string v6, "randomUUID(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, LF4/x;->i(Ljava/util/UUID;)LF4/x;

    move-result-object v3

    check-cast v3, Ln0/v;

    iget-object v5, v3, LF4/x;->c:Ljava/lang/Object;

    check-cast v5, Lw0/p;

    move-object/from16 v6, p2

    iput-object v6, v5, Lw0/p;->e:Ln0/g;

    if-eqz v2, :cond_6

    iget-object v5, v3, LF4/x;->c:Ljava/lang/Object;

    check-cast v5, Lw0/p;

    iput-object v2, v5, Lw0/p;->j:Ln0/e;

    :cond_6
    move-object/from16 v2, p0

    iget-object v2, v2, LM2/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LM2/f;->c(LH2/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, LF4/x;->b()Ln0/z;

    move-result-object v3

    check-cast v3, Ln0/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    const-string v1, "name"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw0/e;

    invoke-direct {v1}, Lw0/e;-><init>()V

    new-instance v4, Lo0/q;

    invoke-direct {v4, v3, v2, v0, v1}, Lo0/q;-><init>(Ln0/w;Lo0/n;Ljava/lang/String;Lw0/e;)V

    iget-object v5, v2, Lo0/n;->g:Ln1/a;

    iget-object v5, v5, Ln1/a;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/appcompat/app/o;

    new-instance v6, Lo0/o;

    move-object/from16 p0, v6

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v3

    invoke-direct/range {p0 .. p5}, Lo0/o;-><init>(Lo0/n;Ljava/lang/String;Lw0/e;Lo0/q;Ln0/w;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    :goto_2
    new-instance v1, Lo0/j;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v0, v4, v3}, Lo0/j;-><init>(Lo0/n;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v1}, Lo0/j;->M()Ln0/u;

    :goto_3
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than minimum 300000."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
