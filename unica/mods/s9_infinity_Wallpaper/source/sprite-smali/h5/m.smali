.class public final Lh5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lh5/f;

.field public b:Lh5/f;

.field public c:I

.field public final d:Lk5/i;

.field public final e:Lk5/i;

.field public f:Lk5/f;

.field public g:Lk5/f;

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public final j:Lk5/i;

.field public final k:Lk5/i;

.field public final l:Lk5/i;

.field public final m:Lk5/i;

.field public final n:Lk5/i;

.field public final o:Lk5/i;

.field public final p:Lk5/i;

.field public final q:Lk5/i;

.field public final r:Lk5/h;

.field public final s:Lk5/h;

.field public final t:Lk5/i;

.field public final u:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->d:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->h:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->i:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->j:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->k:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->l:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->m:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->n:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->o:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->p:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->q:Lk5/i;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lh5/m;->r:Lk5/h;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lh5/m;->s:Lk5/h;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->t:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/m;->u:Lk5/i;

    return-void
.end method


# virtual methods
.method public final a(FII)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lh5/m;->f:Lk5/f;

    iget-object v3, v0, Lh5/m;->r:Lk5/h;

    invoke-virtual {v2, v3, v1}, Lk5/f;->a(Lk5/h;F)V

    iget-object v2, v0, Lh5/m;->g:Lk5/f;

    iget-object v4, v0, Lh5/m;->s:Lk5/h;

    invoke-virtual {v2, v4, v1}, Lk5/f;->a(Lk5/h;F)V

    iget v1, v0, Lh5/m;->c:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    iget-object v2, v0, Lh5/m;->i:Lk5/i;

    iget-object v5, v0, Lh5/m;->h:Lk5/i;

    iget-object v6, v0, Lh5/m;->j:Lk5/i;

    iget-object v7, v0, Lh5/m;->k:Lk5/i;

    iget-object v8, v0, Lh5/m;->e:Lk5/i;

    iget-object v9, v3, Lk5/h;->e:Lk5/d;

    iget-object v10, v4, Lk5/h;->e:Lk5/d;

    iget-object v11, v0, Lh5/m;->u:Lk5/i;

    iget-object v12, v0, Lh5/m;->t:Lk5/i;

    if-eqz v1, :cond_2

    iget-object v13, v0, Lh5/m;->d:Lk5/i;

    iget-object v14, v0, Lh5/m;->n:Lk5/i;

    const/4 v15, 0x1

    if-eq v1, v15, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v10, v8, v14}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v4, v13, v7}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v14}, Lk5/i;->i()V

    invoke-static {v9, v14, v12}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v14}, Lk5/i;->i()V

    iget-object v0, v0, Lh5/m;->a:Lh5/f;

    iget-object v0, v0, Lh5/f;->a:[Lk5/i;

    aget-object v0, v0, p2

    invoke-virtual {v5, v0}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v3, v5, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v6, v7}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v6, v14}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v0

    return v0

    :cond_1
    invoke-static {v9, v8, v14}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v3, v13, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v14}, Lk5/i;->i()V

    invoke-static {v10, v14, v11}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v14}, Lk5/i;->i()V

    iget-object v0, v0, Lh5/m;->b:Lh5/f;

    iget-object v0, v0, Lh5/f;->a:[Lk5/i;

    aget-object v0, v0, p3

    invoke-virtual {v2, v0}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v4, v2, v7}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v7, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v7, v14}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v0

    return v0

    :cond_2
    invoke-static {v9, v8, v12}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    invoke-static {v10, v8, v11}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    iget-object v1, v0, Lh5/m;->a:Lh5/f;

    iget-object v1, v1, Lh5/f;->a:[Lk5/i;

    aget-object v1, v1, p2

    invoke-virtual {v5, v1}, Lk5/i;->k(Lk5/i;)V

    iget-object v0, v0, Lh5/m;->b:Lh5/f;

    iget-object v0, v0, Lh5/f;->a:[Lk5/i;

    aget-object v0, v0, p3

    invoke-virtual {v2, v0}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v3, v5, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-static {v4, v2, v7}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v7, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v7, v8}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v0

    return v0
.end method
