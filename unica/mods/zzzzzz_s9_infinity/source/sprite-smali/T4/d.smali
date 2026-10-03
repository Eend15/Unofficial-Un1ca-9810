.class public final LT4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:LT4/d;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:LT4/d;

.field public final d:LT4/d;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT4/d;

    invoke-direct {v0}, LT4/d;-><init>()V

    sput-object v0, LT4/d;->f:LT4/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LT4/d;->e:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LT4/d;->a:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LT4/d;->b:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, LT4/d;->c:LT4/d;

    .line 6
    iput-object v0, p0, LT4/d;->d:LT4/d;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;LT4/d;LT4/d;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, LT4/d;->a:J

    .line 9
    iput-object p3, p0, LT4/d;->b:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, LT4/d;->c:LT4/d;

    .line 11
    iput-object p5, p0, LT4/d;->d:LT4/d;

    .line 12
    iget p1, p4, LT4/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p5, LT4/d;->e:I

    add-int/2addr p1, p2

    iput p1, p0, LT4/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LT4/d;->e:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, LT4/d;->a:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    iget-object p0, p0, LT4/d;->c:LT4/d;

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, LT4/d;->a(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object p0, p0, LT4/d;->d:LT4/d;

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, LT4/d;->a(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, LT4/d;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(JLT4/b;)LT4/d;
    .locals 9

    iget v0, p0, LT4/d;->e:I

    if-nez v0, :cond_0

    new-instance v0, LT4/d;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    return-object v0

    :cond_0
    iget-wide v0, p0, LT4/d;->a:J

    cmp-long v2, p1, v0

    iget-object v8, p0, LT4/d;->d:LT4/d;

    iget-object v7, p0, LT4/d;->c:LT4/d;

    if-gez v2, :cond_1

    sub-long/2addr p1, v0

    invoke-virtual {v7, p1, p2, p3}, LT4/d;->b(JLT4/b;)LT4/d;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, LT4/d;->c(LT4/d;LT4/d;)LT4/d;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v2, :cond_2

    sub-long/2addr p1, v0

    invoke-virtual {v8, p1, p2, p3}, LT4/d;->b(JLT4/b;)LT4/d;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, LT4/d;->c(LT4/d;LT4/d;)LT4/d;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, LT4/d;->b:Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, LT4/d;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    return-object p0
.end method

.method public final c(LT4/d;LT4/d;)LT4/d;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    iget-object v1, v0, LT4/d;->c:LT4/d;

    if-ne v4, v1, :cond_0

    iget-object v1, v0, LT4/d;->d:LT4/d;

    if-ne v10, v1, :cond_0

    return-object v0

    :cond_0
    iget v1, v4, LT4/d;->e:I

    iget v2, v10, LT4/d;->e:I

    add-int v3, v1, v2

    const/4 v5, 0x1

    iget-wide v6, v0, LT4/d;->a:J

    iget-object v8, v0, LT4/d;->b:Ljava/lang/Object;

    if-le v3, v5, :cond_4

    mul-int/lit8 v0, v2, 0x5

    if-lt v1, v0, :cond_2

    iget-object v9, v4, LT4/d;->d:LT4/d;

    iget v0, v9, LT4/d;->e:I

    iget-object v15, v4, LT4/d;->c:LT4/d;

    iget v1, v15, LT4/d;->e:I

    mul-int/lit8 v1, v1, 0x2

    iget-wide v2, v4, LT4/d;->a:J

    iget-wide v12, v9, LT4/d;->a:J

    if-ge v0, v1, :cond_1

    new-instance v0, LT4/d;

    add-long v16, v2, v6

    new-instance v1, LT4/d;

    neg-long v6, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, LT4/d;->d(J)LT4/d;

    move-result-object v9

    move-object v5, v1

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v10}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    iget-object v13, v4, LT4/d;->b:Ljava/lang/Object;

    move-object v10, v0

    move-wide/from16 v11, v16

    move-object v14, v15

    move-object v15, v1

    invoke-direct/range {v10 .. v15}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    goto/16 :goto_1

    :cond_1
    new-instance v17, LT4/d;

    add-long v0, v12, v2

    add-long/2addr v6, v0

    new-instance v18, LT4/d;

    neg-long v0, v12

    iget-object v5, v9, LT4/d;->c:LT4/d;

    iget-wide v10, v5, LT4/d;->a:J

    add-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, LT4/d;->d(J)LT4/d;

    move-result-object v16

    iget-object v14, v4, LT4/d;->b:Ljava/lang/Object;

    move-object/from16 v11, v18

    move-wide v4, v12

    move-wide v12, v0

    invoke-direct/range {v11 .. v16}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    new-instance v10, LT4/d;

    neg-long v0, v2

    sub-long v11, v0, v4

    iget-object v0, v9, LT4/d;->d:LT4/d;

    iget-wide v13, v0, LT4/d;->a:J

    add-long/2addr v13, v4

    add-long/2addr v13, v2

    invoke-virtual {v0, v13, v14}, LT4/d;->d(J)LT4/d;

    move-result-object v4

    move-object v0, v10

    move-wide v1, v11

    move-object v3, v8

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    iget-object v5, v9, LT4/d;->b:Ljava/lang/Object;

    move-object/from16 v2, v17

    move-wide v3, v6

    move-object/from16 v6, v18

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    :goto_0
    move-object/from16 v0, v17

    goto/16 :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0x5

    move-object/from16 v9, p2

    if-lt v2, v1, :cond_5

    iget-object v10, v9, LT4/d;->c:LT4/d;

    iget v0, v10, LT4/d;->e:I

    iget-object v15, v9, LT4/d;->d:LT4/d;

    iget v1, v15, LT4/d;->e:I

    mul-int/lit8 v1, v1, 0x2

    iget-wide v2, v9, LT4/d;->a:J

    iget-wide v11, v10, LT4/d;->a:J

    if-ge v0, v1, :cond_3

    new-instance v17, LT4/d;

    add-long/2addr v6, v2

    new-instance v16, LT4/d;

    neg-long v13, v2

    add-long/2addr v11, v2

    invoke-virtual {v10, v11, v12}, LT4/d;->d(J)LT4/d;

    move-result-object v5

    move-object/from16 v0, v16

    move-wide v1, v13

    move-object v3, v8

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    iget-object v14, v9, LT4/d;->b:Ljava/lang/Object;

    move-object/from16 v11, v17

    move-wide v12, v6

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v16}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    goto :goto_0

    :cond_3
    move-object/from16 v18, v15

    new-instance v17, LT4/d;

    add-long v0, v11, v2

    add-long/2addr v6, v0

    new-instance v19, LT4/d;

    neg-long v0, v2

    sub-long v13, v0, v11

    iget-object v0, v10, LT4/d;->c:LT4/d;

    iget-wide v4, v0, LT4/d;->a:J

    add-long/2addr v4, v11

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, LT4/d;->d(J)LT4/d;

    move-result-object v5

    move-object/from16 v0, v19

    move-wide v1, v13

    move-object v3, v8

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    new-instance v5, LT4/d;

    neg-long v0, v11

    iget-object v2, v10, LT4/d;->d:LT4/d;

    iget-wide v3, v2, LT4/d;->a:J

    add-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, LT4/d;->d(J)LT4/d;

    move-result-object v15

    iget-object v14, v9, LT4/d;->b:Ljava/lang/Object;

    move-object v11, v5

    move-wide v12, v0

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v16}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    iget-object v3, v10, LT4/d;->b:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-wide v1, v6

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v5}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    goto :goto_1

    :cond_4
    move-object v9, v10

    :cond_5
    new-instance v10, LT4/d;

    move-object v0, v10

    move-wide v1, v6

    move-object v3, v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    :goto_1
    return-object v0
.end method

.method public final d(J)LT4/d;
    .locals 7

    iget v0, p0, LT4/d;->e:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, LT4/d;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LT4/d;

    iget-object v5, p0, LT4/d;->c:LT4/d;

    iget-object v6, p0, LT4/d;->d:LT4/d;

    iget-object v4, p0, LT4/d;->b:Ljava/lang/Object;

    move-object v1, v0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, LT4/d;-><init>(JLjava/lang/Object;LT4/d;LT4/d;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
