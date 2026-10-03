.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO2/a;

.field public final c:LM2/f;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;LM2/f;I)V
    .locals 0

    iput p4, p0, LL2/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/a;->a:Landroid/content/Context;

    iput-object p2, p0, LL2/a;->b:LO2/a;

    iput-object p3, p0, LL2/a;->c:LM2/f;

    return-void
.end method


# virtual methods
.method public final a(LF2/a;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LL2/a;->d:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, LL2/a;->b:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "schedule, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GenerateSingleScheduler"

    invoke-virtual {v2, v4, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, v1, LF2/a;->b:LH2/a;

    iget v4, v3, LH2/a;->d:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    :goto_0
    move v6, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :goto_1
    new-instance v7, Lq3/f;

    const-string v4, "caller_package_name"

    iget-object v5, v3, LH2/a;->a:Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v4, v3, LH2/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lq3/f;

    const-string v5, "which"

    invoke-direct {v8, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v4, v3, LH2/a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v9, Lq3/f;

    const-string v5, "id"

    invoke-direct {v9, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->l:Ljava/lang/String;

    new-instance v10, Lq3/f;

    const-string v5, "source_path"

    invoke-direct {v10, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->m:Ljava/lang/String;

    new-instance v11, Lq3/f;

    const-string v5, "source_alpha_path"

    invoke-direct {v11, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lq3/f;

    const-string v4, "weather"

    iget-object v5, v3, LH2/a;->o:Ljava/lang/String;

    invoke-direct {v12, v4, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->n:Ljava/lang/String;

    new-instance v13, Lq3/f;

    const-string v5, "time"

    invoke-direct {v13, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v4, v3, LH2/a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v14, Lq3/f;

    const-string v5, "engine_type"

    invoke-direct {v14, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v3, v3, LH2/a;->t:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v15, Lq3/f;

    const-string v4, "force_square_generate"

    invoke-direct {v15, v4, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v7 .. v15}, [Lq3/f;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/y;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/y;-><init>(I)V

    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x9

    if-ge v5, v7, :cond_1

    aget-object v7, v3, v5

    iget-object v8, v7, Lq3/f;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Lq3/f;->e:Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/y;->m(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroidx/recyclerview/widget/y;->d()Ln0/g;

    move-result-object v3

    invoke-static {v2}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    new-instance v2, Ln0/e;

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v15}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    iget-object v7, v0, LL2/a;->c:LM2/f;

    iget-object v8, v1, LF2/a;->b:LH2/a;

    const-string v10, "single"

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v9, v3

    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, LM2/f;->a(LH2/a;Ln0/g;Ljava/lang/String;ILjava/time/Duration;Ln0/e;)V

    return-void

    :pswitch_0
    iget-object v2, v0, LL2/a;->b:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "schedule, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GenerateAllInstantScheduler"

    invoke-virtual {v2, v4, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, v1, LF2/a;->b:LH2/a;

    iget v4, v3, LH2/a;->d:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    :goto_3
    move v7, v4

    goto :goto_4

    :cond_2
    const/4 v4, 0x1

    goto :goto_3

    :goto_4
    iget-wide v8, v3, LH2/a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v8, Lq3/f;

    const-string v6, "id"

    invoke-direct {v8, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v4, v3, LH2/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v9, Lq3/f;

    const-string v6, "which"

    invoke-direct {v9, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->l:Ljava/lang/String;

    new-instance v10, Lq3/f;

    const-string v6, "source_path"

    invoke-direct {v10, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->m:Ljava/lang/String;

    new-instance v11, Lq3/f;

    const-string v6, "source_alpha_path"

    invoke-direct {v11, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lq3/f;

    const-string v4, "caller_package_name"

    iget-object v6, v3, LH2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v4, v6}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v4, v3, LH2/a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v13, Lq3/f;

    const-string v6, "engine_type"

    invoke-direct {v13, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v14, Lq3/f;

    const-string v5, "generating_count_at_once"

    invoke-direct {v14, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v4, v3, LH2/a;->s:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v15, Lq3/f;

    const-string v5, "is_night"

    invoke-direct {v15, v5, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v5, Lq3/f;

    const-string v6, "need_constraint"

    invoke-direct {v5, v6, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v3, v3, LH2/a;->t:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lq3/f;

    const-string v6, "force_square_generate"

    invoke-direct {v4, v6, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    filled-new-array/range {v8 .. v17}, [Lq3/f;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/y;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/y;-><init>(I)V

    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    aget-object v6, v3, v5

    iget-object v8, v6, Lq3/f;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v6, v6, Lq3/f;->e:Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Landroidx/recyclerview/widget/y;->m(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v4}, Landroidx/recyclerview/widget/y;->d()Ln0/g;

    move-result-object v3

    const-wide/16 v4, 0xf

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    const-string v5, "ofMinutes(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x5a

    invoke-static {v8, v9}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v14

    invoke-static {v14, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v16

    new-instance v2, Ln0/e;

    const-wide/16 v12, -0x1

    const-wide/16 v17, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v5, v14

    move-wide/from16 v14, v17

    invoke-direct/range {v6 .. v16}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    iget-object v8, v0, LL2/a;->c:LM2/f;

    iget-object v9, v1, LF2/a;->b:LH2/a;

    const-string v13, "policy"

    const/4 v14, 0x2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, LM2/f;->b(LH2/a;Ln0/g;Ljava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ILn0/e;)V

    return-void

    :pswitch_1
    iget-object v2, v0, LL2/a;->b:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "schedule, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GenerateAllConstraintScheduler"

    invoke-virtual {v3, v5, v4}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, LF2/a;->b:LH2/a;

    const-wide/32 v3, 0xdbba0

    iput-wide v3, v7, LH2/a;->v:J

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iget v4, v7, LH2/a;->d:I

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x64

    if-ne v4, v15, :cond_4

    move/from16 v17, v14

    goto :goto_6

    :cond_4
    move/from16 v17, v13

    :goto_6
    invoke-static {v3}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v26

    new-instance v12, Ln0/e;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v22, -0x1

    const-wide/16 v24, -0x1

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v26}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    iget-object v0, v0, LL2/a;->c:LM2/f;

    const/16 v3, 0xc8

    invoke-static {v7, v3}, LM2/f;->d(LH2/a;I)Ln0/g;

    move-result-object v8

    const-string v9, "priority"

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, LM2/f;->a(LH2/a;Ln0/g;Ljava/lang/String;ILjava/time/Duration;Ln0/e;)V

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v3

    const-string v6, "priority work enqueued"

    invoke-virtual {v3, v5, v6}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    if-ne v4, v15, :cond_5

    const/4 v13, 0x0

    move/from16 v19, v13

    move/from16 v16, v14

    goto :goto_7

    :cond_5
    move/from16 v16, v13

    move/from16 v19, v16

    :goto_7
    invoke-static {v3}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v25

    new-instance v3, Ln0/e;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v25}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    and-int/lit8 v8, v7, 0x2

    const-wide/16 v9, 0xf

    if-eqz v8, :cond_6

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    :cond_6
    invoke-static {v9, v10}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v8

    and-int/lit8 v9, v7, 0x10

    if-eqz v9, :cond_7

    const/4 v6, 0x2

    :cond_7
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_8

    const/4 v3, 0x0

    :cond_8
    move-object/from16 v34, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "repeatInterval"

    invoke-static {v4, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flexTime"

    invoke-static {v8, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "workPolicy"

    invoke-static {v6, v3}, LB/a;->t(ILjava/lang/String;)V

    const/16 v3, 0xc9

    iget-object v1, v1, LF2/a;->b:LH2/a;

    invoke-static {v1, v3}, LM2/f;->d(LH2/a;I)Ln0/g;

    move-result-object v29

    const-string v32, "policy"

    move-object/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v8

    move/from16 v33, v6

    invoke-virtual/range {v27 .. v34}, LM2/f;->b(LH2/a;Ln0/g;Ljava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ILn0/e;)V

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "policy work enqueued"

    invoke-virtual {v0, v5, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
