.class public final Ll2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:LB2/c;

.field public final B:LD2/d;

.field public final C:LD2/f;

.field public final D:LB2/c;

.field public final E:LD2/d;

.field public final F:LB2/b;

.field public final G:Lh3/b;

.field public final H:Lh3/b;

.field public final I:LD2/d;

.field public final J:LB2/b;

.field public final K:LB2/b;

.field public final L:LB2/b;

.field public final M:LB2/b;

.field public final N:LB2/b;

.field public final a:Landroidx/recyclerview/widget/b;

.field public final b:LG4/d;

.field public final c:Lh3/b;

.field public final d:Lh2/d;

.field public final e:Lh3/b;

.field public final f:LB2/c;

.field public final g:LB2/b;

.field public final h:LC2/c;

.field public final i:LC2/c;

.field public final j:LD2/k;

.field public final k:LB2/b;

.field public final l:LD2/i;

.field public final m:LD2/i;

.field public final n:LB2/c;

.field public final o:Lh3/b;

.field public final p:Lh3/b;

.field public final q:Lh3/b;

.field public final r:LB2/a;

.field public final s:LD2/g;

.field public final t:LD2/g;

.field public final u:LD2/c;

.field public final v:LD2/c;

.field public final w:LD2/c;

.field public final x:LB2/b;

.field public final y:LD2/d;

.field public final z:LD2/f;


# direct methods
.method public constructor <init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v11, v0, Ll2/a;->a:Landroidx/recyclerview/widget/b;

    iput-object v2, v0, Ll2/a;->b:LG4/d;

    new-instance v3, LD2/e;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, LD2/e;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v3

    iput-object v3, v0, Ll2/a;->c:Lh3/b;

    new-instance v4, Lh2/d;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lh2/d;-><init>(Lh3/b;I)V

    iput-object v4, v0, Ll2/a;->d:Lh2/d;

    new-instance v4, Lh2/d;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lh2/d;-><init>(Lh3/b;I)V

    new-instance v3, LD2/e;

    const/4 v5, 0x3

    invoke-direct {v3, v1, v4, v5}, LD2/e;-><init>(Ljava/lang/Object;Lh3/b;I)V

    invoke-static {v3}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->e:Lh3/b;

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    new-instance v3, LB2/c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    iput-object v3, v0, Ll2/a;->f:LB2/c;

    new-instance v12, LB2/b;

    const/4 v4, 0x0

    invoke-direct {v12, v2, v1, v3, v4}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    iput-object v12, v0, Ll2/a;->g:LB2/b;

    new-instance v13, LC2/c;

    const/4 v3, 0x0

    invoke-direct {v13, v1, v3}, LC2/c;-><init>(Lo3/a;I)V

    iput-object v13, v0, Ll2/a;->h:LC2/c;

    new-instance v14, LC2/c;

    const/4 v3, 0x1

    invoke-direct {v14, v1, v3}, LC2/c;-><init>(Lo3/a;I)V

    iput-object v14, v0, Ll2/a;->i:LC2/c;

    new-instance v15, LD2/l;

    const/4 v8, 0x0

    move-object v3, v15

    move-object/from16 v4, p3

    move-object v5, v1

    move-object v6, v12

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, LD2/l;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V

    new-instance v8, LD2/l;

    const/16 v16, 0x1

    move-object v3, v8

    move-object/from16 v4, p3

    move-object v5, v1

    move-object v6, v12

    move-object v7, v14

    move-object v2, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, LD2/l;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V

    new-instance v8, LD2/l;

    const/16 v16, 0x2

    move-object v3, v8

    move-object/from16 v4, p3

    move-object v5, v1

    move-object v6, v12

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, LD2/l;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V

    new-instance v8, LB2/b;

    const/16 v3, 0x9

    invoke-direct {v8, v15, v2, v14, v3}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    new-instance v2, LD2/k;

    move-object v3, v2

    move-object/from16 v4, p3

    move-object v5, v1

    move-object v6, v12

    move-object v7, v13

    move-object v14, v8

    invoke-direct/range {v3 .. v8}, LD2/k;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;LB2/b;)V

    iput-object v2, v0, Ll2/a;->j:LD2/k;

    new-instance v2, LB2/b;

    const/4 v8, 0x4

    move-object v3, v2

    move-object/from16 v4, p3

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, LB2/b;-><init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V

    iput-object v2, v0, Ll2/a;->k:LB2/b;

    new-instance v2, LD2/i;

    const/4 v3, 0x2

    invoke-direct {v2, v9, v12, v13, v3}, LD2/i;-><init>(LG4/d;LB2/b;LC2/c;I)V

    iput-object v2, v0, Ll2/a;->l:LD2/i;

    new-instance v2, LD2/i;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v12, v13, v3}, LD2/i;-><init>(LG4/d;LB2/b;LC2/c;I)V

    iput-object v2, v0, Ll2/a;->m:LD2/i;

    new-instance v2, LD2/i;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v12, v13, v3}, LD2/i;-><init>(LG4/d;LB2/b;LC2/c;I)V

    new-instance v20, LD2/h;

    const/4 v8, 0x0

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    move-object v5, v1

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v3 .. v8}, LD2/h;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V

    new-instance v3, LD2/f;

    const/4 v4, 0x0

    invoke-direct {v3, v10, v1, v12, v4}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    new-instance v1, LB2/c;

    const/4 v4, 0x2

    invoke-direct {v1, v10, v3, v4}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    iput-object v1, v0, Ll2/a;->n:LB2/c;

    new-instance v7, LD2/e;

    const/4 v3, 0x0

    invoke-direct {v7, v10, v1, v3}, LD2/e;-><init>(Ljava/lang/Object;Lh3/b;I)V

    new-instance v21, LB2/b;

    const/4 v8, 0x5

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v3 .. v8}, LB2/b;-><init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V

    iget-object v5, v0, Ll2/a;->c:Lh3/b;

    new-instance v22, LD2/h;

    const/4 v8, 0x1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v3 .. v8}, LD2/h;-><init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V

    iget-object v1, v0, Ll2/a;->g:LB2/b;

    new-instance v3, LD2/j;

    invoke-direct {v3, v9, v1}, LD2/j;-><init>(LG4/d;LB2/b;)V

    iget-object v15, v0, Ll2/a;->j:LD2/k;

    iget-object v1, v0, Ll2/a;->k:LB2/b;

    iget-object v4, v0, Ll2/a;->l:LD2/i;

    iget-object v5, v0, Ll2/a;->m:LD2/i;

    new-instance v27, LK2/c;

    move-object/from16 v14, v27

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    invoke-direct/range {v14 .. v23}, LK2/c;-><init>(LD2/k;LB2/b;LD2/i;LD2/i;LD2/i;LD2/h;LB2/b;LD2/h;LD2/j;)V

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    iget-object v2, v0, Ll2/a;->d:Lh2/d;

    iget-object v3, v0, Ll2/a;->e:Lh3/b;

    new-instance v4, LD2/k;

    const/16 v28, 0x1

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v23 .. v28}, LD2/k;-><init>(Lo3/a;Lh3/b;Lo3/a;Lo3/a;I)V

    invoke-static {v4}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->o:Lh3/b;

    new-instance v4, LD2/e;

    const/4 v1, 0x1

    invoke-direct {v4, v1, v11}, LD2/e;-><init>(ILjava/lang/Object;)V

    iget-object v3, v0, Ll2/a;->c:Lh3/b;

    iget-object v5, v0, Ll2/a;->d:Lh2/d;

    iget-object v6, v0, Ll2/a;->e:Lh3/b;

    new-instance v1, LD2/k;

    const/4 v7, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LD2/k;-><init>(Lo3/a;Lh3/b;Lo3/a;Lo3/a;I)V

    invoke-static {v1}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->p:Lh3/b;

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    new-instance v2, LC2/c;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, LC2/c;-><init>(Lo3/a;I)V

    invoke-static {v2}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->q:Lh3/b;

    new-instance v5, LB2/a;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-direct {v5, v1, v2}, LB2/a;-><init>(ILjava/lang/Object;)V

    iput-object v5, v0, Ll2/a;->r:LB2/a;

    iget-object v13, v0, Ll2/a;->c:Lh3/b;

    iget-object v15, v0, Ll2/a;->g:LB2/b;

    new-instance v1, LD2/g;

    const/4 v7, 0x0

    move-object v2, v1

    move-object/from16 v3, p7

    move-object v4, v13

    move-object v6, v15

    invoke-direct/range {v2 .. v7}, LD2/g;-><init>(LU0/e;Lo3/a;Lh3/b;Lh3/b;I)V

    iput-object v1, v0, Ll2/a;->s:LD2/g;

    iget-object v14, v0, Ll2/a;->r:LB2/a;

    new-instance v1, LD2/g;

    const/16 v16, 0x1

    move-object v11, v1

    move-object/from16 v12, p7

    invoke-direct/range {v11 .. v16}, LD2/g;-><init>(LU0/e;Lo3/a;Lh3/b;Lh3/b;I)V

    iput-object v1, v0, Ll2/a;->t:LD2/g;

    iget-object v4, v0, Ll2/a;->c:Lh3/b;

    iget-object v5, v0, Ll2/a;->g:LB2/b;

    iget-object v6, v0, Ll2/a;->h:LC2/c;

    new-instance v1, LD2/c;

    const/4 v7, 0x0

    move-object v2, v1

    move-object/from16 v3, p5

    invoke-direct/range {v2 .. v7}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    iput-object v1, v0, Ll2/a;->u:LD2/c;

    iget-object v13, v0, Ll2/a;->c:Lh3/b;

    iget-object v14, v0, Ll2/a;->g:LB2/b;

    iget-object v15, v0, Ll2/a;->h:LC2/c;

    new-instance v1, LD2/c;

    const/16 v16, 0x1

    move-object v11, v1

    move-object/from16 v12, p5

    invoke-direct/range {v11 .. v16}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    iput-object v1, v0, Ll2/a;->v:LD2/c;

    iget-object v4, v0, Ll2/a;->c:Lh3/b;

    iget-object v5, v0, Ll2/a;->g:LB2/b;

    iget-object v6, v0, Ll2/a;->h:LC2/c;

    new-instance v1, LD2/c;

    const/4 v7, 0x2

    move-object v2, v1

    move-object/from16 v3, p5

    invoke-direct/range {v2 .. v7}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    iput-object v1, v0, Ll2/a;->w:LD2/c;

    iget-object v1, v0, Ll2/a;->u:LD2/c;

    iget-object v2, v0, Ll2/a;->v:LD2/c;

    iget-object v3, v0, Ll2/a;->w:LD2/c;

    new-instance v4, LB2/b;

    const/16 v5, 0x8

    invoke-direct {v4, v1, v2, v3, v5}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    iput-object v4, v0, Ll2/a;->x:LB2/b;

    iget-object v13, v0, Ll2/a;->c:Lh3/b;

    iget-object v14, v0, Ll2/a;->g:LB2/b;

    iget-object v15, v0, Ll2/a;->h:LC2/c;

    iget-object v1, v0, Ll2/a;->n:LB2/c;

    iget-object v2, v0, Ll2/a;->s:LD2/g;

    iget-object v3, v0, Ll2/a;->t:LD2/g;

    iget-object v4, v0, Ll2/a;->x:LB2/b;

    new-instance v5, LD2/d;

    const/16 v20, 0x1

    move-object v11, v5

    move-object/from16 v12, p4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v20}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    iput-object v5, v0, Ll2/a;->y:LD2/d;

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    iget-object v2, v0, Ll2/a;->g:LB2/b;

    new-instance v3, LD2/f;

    const/4 v4, 0x1

    invoke-direct {v3, v10, v1, v2, v4}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    iput-object v3, v0, Ll2/a;->z:LD2/f;

    iget-object v1, v0, Ll2/a;->z:LD2/f;

    new-instance v2, LB2/c;

    const/4 v3, 0x3

    invoke-direct {v2, v10, v1, v3}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    iput-object v2, v0, Ll2/a;->A:LB2/c;

    iget-object v13, v0, Ll2/a;->c:Lh3/b;

    iget-object v14, v0, Ll2/a;->g:LB2/b;

    iget-object v15, v0, Ll2/a;->h:LC2/c;

    iget-object v1, v0, Ll2/a;->A:LB2/c;

    iget-object v2, v0, Ll2/a;->s:LD2/g;

    iget-object v3, v0, Ll2/a;->t:LD2/g;

    iget-object v4, v0, Ll2/a;->x:LB2/b;

    new-instance v5, LD2/d;

    const/16 v20, 0x2

    move-object v11, v5

    move-object/from16 v12, p4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v20}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    iput-object v5, v0, Ll2/a;->B:LD2/d;

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    iget-object v2, v0, Ll2/a;->g:LB2/b;

    new-instance v3, LD2/f;

    const/4 v4, 0x2

    invoke-direct {v3, v10, v1, v2, v4}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    iput-object v3, v0, Ll2/a;->C:LD2/f;

    iget-object v1, v0, Ll2/a;->C:LD2/f;

    new-instance v2, LB2/c;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v1, v3}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    iput-object v2, v0, Ll2/a;->D:LB2/c;

    iget-object v6, v0, Ll2/a;->c:Lh3/b;

    iget-object v7, v0, Ll2/a;->g:LB2/b;

    iget-object v8, v0, Ll2/a;->h:LC2/c;

    iget-object v9, v0, Ll2/a;->D:LB2/c;

    iget-object v10, v0, Ll2/a;->s:LD2/g;

    iget-object v11, v0, Ll2/a;->t:LD2/g;

    iget-object v12, v0, Ll2/a;->x:LB2/b;

    new-instance v1, LD2/d;

    const/4 v13, 0x0

    move-object v4, v1

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v13}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    iput-object v1, v0, Ll2/a;->E:LD2/d;

    iget-object v1, v0, Ll2/a;->y:LD2/d;

    iget-object v2, v0, Ll2/a;->B:LD2/d;

    iget-object v3, v0, Ll2/a;->E:LD2/d;

    new-instance v4, LB2/b;

    const/4 v5, 0x6

    invoke-direct {v4, v1, v2, v3, v5}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    iput-object v4, v0, Ll2/a;->F:LB2/b;

    iget-object v1, v0, Ll2/a;->g:LB2/b;

    new-instance v2, LD2/j;

    invoke-direct {v2, v1}, LD2/j;-><init>(LB2/b;)V

    invoke-static {v2}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->G:Lh3/b;

    iget-object v1, v0, Ll2/a;->c:Lh3/b;

    iget-object v2, v0, Ll2/a;->g:LB2/b;

    new-instance v3, LB2/c;

    invoke-direct {v3, v1, v2}, LB2/c;-><init>(Lo3/a;LB2/b;)V

    invoke-static {v3}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v1

    iput-object v1, v0, Ll2/a;->H:Lh3/b;

    iget-object v3, v0, Ll2/a;->g:LB2/b;

    iget-object v4, v0, Ll2/a;->h:LC2/c;

    iget-object v5, v0, Ll2/a;->F:LB2/b;

    iget-object v6, v0, Ll2/a;->f:LB2/c;

    iget-object v7, v0, Ll2/a;->s:LD2/g;

    iget-object v8, v0, Ll2/a;->i:LC2/c;

    iget-object v9, v0, Ll2/a;->G:Lh3/b;

    iget-object v10, v0, Ll2/a;->H:Lh3/b;

    new-instance v1, LD2/d;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, LD2/d;-><init>(LB2/b;LC2/c;LB2/b;LB2/c;LD2/g;LC2/c;Lo3/a;Lo3/a;)V

    iput-object v1, v0, Ll2/a;->I:LD2/d;

    iget-object v13, v0, Ll2/a;->g:LB2/b;

    iget-object v14, v0, Ll2/a;->h:LC2/c;

    iget-object v15, v0, Ll2/a;->n:LB2/c;

    new-instance v1, LB2/b;

    const/16 v16, 0x2

    move-object v11, v1

    move-object/from16 v12, p4

    invoke-direct/range {v11 .. v16}, LB2/b;-><init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V

    iput-object v1, v0, Ll2/a;->J:LB2/b;

    iget-object v4, v0, Ll2/a;->g:LB2/b;

    iget-object v5, v0, Ll2/a;->h:LC2/c;

    iget-object v6, v0, Ll2/a;->A:LB2/c;

    new-instance v1, LB2/b;

    const/4 v7, 0x3

    move-object v2, v1

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v7}, LB2/b;-><init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V

    iput-object v1, v0, Ll2/a;->K:LB2/b;

    iget-object v10, v0, Ll2/a;->g:LB2/b;

    iget-object v11, v0, Ll2/a;->h:LC2/c;

    iget-object v12, v0, Ll2/a;->D:LB2/c;

    new-instance v1, LB2/b;

    const/4 v13, 0x1

    move-object v8, v1

    move-object/from16 v9, p4

    invoke-direct/range {v8 .. v13}, LB2/b;-><init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V

    iput-object v1, v0, Ll2/a;->L:LB2/b;

    iget-object v1, v0, Ll2/a;->J:LB2/b;

    iget-object v2, v0, Ll2/a;->K:LB2/b;

    iget-object v3, v0, Ll2/a;->L:LB2/b;

    new-instance v4, LB2/b;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v2, v3, v5}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    iput-object v4, v0, Ll2/a;->M:LB2/b;

    iget-object v1, v0, Ll2/a;->g:LB2/b;

    iget-object v2, v0, Ll2/a;->M:LB2/b;

    iget-object v3, v0, Ll2/a;->s:LD2/g;

    new-instance v4, LB2/b;

    const/16 v5, 0xa

    invoke-direct {v4, v1, v2, v3, v5}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    iput-object v4, v0, Ll2/a;->N:LB2/b;

    return-void
.end method


# virtual methods
.method public final a()Li2/a;
    .locals 1

    new-instance v0, Li2/a;

    iget-object p0, p0, Ll2/a;->c:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Li2/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
