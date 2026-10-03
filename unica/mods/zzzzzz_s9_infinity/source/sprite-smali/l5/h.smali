.class public final Ll5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:[Ll5/a;

.field public final B:Lk5/f;

.field public final C:Lk5/f;

.field public a:I

.field public final b:Lg4/e;

.field public c:Ll5/a;

.field public d:Ln5/c;

.field public e:I

.field public f:I

.field public final g:Lk5/i;

.field public h:Z

.field public final i:Lq5/c;

.field public j:F

.field public final k:Z

.field public final l:Z

.field public m:Z

.field public final n:LG4/d;

.field public final o:[[Lm5/c;

.field public final p:Ll5/g;

.field public final q:Lk5/g;

.field public final r:Lk5/g;

.field public final s:Ll5/f;

.field public t:[Ll5/a;

.field public final u:LG4/d;

.field public final v:Lk5/g;

.field public final w:Ll5/f;

.field public final x:Lh5/n;

.field public final y:LA1/c;

.field public final z:Ll5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const v1, 0x499679e4    # 1232700.5f

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lk5/i;)V
    .locals 10

    new-instance v0, Lq5/c;

    invoke-direct {v0}, Lq5/c;-><init>()V

    new-instance v1, Li5/c;

    invoke-direct {v1}, Li5/c;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Ll5/h;->g:Lk5/i;

    const/4 v3, 0x4

    invoke-static {v3}, Lq/e;->d(I)[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v3}, Lq/e;->d(I)[I

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v5, 0x0

    aput v4, v7, v5

    const-class v4, Lm5/c;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lm5/c;

    iput-object v4, p0, Ll5/h;->o:[[Lm5/c;

    new-instance v4, Ll5/g;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ll5/h;->p:Ll5/g;

    new-instance v4, Lk5/g;

    invoke-direct {v4}, Lk5/g;-><init>()V

    iput-object v4, p0, Ll5/h;->q:Lk5/g;

    new-instance v4, Lk5/g;

    invoke-direct {v4}, Lk5/g;-><init>()V

    iput-object v4, p0, Ll5/h;->r:Lk5/g;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ll5/f;

    invoke-direct {v4}, Ll5/f;-><init>()V

    iput-object v4, p0, Ll5/h;->s:Ll5/f;

    const/16 v4, 0xa

    new-array v4, v4, [Ll5/a;

    iput-object v4, p0, Ll5/h;->t:[Ll5/a;

    new-instance v4, LG4/d;

    const/16 v7, 0x1a

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, LG4/d;-><init>(IZ)V

    iput-object v4, p0, Ll5/h;->u:LG4/d;

    new-instance v4, Lk5/g;

    invoke-direct {v4}, Lk5/g;-><init>()V

    iput-object v4, p0, Ll5/h;->v:Lk5/g;

    new-instance v4, Ll5/f;

    invoke-direct {v4}, Ll5/f;-><init>()V

    iput-object v4, p0, Ll5/h;->w:Ll5/f;

    new-instance v4, Lh5/n;

    invoke-direct {v4}, Lh5/n;-><init>()V

    iput-object v4, p0, Ll5/h;->x:Lh5/n;

    new-instance v4, LA1/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ll5/h;->y:LA1/c;

    new-instance v4, Ll5/g;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ll5/h;->z:Ll5/g;

    new-array v4, v6, [Ll5/a;

    iput-object v4, p0, Ll5/h;->A:[Ll5/a;

    new-instance v4, Lk5/f;

    invoke-direct {v4}, Lk5/f;-><init>()V

    iput-object v4, p0, Ll5/h;->B:Lk5/f;

    new-instance v4, Lk5/f;

    invoke-direct {v4}, Lk5/f;-><init>()V

    iput-object v4, p0, Ll5/h;->C:Lk5/f;

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    new-instance v4, LU0/e;

    invoke-direct {v4}, LU0/e;-><init>()V

    iput-object v0, p0, Ll5/h;->i:Lq5/c;

    const/4 v4, 0x0

    iput-object v4, p0, Ll5/h;->c:Ll5/a;

    iput-object v4, p0, Ll5/h;->d:Ln5/c;

    iput v5, p0, Ll5/h;->e:I

    iput v5, p0, Ll5/h;->f:I

    iput-boolean v8, p0, Ll5/h;->k:Z

    iput-boolean v8, p0, Ll5/h;->l:Z

    iput-boolean v8, p0, Ll5/h;->m:Z

    iput-boolean v8, p0, Ll5/h;->h:Z

    invoke-virtual {v2, p1}, Lk5/i;->k(Lk5/i;)V

    iput v3, p0, Ll5/h;->a:I

    const/4 p1, 0x0

    iput p1, p0, Ll5/h;->j:F

    new-instance p1, Lg4/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p1, Lg4/e;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    iput v4, p1, Lg4/e;->a:I

    iput-object v2, p1, Lg4/e;->d:Ljava/lang/Object;

    new-instance v2, Li5/a;

    invoke-direct {v2, v1}, Li5/a;-><init>(Li5/c;)V

    iput-object v2, p1, Lg4/e;->b:Ljava/lang/Object;

    iput-object p0, p1, Lg4/e;->e:Ljava/lang/Object;

    iput-object p1, p0, Ll5/h;->b:Lg4/e;

    new-instance p1, LG4/d;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, LG4/d;-><init>(IZ)V

    iput-object p1, p0, Ll5/h;->n:LG4/d;

    iget-object p1, v0, Lq5/c;->g:Lq5/b;

    invoke-virtual {p0, p1, v8, v8}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->h:Lq5/b;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v8}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->f:Lq5/b;

    invoke-virtual {p0, p1, v1, v1}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->i:Lq5/b;

    invoke-virtual {p0, p1, v6, v8}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->j:Lq5/b;

    invoke-virtual {p0, p1, v6, v1}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->k:Lq5/b;

    invoke-virtual {p0, p1, v3, v8}, Ll5/h;->a(LY4/a;II)V

    iget-object p1, v0, Lq5/c;->l:Lq5/b;

    invoke-virtual {p0, p1, v3, v1}, Ll5/h;->a(LY4/a;II)V

    return-void
.end method


# virtual methods
.method public final a(LY4/a;II)V
    .locals 3

    new-instance v0, Lm5/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lm5/c;->a:LY4/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm5/c;->b:Z

    invoke-static {p2}, Lq/e;->c(I)I

    move-result v1

    iget-object p0, p0, Ll5/h;->o:[[Lm5/c;

    aget-object v1, p0, v1

    invoke-static {p3}, Lq/e;->c(I)I

    move-result v2

    aput-object v0, v1, v2

    if-eq p2, p3, :cond_0

    new-instance v0, Lm5/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lm5/c;->a:LY4/a;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lm5/c;->b:Z

    invoke-static {p3}, Lq/e;->c(I)I

    move-result p1

    aget-object p0, p0, p1

    invoke-static {p2}, Lq/e;->c(I)I

    move-result p1

    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method public final b(Ll5/b;)Ll5/a;
    .locals 2

    invoke-virtual {p0}, Ll5/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ll5/a;

    invoke-direct {v0, p1, p0}, Ll5/a;-><init>(Ll5/b;Ll5/h;)V

    iput-object v1, v0, Ll5/a;->j:Ll5/a;

    iget-object p1, p0, Ll5/h;->c:Ll5/a;

    iput-object p1, v0, Ll5/a;->k:Ll5/a;

    if-eqz p1, :cond_1

    iput-object v0, p1, Ll5/a;->j:Ll5/a;

    :cond_1
    iput-object v0, p0, Ll5/h;->c:Ll5/a;

    iget p1, p0, Ll5/h;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll5/h;->e:I

    return-object v0
.end method

.method public final c(Ln5/d;)Ln5/c;
    .locals 5

    invoke-virtual {p0}, Ll5/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p1, Ln5/d;->a:I

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    iget-object v2, p0, Ll5/h;->i:Lq5/c;

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_4
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_5
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_7
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_8
    new-instance v0, Ln5/a;

    move-object v3, p1

    check-cast v3, Ln5/b;

    invoke-direct {v0, v2, v3}, Ln5/a;-><init>(Lq5/c;Ln5/b;)V

    goto :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_a
    new-instance v0, Ln5/e;

    move-object v3, p1

    check-cast v3, Ln5/f;

    invoke-direct {v0, v2, v3}, Ln5/e;-><init>(Lq5/c;Ln5/f;)V

    :goto_0
    iput-object v1, v0, Ln5/c;->a:Ln5/c;

    iget-object v2, p0, Ll5/h;->d:Ln5/c;

    iput-object v2, v0, Ln5/c;->b:Ln5/c;

    if-eqz v2, :cond_1

    iput-object v0, v2, Ln5/c;->a:Ln5/c;

    :cond_1
    iput-object v0, p0, Ll5/h;->d:Ln5/c;

    iget v2, p0, Ll5/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ll5/h;->f:I

    iget-object p0, v0, Ln5/c;->c:Lw0/i;

    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    iget-object v2, v0, Ln5/c;->f:Ll5/a;

    iput-object v2, p0, Lw0/i;->e:Ljava/lang/Object;

    iput-object v1, p0, Lw0/i;->g:Ljava/lang/Object;

    iget-object v3, v0, Ln5/c;->e:Ll5/a;

    iget-object v4, v3, Ll5/a;->m:Lw0/i;

    iput-object v4, p0, Lw0/i;->h:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iput-object p0, v4, Lw0/i;->g:Ljava/lang/Object;

    :cond_2
    iput-object p0, v3, Ll5/a;->m:Lw0/i;

    iget-object p0, v0, Ln5/c;->d:Lw0/i;

    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    iput-object v3, p0, Lw0/i;->e:Ljava/lang/Object;

    iput-object v1, p0, Lw0/i;->g:Ljava/lang/Object;

    iget-object v1, v2, Ll5/a;->m:Lw0/i;

    iput-object v1, p0, Lw0/i;->h:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iput-object p0, v1, Lw0/i;->g:Ljava/lang/Object;

    :cond_3
    iput-object p0, v2, Ll5/a;->m:Lw0/i;

    iget-object p0, p1, Ln5/d;->b:Ll5/a;

    iget-object v1, p1, Ln5/d;->c:Ll5/a;

    iget-boolean p1, p1, Ln5/d;->d:Z

    if-nez p1, :cond_5

    iget-object p1, v1, Ll5/a;->n:Lw0/i;

    :goto_1
    if-eqz p1, :cond_5

    iget-object v1, p1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Ll5/a;

    if-ne v1, p0, :cond_4

    iget-object v1, p1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Lm5/a;

    iget v2, v1, Lm5/a;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lm5/a;->a:I

    :cond_4
    iget-object p1, p1, Lw0/i;->h:Ljava/lang/Object;

    check-cast p1, Lw0/i;

    goto :goto_1

    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ll5/a;)V
    .locals 13

    invoke-virtual {p0}, Ll5/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ll5/a;->m:Lw0/i;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v1, Lw0/i;

    iget-object v0, v0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, Ln5/c;

    invoke-virtual {p0, v0}, Ll5/h;->e(Ln5/c;)V

    iput-object v1, p1, Ll5/a;->m:Lw0/i;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Ll5/a;->m:Lw0/i;

    iget-object v1, p1, Ll5/a;->n:Lw0/i;

    :goto_1
    iget-object v2, p0, Ll5/h;->b:Lg4/e;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lw0/i;->h:Ljava/lang/Object;

    check-cast v3, Lw0/i;

    iget-object v1, v1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Lm5/a;

    invoke-virtual {v2, v1}, Lg4/e;->b(Lm5/a;)V

    move-object v1, v3

    goto :goto_1

    :cond_2
    iput-object v0, p1, Ll5/a;->n:Lw0/i;

    iget-object v1, p1, Ll5/a;->l:Ll5/c;

    :goto_2
    if-eqz v1, :cond_6

    iget-object v3, v1, Ll5/c;->b:Ll5/c;

    iget-object v4, v2, Lg4/e;->b:Ljava/lang/Object;

    check-cast v4, Li5/a;

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    iget v7, v1, Ll5/c;->h:I

    if-ge v6, v7, :cond_5

    iget-object v7, v1, Ll5/c;->g:[Ll5/e;

    aget-object v7, v7, v6

    iget v8, v7, Ll5/e;->b:I

    move v9, v5

    :goto_4
    iget v10, v4, Li5/a;->d:I

    const/4 v11, -0x1

    if-ge v9, v10, :cond_4

    iget-object v10, v4, Li5/a;->b:[I

    aget v12, v10, v9

    if-ne v12, v8, :cond_3

    aput v11, v10, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iget-object v9, v4, Li5/a;->a:Li5/c;

    iget-object v10, v9, Li5/c;->b:[Li5/d;

    aget-object v8, v10, v8

    invoke-virtual {v9, v8}, Li5/c;->e(Li5/d;)V

    invoke-virtual {v9, v8}, Li5/c;->c(Li5/d;)V

    iput v11, v7, Ll5/e;->b:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    iput v5, v1, Ll5/c;->h:I

    iput-object v0, v1, Ll5/c;->d:Lj5/e;

    iput-object v0, v1, Ll5/c;->g:[Ll5/e;

    iput-object v0, v1, Ll5/c;->b:Ll5/c;

    iput-object v3, p1, Ll5/a;->l:Ll5/c;

    move-object v1, v3

    goto :goto_2

    :cond_6
    iput-object v0, p1, Ll5/a;->l:Ll5/c;

    iget-object v0, p1, Ll5/a;->j:Ll5/a;

    if-eqz v0, :cond_7

    iget-object v1, p1, Ll5/a;->k:Ll5/a;

    iput-object v1, v0, Ll5/a;->k:Ll5/a;

    :cond_7
    iget-object v1, p1, Ll5/a;->k:Ll5/a;

    if-eqz v1, :cond_8

    iput-object v0, v1, Ll5/a;->j:Ll5/a;

    :cond_8
    iget-object v0, p0, Ll5/h;->c:Ll5/a;

    if-ne p1, v0, :cond_9

    iput-object v1, p0, Ll5/h;->c:Ll5/a;

    :cond_9
    iget p1, p0, Ll5/h;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ll5/h;->e:I

    return-void
.end method

.method public final e(Ln5/c;)V
    .locals 7

    invoke-virtual {p0}, Ll5/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Ln5/c;->h:Z

    iget-object v1, p1, Ln5/c;->a:Ln5/c;

    if-eqz v1, :cond_1

    iget-object v2, p1, Ln5/c;->b:Ln5/c;

    iput-object v2, v1, Ln5/c;->b:Ln5/c;

    :cond_1
    iget-object v2, p1, Ln5/c;->b:Ln5/c;

    if-eqz v2, :cond_2

    iput-object v1, v2, Ln5/c;->a:Ln5/c;

    :cond_2
    iget-object v1, p0, Ll5/h;->d:Ln5/c;

    if-ne p1, v1, :cond_3

    iput-object v2, p0, Ll5/h;->d:Ln5/c;

    :cond_3
    iget-object v1, p1, Ln5/c;->e:Ll5/a;

    iget-object v2, p1, Ln5/c;->f:Ll5/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ll5/a;->f(Z)V

    invoke-virtual {v2, v3}, Ll5/a;->f(Z)V

    iget-object v4, p1, Ln5/c;->c:Lw0/i;

    iget-object v5, v4, Lw0/i;->g:Ljava/lang/Object;

    check-cast v5, Lw0/i;

    if-eqz v5, :cond_4

    iget-object v6, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Lw0/i;

    iput-object v6, v5, Lw0/i;->h:Ljava/lang/Object;

    :cond_4
    iget-object v6, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Lw0/i;

    if-eqz v6, :cond_5

    iput-object v5, v6, Lw0/i;->g:Ljava/lang/Object;

    :cond_5
    iget-object v5, v1, Ll5/a;->m:Lw0/i;

    if-ne v4, v5, :cond_6

    iput-object v6, v1, Ll5/a;->m:Lw0/i;

    :cond_6
    const/4 v5, 0x0

    iput-object v5, v4, Lw0/i;->g:Ljava/lang/Object;

    iput-object v5, v4, Lw0/i;->h:Ljava/lang/Object;

    iget-object p1, p1, Ln5/c;->d:Lw0/i;

    iget-object v4, p1, Lw0/i;->g:Ljava/lang/Object;

    check-cast v4, Lw0/i;

    if-eqz v4, :cond_7

    iget-object v6, p1, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Lw0/i;

    iput-object v6, v4, Lw0/i;->h:Ljava/lang/Object;

    :cond_7
    iget-object v6, p1, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Lw0/i;

    if-eqz v6, :cond_8

    iput-object v4, v6, Lw0/i;->g:Ljava/lang/Object;

    :cond_8
    iget-object v4, v2, Ll5/a;->m:Lw0/i;

    if-ne p1, v4, :cond_9

    iput-object v6, v2, Ll5/a;->m:Lw0/i;

    :cond_9
    iput-object v5, p1, Lw0/i;->g:Ljava/lang/Object;

    iput-object v5, p1, Lw0/i;->h:Ljava/lang/Object;

    iget p1, p0, Ll5/h;->f:I

    sub-int/2addr p1, v3

    iput p1, p0, Ll5/h;->f:I

    if-nez v0, :cond_b

    iget-object p0, v2, Ll5/a;->n:Lw0/i;

    :goto_0
    if-eqz p0, :cond_b

    iget-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p1, Ll5/a;

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p1, Lm5/a;

    iget v0, p1, Lm5/a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lm5/a;->a:I

    :cond_a
    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Lw0/i;

    goto :goto_0

    :cond_b
    return-void
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, Ll5/h;->a:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Ll5/g;)V
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x4

    const/4 v4, 0x1

    iget-object v5, v0, Ll5/h;->b:Lg4/e;

    iget-object v6, v5, Lg4/e;->d:Ljava/lang/Object;

    check-cast v6, Lg5/a;

    iget-object v7, v0, Ll5/h;->w:Ll5/f;

    const/16 v8, 0x40

    const/16 v9, 0x20

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v6}, Ll5/f;->b(IIILg5/a;)V

    iget-boolean v6, v0, Ll5/h;->m:Z

    const/4 v8, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    iget-object v6, v0, Ll5/h;->c:Ll5/a;

    :goto_0
    if-eqz v6, :cond_0

    iget v12, v6, Ll5/a;->a:I

    and-int/lit8 v12, v12, -0x2

    iput v12, v6, Ll5/a;->a:I

    iget-object v12, v6, Ll5/a;->d:Lk5/f;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Ll5/a;->k:Ll5/a;

    goto :goto_0

    :cond_0
    iget-object v6, v5, Lg4/e;->c:Ljava/lang/Object;

    check-cast v6, Lm5/a;

    :goto_1
    if-eqz v6, :cond_1

    iget v12, v6, Lm5/a;->a:I

    and-int/lit8 v12, v12, -0x22

    iput v12, v6, Lm5/a;->a:I

    iput v8, v6, Lm5/a;->k:F

    iput v11, v6, Lm5/a;->l:F

    iget-object v6, v6, Lm5/a;->c:Lm5/a;

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v6, v5, Lg4/e;->c:Ljava/lang/Object;

    check-cast v6, Lm5/a;

    const/4 v12, 0x0

    move v13, v11

    :goto_3
    const/4 v14, 0x3

    if-eqz v6, :cond_28

    iget v2, v6, Lm5/a;->a:I

    and-int/lit8 v10, v2, 0x4

    if-ne v10, v3, :cond_2

    iget v10, v6, Lm5/a;->k:F

    const/high16 v17, 0x41000000    # 8.0f

    cmpl-float v10, v10, v17

    if-lez v10, :cond_3

    :cond_2
    move-object/from16 v24, v5

    move-object v3, v6

    move-object/from16 v22, v7

    move v5, v9

    move-object/from16 v30, v12

    move/from16 v31, v13

    goto/16 :goto_1d

    :cond_3
    and-int/2addr v2, v9

    if-eqz v2, :cond_4

    iget v2, v6, Lm5/a;->l:F

    move-object/from16 v24, v5

    move-object v3, v6

    move-object/from16 v22, v7

    move v5, v9

    move-object/from16 v30, v12

    move/from16 v31, v13

    goto/16 :goto_1c

    :cond_4
    iget-object v2, v6, Lm5/a;->f:Ll5/c;

    iget-object v10, v6, Lm5/a;->g:Ll5/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v2, Ll5/c;->c:Ll5/a;

    iget-object v3, v10, Ll5/c;->c:Ll5/a;

    iget v15, v9, Ll5/a;->x:I

    iget v8, v3, Ll5/a;->x:I

    invoke-virtual {v9}, Ll5/a;->d()Z

    move-result v21

    if-eqz v21, :cond_5

    if-eq v15, v4, :cond_5

    move/from16 v21, v4

    goto :goto_4

    :cond_5
    const/16 v21, 0x0

    :goto_4
    invoke-virtual {v3}, Ll5/a;->d()Z

    move-result v22

    if-eqz v22, :cond_6

    if-eq v8, v4, :cond_6

    move/from16 v22, v4

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    if-nez v21, :cond_7

    if-nez v22, :cond_7

    :goto_6
    move-object/from16 v24, v5

    move-object v3, v6

    move-object/from16 v22, v7

    move-object/from16 v30, v12

    move/from16 v31, v13

    const/16 v5, 0x20

    goto/16 :goto_1d

    :cond_7
    invoke-virtual {v9}, Ll5/a;->e()Z

    move-result v21

    if-nez v21, :cond_9

    if-eq v15, v14, :cond_8

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move v15, v4

    :goto_8
    invoke-virtual {v3}, Ll5/a;->e()Z

    move-result v21

    if-nez v21, :cond_b

    if-eq v8, v14, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    move v8, v4

    :goto_a
    if-nez v15, :cond_c

    if-nez v8, :cond_c

    goto :goto_6

    :cond_c
    iget-object v8, v9, Ll5/a;->d:Lk5/f;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Ll5/a;->d:Lk5/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Ll5/h;->x:Lh5/n;

    iget-object v15, v9, Lh5/n;->a:Lh5/f;

    iget-object v2, v2, Ll5/c;->d:Lj5/e;

    invoke-virtual {v15, v2}, Lh5/f;->b(Lj5/e;)V

    iget-object v2, v10, Ll5/c;->d:Lj5/e;

    iget-object v10, v9, Lh5/n;->b:Lh5/f;

    invoke-virtual {v10, v2}, Lh5/f;->b(Lj5/e;)V

    iget-object v2, v9, Lh5/n;->c:Lk5/f;

    invoke-virtual {v2, v8}, Lk5/f;->b(Lk5/f;)V

    iget-object v8, v9, Lh5/n;->d:Lk5/f;

    invoke-virtual {v8, v3}, Lk5/f;->b(Lk5/f;)V

    iput v11, v9, Lh5/n;->e:F

    iget-object v3, v0, Ll5/h;->i:Lq5/c;

    iget-object v3, v3, Lq5/c;->n:Lh5/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Ll5/h;->y:LA1/c;

    iput v4, v15, LA1/c;->b:I

    iget v11, v9, Lh5/n;->e:F

    iput v11, v15, LA1/c;->a:F

    iget-object v11, v3, Lh5/o;->h:Lk5/f;

    invoke-virtual {v11, v2}, Lk5/f;->b(Lk5/f;)V

    iget-object v2, v3, Lh5/o;->i:Lk5/f;

    invoke-virtual {v2, v8}, Lk5/f;->b(Lk5/f;)V

    iget v8, v11, Lk5/f;->g:F

    const v22, 0x40c90fdb

    div-float v14, v8, v22

    sget-object v23, Lk5/c;->d:[F

    sget v23, Lk5/e;->a:I

    float-to-int v4, v14

    const/16 v20, 0x0

    cmpg-float v24, v14, v20

    if-gez v24, :cond_d

    int-to-float v1, v4

    cmpl-float v1, v14, v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    sub-int/2addr v4, v1

    :cond_d
    int-to-float v1, v4

    mul-float v1, v1, v22

    sub-float/2addr v8, v1

    iput v8, v11, Lk5/f;->g:F

    iget v4, v11, Lk5/f;->h:F

    sub-float/2addr v4, v1

    iput v4, v11, Lk5/f;->h:F

    iget v1, v2, Lk5/f;->g:F

    div-float v4, v1, v22

    float-to-int v8, v4

    const/4 v14, 0x0

    cmpg-float v24, v4, v14

    if-gez v24, :cond_e

    int-to-float v14, v8

    cmpl-float v4, v4, v14

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    sub-int/2addr v8, v4

    :cond_e
    int-to-float v4, v8

    mul-float v4, v4, v22

    sub-float/2addr v1, v4

    iput v1, v2, Lk5/f;->g:F

    iget v1, v2, Lk5/f;->h:F

    sub-float/2addr v1, v4

    iput v1, v2, Lk5/f;->h:F

    iget v1, v9, Lh5/n;->e:F

    iget-object v4, v9, Lh5/n;->a:Lh5/f;

    iget v8, v4, Lh5/f;->c:F

    iget v9, v10, Lh5/f;->c:F

    add-float/2addr v8, v9

    const v9, 0x3c75c28f    # 0.015f

    sub-float/2addr v8, v9

    const v9, 0x3ba3d70a    # 0.005f

    cmpl-float v14, v9, v8

    if-lez v14, :cond_f

    const v19, 0x3ba3d70a    # 0.005f

    goto :goto_b

    :cond_f
    move/from16 v19, v8

    :goto_b
    iget-object v8, v3, Lh5/o;->a:Lh5/h;

    const/4 v9, 0x0

    iput v9, v8, Lh5/h;->b:I

    iget-object v14, v3, Lh5/o;->b:LK/l;

    iput-object v4, v14, LK/l;->b:Ljava/lang/Object;

    iput-object v10, v14, LK/l;->c:Ljava/lang/Object;

    iput-boolean v9, v14, LK/l;->a:Z

    move-object/from16 v24, v5

    move-object/from16 v22, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c
    iget-object v5, v3, Lh5/o;->c:Lk5/h;

    invoke-virtual {v11, v5, v7}, Lk5/f;->a(Lk5/h;F)V

    iget-object v0, v3, Lh5/o;->d:Lk5/h;

    invoke-virtual {v2, v0, v7}, Lk5/f;->a(Lk5/h;F)V

    iput-object v5, v14, LK/l;->d:Ljava/lang/Object;

    iput-object v0, v14, LK/l;->e:Ljava/io/Serializable;

    iget-object v0, v3, Lh5/o;->j:Lq5/c;

    iget-object v0, v0, Lq5/c;->o:LM1/d;

    iget-object v5, v3, Lh5/o;->e:Lh5/j;

    invoke-virtual {v0, v5, v8, v14}, LM1/d;->a(Lh5/j;Lh5/h;LK/l;)V

    iget v0, v5, Lh5/j;->c:F

    const/4 v5, 0x0

    cmpg-float v20, v0, v5

    if-gtz v20, :cond_10

    const/4 v14, 0x3

    iput v14, v15, LA1/c;->b:I

    iput v5, v15, LA1/c;->a:F

    goto :goto_d

    :cond_10
    move-object/from16 v25, v14

    const v5, 0x3aa3d70a    # 0.00125f

    add-float v14, v19, v5

    cmpg-float v0, v0, v14

    if-gez v0, :cond_11

    const/4 v0, 0x4

    iput v0, v15, LA1/c;->b:I

    iput v7, v15, LA1/c;->a:F

    :goto_d
    move-object/from16 v32, v6

    move-object/from16 v30, v12

    move/from16 v31, v13

    move-object v10, v15

    goto/16 :goto_1a

    :cond_11
    iget-object v0, v3, Lh5/o;->f:Lh5/m;

    iput-object v4, v0, Lh5/m;->a:Lh5/f;

    iput-object v10, v0, Lh5/m;->b:Lh5/f;

    iget v5, v8, Lh5/h;->b:I

    iput-object v11, v0, Lh5/m;->f:Lk5/f;

    iput-object v2, v0, Lh5/m;->g:Lk5/f;

    move-object/from16 v27, v2

    iget-object v2, v0, Lh5/m;->r:Lk5/h;

    invoke-virtual {v11, v2, v7}, Lk5/f;->a(Lk5/h;F)V

    move-object/from16 v28, v10

    iget-object v10, v0, Lh5/m;->g:Lk5/f;

    move-object/from16 v29, v11

    iget-object v11, v0, Lh5/m;->s:Lk5/h;

    invoke-virtual {v10, v11, v7}, Lk5/f;->a(Lk5/h;F)V

    iget-object v10, v0, Lh5/m;->i:Lk5/i;

    move-object/from16 v30, v12

    iget-object v12, v0, Lh5/m;->h:Lk5/i;

    move/from16 v31, v13

    iget-object v13, v0, Lh5/m;->k:Lk5/i;

    move-object/from16 v32, v6

    iget-object v6, v0, Lh5/m;->j:Lk5/i;

    move/from16 v33, v9

    iget-object v9, v0, Lh5/m;->e:Lk5/i;

    move/from16 v34, v7

    iget-object v7, v8, Lh5/h;->d:[I

    move/from16 v35, v1

    iget-object v1, v8, Lh5/h;->c:[I

    move-object/from16 v36, v8

    iget-object v8, v0, Lh5/m;->n:Lk5/i;

    move-object/from16 v37, v15

    iget-object v15, v0, Lh5/m;->d:Lk5/i;

    move/from16 v38, v14

    iget-object v14, v2, Lk5/h;->e:Lk5/d;

    move-object/from16 v39, v3

    iget-object v3, v11, Lk5/h;->e:Lk5/d;

    move-object/from16 v40, v14

    const/4 v14, 0x1

    if-ne v5, v14, :cond_12

    iput v14, v0, Lh5/m;->c:I

    iget-object v5, v0, Lh5/m;->a:Lh5/f;

    const/4 v14, 0x0

    aget v1, v1, v14

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v1, v5, v1

    invoke-virtual {v12, v1}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v0, Lh5/m;->b:Lh5/f;

    aget v5, v7, v14

    iget-object v1, v1, Lh5/f;->a:[Lk5/i;

    aget-object v1, v1, v5

    invoke-virtual {v10, v1}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v2, v12, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-static {v11, v10, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget v1, v13, Lk5/i;->d:F

    iput v1, v9, Lk5/i;->d:F

    iget v1, v13, Lk5/i;->e:F

    iput v1, v9, Lk5/i;->e:F

    invoke-virtual {v9, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v9}, Lk5/i;->j()F

    move-object v5, v10

    move-object/from16 v1, v40

    :goto_e
    move-object/from16 v40, v4

    goto/16 :goto_f

    :cond_12
    const/4 v5, 0x0

    aget v14, v1, v5

    const/16 v16, 0x1

    aget v5, v1, v16

    move-object/from16 v42, v10

    iget-object v10, v0, Lh5/m;->q:Lk5/i;

    const/high16 v43, -0x40800000    # -1.0f

    if-ne v14, v5, :cond_14

    const/4 v5, 0x3

    iput v5, v0, Lh5/m;->c:I

    iget-object v5, v0, Lh5/m;->b:Lh5/f;

    const/4 v14, 0x0

    aget v41, v7, v14

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v5, v5, v41

    iget-object v14, v0, Lh5/m;->o:Lk5/i;

    invoke-virtual {v14, v5}, Lk5/i;->k(Lk5/i;)V

    iget-object v5, v0, Lh5/m;->b:Lh5/f;

    const/16 v23, 0x1

    aget v7, v7, v23

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v5, v5, v7

    iget-object v7, v0, Lh5/m;->p:Lk5/i;

    invoke-virtual {v7, v5}, Lk5/i;->k(Lk5/i;)V

    iget v5, v7, Lk5/i;->d:F

    iput v5, v10, Lk5/i;->d:F

    iget v5, v7, Lk5/i;->e:F

    iput v5, v10, Lk5/i;->e:F

    invoke-virtual {v10, v14}, Lk5/i;->m(Lk5/i;)V

    iget v5, v10, Lk5/i;->e:F

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v5, v5, v21

    iput v5, v9, Lk5/i;->d:F

    iget v5, v10, Lk5/i;->d:F

    mul-float v5, v5, v43

    iput v5, v9, Lk5/i;->e:F

    invoke-virtual {v9}, Lk5/i;->j()F

    invoke-static {v3, v9, v8}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget v5, v14, Lk5/i;->d:F

    iput v5, v15, Lk5/i;->d:F

    iget v5, v14, Lk5/i;->e:F

    iput v5, v15, Lk5/i;->e:F

    invoke-virtual {v15, v7}, Lk5/i;->b(Lk5/i;)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v15, v5}, Lk5/i;->h(F)V

    invoke-static {v11, v15, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    const/4 v5, 0x0

    aget v1, v1, v5

    iget-object v5, v4, Lh5/f;->a:[Lk5/i;

    aget-object v1, v5, v1

    invoke-virtual {v12, v1}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v2, v12, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget v1, v6, Lk5/i;->d:F

    iput v1, v10, Lk5/i;->d:F

    iget v1, v6, Lk5/i;->e:F

    iput v1, v10, Lk5/i;->e:F

    invoke-virtual {v10, v13}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v10, v8}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_13

    invoke-virtual {v9}, Lk5/i;->i()V

    :cond_13
    move-object/from16 v1, v40

    move-object/from16 v5, v42

    goto/16 :goto_e

    :cond_14
    const/4 v5, 0x2

    iput v5, v0, Lh5/m;->c:I

    iget-object v5, v0, Lh5/m;->a:Lh5/f;

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v5, v5, v14

    iget-object v14, v0, Lh5/m;->l:Lk5/i;

    invoke-virtual {v14, v5}, Lk5/i;->k(Lk5/i;)V

    iget-object v5, v0, Lh5/m;->a:Lh5/f;

    const/16 v23, 0x1

    aget v1, v1, v23

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v1, v5, v1

    iget-object v5, v0, Lh5/m;->m:Lk5/i;

    invoke-virtual {v5, v1}, Lk5/i;->k(Lk5/i;)V

    iget v1, v5, Lk5/i;->d:F

    iput v1, v10, Lk5/i;->d:F

    iget v1, v5, Lk5/i;->e:F

    iput v1, v10, Lk5/i;->e:F

    invoke-virtual {v10, v14}, Lk5/i;->m(Lk5/i;)V

    iget v1, v10, Lk5/i;->e:F

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v1, v1, v21

    iput v1, v9, Lk5/i;->d:F

    iget v1, v10, Lk5/i;->d:F

    mul-float v1, v1, v43

    iput v1, v9, Lk5/i;->e:F

    invoke-virtual {v9}, Lk5/i;->j()F

    move-object/from16 v1, v40

    invoke-static {v1, v9, v8}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    move-object/from16 v40, v4

    iget v4, v14, Lk5/i;->d:F

    iput v4, v15, Lk5/i;->d:F

    iget v4, v14, Lk5/i;->e:F

    iput v4, v15, Lk5/i;->e:F

    invoke-virtual {v15, v5}, Lk5/i;->b(Lk5/i;)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v15, v4}, Lk5/i;->h(F)V

    invoke-static {v2, v15, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v4, v0, Lh5/m;->b:Lh5/f;

    const/4 v5, 0x0

    aget v7, v7, v5

    iget-object v4, v4, Lh5/f;->a:[Lk5/i;

    aget-object v4, v4, v7

    move-object/from16 v5, v42

    invoke-virtual {v5, v4}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v11, v5, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget v4, v13, Lk5/i;->d:F

    iput v4, v10, Lk5/i;->d:F

    iget v4, v13, Lk5/i;->e:F

    iput v4, v10, Lk5/i;->e:F

    invoke-virtual {v10, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v10, v8}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v4

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_15

    invoke-virtual {v9}, Lk5/i;->i()V

    :cond_15
    :goto_f
    move/from16 v7, v35

    const/4 v4, 0x0

    :goto_10
    iget-object v10, v0, Lh5/m;->f:Lk5/f;

    invoke-virtual {v10, v2, v7}, Lk5/f;->a(Lk5/h;F)V

    iget-object v10, v0, Lh5/m;->g:Lk5/f;

    invoke-virtual {v10, v11, v7}, Lk5/f;->a(Lk5/h;F)V

    iget v10, v0, Lh5/m;->c:I

    invoke-static {v10}, Lq/e;->c(I)I

    move-result v10

    move-object/from16 v14, v39

    move/from16 v39, v7

    iget-object v7, v14, Lh5/o;->g:[I

    move-object/from16 v41, v14

    iget-object v14, v0, Lh5/m;->u:Lk5/i;

    move/from16 v42, v4

    iget-object v4, v0, Lh5/m;->t:Lk5/i;

    if-eqz v10, :cond_18

    const/16 v43, -0x1

    move-object/from16 v44, v5

    const/4 v5, 0x1

    if-eq v10, v5, :cond_17

    const/4 v5, 0x2

    if-eq v10, v5, :cond_16

    const/4 v5, 0x0

    aput v43, v7, v5

    const/4 v10, 0x1

    aput v43, v7, v10

    move-object/from16 v5, v44

    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_16
    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v9, v8}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v11, v15, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    invoke-static {v1, v8, v4}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    aput v43, v7, v10

    iget-object v10, v0, Lh5/m;->a:Lh5/f;

    invoke-virtual {v10, v4}, Lh5/f;->a(Lk5/i;)I

    move-result v4

    aput v4, v7, v5

    iget-object v5, v0, Lh5/m;->a:Lh5/f;

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v4, v5, v4

    invoke-virtual {v12, v4}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v2, v12, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v6, v13}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v6, v8}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v4

    move-object/from16 v5, v44

    goto :goto_11

    :cond_17
    invoke-static {v1, v9, v8}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v2, v15, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    invoke-static {v3, v8, v14}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v8}, Lk5/i;->i()V

    const/4 v4, 0x0

    aput v43, v7, v4

    iget-object v4, v0, Lh5/m;->b:Lh5/f;

    invoke-virtual {v4, v14}, Lh5/f;->a(Lk5/i;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v7, v5

    iget-object v5, v0, Lh5/m;->b:Lh5/f;

    iget-object v5, v5, Lh5/f;->a:[Lk5/i;

    aget-object v4, v5, v4

    move-object/from16 v5, v44

    invoke-virtual {v5, v4}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v11, v5, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v13, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v13, v8}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v4

    goto :goto_11

    :cond_18
    invoke-static {v1, v9, v4}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v9}, Lk5/i;->i()V

    invoke-static {v3, v9, v14}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v9}, Lk5/i;->i()V

    iget-object v10, v0, Lh5/m;->a:Lh5/f;

    invoke-virtual {v10, v4}, Lh5/f;->a(Lk5/i;)I

    move-result v4

    const/4 v10, 0x0

    aput v4, v7, v10

    iget-object v4, v0, Lh5/m;->b:Lh5/f;

    invoke-virtual {v4, v14}, Lh5/f;->a(Lk5/i;)I

    move-result v4

    const/4 v14, 0x1

    aput v4, v7, v14

    iget-object v4, v0, Lh5/m;->a:Lh5/f;

    aget v23, v7, v10

    iget-object v4, v4, Lh5/f;->a:[Lk5/i;

    aget-object v4, v4, v23

    invoke-virtual {v12, v4}, Lk5/i;->k(Lk5/i;)V

    iget-object v4, v0, Lh5/m;->b:Lh5/f;

    aget v10, v7, v14

    iget-object v4, v4, Lh5/f;->a:[Lk5/i;

    aget-object v4, v4, v10

    invoke-virtual {v5, v4}, Lk5/i;->k(Lk5/i;)V

    invoke-static {v2, v12, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-static {v11, v5, v13}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-virtual {v13, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v13, v9}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v4

    :goto_11
    cmpl-float v10, v4, v38

    if-lez v10, :cond_19

    const/4 v0, 0x5

    move-object/from16 v10, v37

    iput v0, v10, LA1/c;->b:I

    move/from16 v14, v35

    iput v14, v10, LA1/c;->a:F

    move/from16 v7, v34

    :goto_12
    const/4 v0, 0x1

    :goto_13
    const/16 v23, 0x1

    goto/16 :goto_19

    :cond_19
    move/from16 v14, v35

    move-object/from16 v10, v37

    const v26, 0x3aa3d70a    # 0.00125f

    sub-float v35, v19, v26

    cmpl-float v37, v4, v35

    if-lez v37, :cond_1a

    move/from16 v7, v39

    const/4 v0, 0x0

    goto :goto_13

    :cond_1a
    move-object/from16 v37, v1

    const/16 v16, 0x0

    aget v1, v7, v16

    move-object/from16 v43, v2

    const/16 v23, 0x1

    aget v2, v7, v23

    move-object/from16 v44, v3

    move/from16 v3, v34

    invoke-virtual {v0, v3, v1, v2}, Lh5/m;->a(FII)F

    move-result v1

    cmpg-float v2, v1, v35

    if-gez v2, :cond_1b

    const/4 v2, 0x2

    iput v2, v10, LA1/c;->b:I

    iput v3, v10, LA1/c;->a:F

    :goto_14
    move v7, v3

    goto :goto_12

    :cond_1b
    cmpg-float v2, v1, v38

    if-gtz v2, :cond_1c

    const/4 v2, 0x4

    iput v2, v10, LA1/c;->b:I

    iput v3, v10, LA1/c;->a:F

    goto :goto_14

    :cond_1c
    move/from16 v34, v3

    move/from16 v45, v34

    move-object/from16 v46, v5

    move/from16 v35, v39

    const/4 v2, 0x0

    :cond_1d
    const/4 v3, 0x1

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_1e

    sub-float v3, v19, v1

    sub-float v5, v35, v34

    mul-float/2addr v5, v3

    sub-float v3, v4, v1

    div-float/2addr v5, v3

    add-float v5, v5, v34

    move v3, v5

    :goto_15
    const/16 v16, 0x0

    goto :goto_16

    :cond_1e
    add-float v3, v34, v35

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    goto :goto_15

    :goto_16
    aget v5, v7, v16

    move/from16 v47, v1

    const/16 v23, 0x1

    aget v1, v7, v23

    invoke-virtual {v0, v3, v5, v1}, Lh5/m;->a(FII)F

    move-result v1

    sub-float v5, v1, v19

    invoke-static {v5}, Lk5/c;->M(F)F

    move-result v5

    const v26, 0x3aa3d70a    # 0.00125f

    cmpg-float v5, v5, v26

    if-gez v5, :cond_1f

    move v7, v3

    goto :goto_18

    :cond_1f
    cmpl-float v5, v1, v19

    if-lez v5, :cond_20

    move/from16 v34, v3

    goto :goto_17

    :cond_20
    move v4, v1

    move/from16 v35, v3

    move/from16 v1, v47

    :goto_17
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1d

    move/from16 v7, v39

    :goto_18
    sget v1, Lh5/o;->l:I

    if-le v1, v2, :cond_21

    move v2, v1

    :cond_21
    sput v2, Lh5/o;->l:I

    add-int/lit8 v4, v42, 0x1

    const/16 v1, 0x8

    if-ne v4, v1, :cond_26

    move/from16 v7, v45

    const/4 v0, 0x0

    :goto_19
    add-int/lit8 v9, v33, 0x1

    if-eqz v0, :cond_22

    goto :goto_1a

    :cond_22
    const/16 v0, 0x3e8

    if-ne v9, v0, :cond_25

    const/4 v0, 0x2

    iput v0, v10, LA1/c;->b:I

    iput v7, v10, LA1/c;->a:F

    :goto_1a
    sget v0, Lh5/o;->k:I

    if-le v0, v9, :cond_23

    move v9, v0

    :cond_23
    sput v9, Lh5/o;->k:I

    iget v0, v10, LA1/c;->a:F

    iget v1, v10, LA1/c;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v11, v1, v0

    const/4 v0, 0x0

    add-float/2addr v11, v0

    invoke-static {v11, v1}, Lk5/c;->Q(FF)F

    move-result v0

    move v2, v0

    move-object/from16 v3, v32

    goto :goto_1b

    :cond_24
    move-object/from16 v3, v32

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1b
    iput v2, v3, Lm5/a;->l:F

    iget v0, v3, Lm5/a;->a:I

    const/16 v5, 0x20

    or-int/2addr v0, v5

    iput v0, v3, Lm5/a;->a:I

    :goto_1c
    cmpg-float v0, v2, v31

    if-gez v0, :cond_27

    move v13, v2

    move-object v12, v3

    goto :goto_1e

    :cond_25
    move-object/from16 v0, p0

    move-object v15, v10

    move v1, v14

    move-object/from16 v14, v25

    move-object/from16 v2, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move/from16 v13, v31

    move-object/from16 v6, v32

    move-object/from16 v8, v36

    move-object/from16 v4, v40

    move-object/from16 v3, v41

    goto/16 :goto_c

    :cond_26
    move/from16 v35, v14

    move-object/from16 v1, v37

    move-object/from16 v39, v41

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    move/from16 v34, v45

    move-object/from16 v5, v46

    move-object/from16 v37, v10

    goto/16 :goto_10

    :cond_27
    :goto_1d
    move-object/from16 v12, v30

    move/from16 v13, v31

    :goto_1e
    iget-object v6, v3, Lm5/a;->c:Lm5/a;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v9, v5

    move-object/from16 v7, v22

    move-object/from16 v5, v24

    goto/16 :goto_3

    :cond_28
    move-object/from16 v24, v5

    move-object/from16 v22, v7

    move v5, v9

    move-object/from16 v30, v12

    move/from16 v31, v13

    if-eqz v30, :cond_29

    const v0, 0x3f7fffec    # 0.9999988f

    cmpg-float v0, v0, v31

    if-gez v0, :cond_2a

    :cond_29
    const/4 v1, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_37

    :cond_2a
    move-object/from16 v12, v30

    iget-object v0, v12, Lm5/a;->f:Ll5/c;

    iget-object v1, v12, Lm5/a;->g:Ll5/c;

    iget-object v0, v0, Ll5/c;->c:Ll5/a;

    iget-object v1, v1, Ll5/c;->c:Ll5/a;

    iget-object v2, v0, Ll5/a;->d:Lk5/f;

    move-object/from16 v3, p0

    iget-object v4, v3, Ll5/h;->B:Lk5/f;

    invoke-virtual {v4, v2}, Lk5/f;->b(Lk5/f;)V

    iget-object v2, v1, Ll5/a;->d:Lk5/f;

    iget-object v6, v3, Ll5/h;->C:Lk5/f;

    invoke-virtual {v6, v2}, Lk5/f;->b(Lk5/f;)V

    move/from16 v11, v31

    invoke-virtual {v0, v11}, Ll5/a;->a(F)V

    invoke-virtual {v1, v11}, Ll5/a;->a(F)V

    move-object/from16 v2, v24

    iget-object v7, v2, Lg4/e;->d:Ljava/lang/Object;

    check-cast v7, Lg5/a;

    invoke-virtual {v12, v7}, Lm5/a;->b(Lg5/a;)V

    iget v7, v12, Lm5/a;->a:I

    and-int/lit8 v8, v7, -0x21

    iput v8, v12, Lm5/a;->a:I

    iget v8, v12, Lm5/a;->k:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    iput v8, v12, Lm5/a;->k:F

    const/4 v8, 0x4

    and-int/lit8 v9, v7, 0x4

    if-ne v9, v8, :cond_48

    const/4 v8, 0x2

    and-int/lit8 v9, v7, 0x2

    if-ne v9, v8, :cond_47

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ll5/a;->f(Z)V

    invoke-virtual {v1, v8}, Ll5/a;->f(Z)V

    move-object/from16 v9, v22

    const/4 v6, 0x0

    iput v6, v9, Ll5/f;->g:I

    iput v6, v9, Ll5/f;->i:I

    iput v6, v9, Ll5/f;->h:I

    invoke-virtual {v9, v0}, Ll5/f;->a(Ll5/a;)V

    invoke-virtual {v9, v1}, Ll5/f;->a(Ll5/a;)V

    iget-object v6, v9, Ll5/f;->c:[Lm5/a;

    iget v7, v9, Ll5/f;->i:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v9, Ll5/f;->i:I

    aput-object v12, v6, v7

    iget v6, v0, Ll5/a;->a:I

    or-int/2addr v6, v8

    iput v6, v0, Ll5/a;->a:I

    iget v6, v1, Ll5/a;->a:I

    or-int/2addr v6, v8

    iput v6, v1, Ll5/a;->a:I

    iget v6, v12, Lm5/a;->a:I

    or-int/2addr v6, v8

    iput v6, v12, Lm5/a;->a:I

    iget-object v6, v3, Ll5/h;->A:[Ll5/a;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    const/4 v7, 0x0

    :goto_1f
    const/4 v8, 0x2

    if-ge v7, v8, :cond_35

    aget-object v8, v6, v7

    iget v10, v8, Ll5/a;->x:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_2b

    iget-object v10, v8, Ll5/a;->n:Lw0/i;

    :goto_20
    if-eqz v10, :cond_2b

    iget v12, v9, Ll5/f;->g:I

    iget v13, v9, Ll5/f;->j:I

    if-ne v12, v13, :cond_2c

    :cond_2b
    :goto_21
    move-object/from16 v18, v6

    const/4 v5, 0x1

    goto/16 :goto_24

    :cond_2c
    iget v12, v9, Ll5/f;->i:I

    iget v13, v9, Ll5/f;->k:I

    if-ne v12, v13, :cond_2d

    goto :goto_21

    :cond_2d
    iget-object v12, v10, Lw0/i;->f:Ljava/lang/Object;

    check-cast v12, Lm5/a;

    iget v13, v12, Lm5/a;->a:I

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-eqz v13, :cond_2e

    :goto_22
    move-object/from16 v18, v6

    goto/16 :goto_23

    :cond_2e
    iget-object v13, v10, Lw0/i;->e:Ljava/lang/Object;

    check-cast v13, Ll5/a;

    iget v14, v13, Ll5/a;->x:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2f

    invoke-virtual {v8}, Ll5/a;->e()Z

    move-result v14

    if-nez v14, :cond_2f

    invoke-virtual {v13}, Ll5/a;->e()Z

    move-result v14

    if-nez v14, :cond_2f

    goto :goto_22

    :cond_2f
    iget-object v14, v12, Lm5/a;->f:Ll5/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v12, Lm5/a;->g:Ll5/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Ll5/a;->d:Lk5/f;

    invoke-virtual {v4, v14}, Lk5/f;->b(Lk5/f;)V

    iget v15, v13, Ll5/a;->a:I

    const/16 v17, 0x1

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_30

    invoke-virtual {v13, v11}, Ll5/a;->a(F)V

    :cond_30
    iget-object v15, v2, Lg4/e;->d:Ljava/lang/Object;

    check-cast v15, Lg5/a;

    invoke-virtual {v12, v15}, Lm5/a;->b(Lg5/a;)V

    iget v15, v12, Lm5/a;->a:I

    move-object/from16 v18, v6

    const/4 v5, 0x4

    and-int/lit8 v6, v15, 0x4

    if-ne v6, v5, :cond_34

    const/4 v6, 0x2

    and-int/lit8 v5, v15, 0x2

    if-ne v5, v6, :cond_33

    const/4 v5, 0x1

    or-int/lit8 v14, v15, 0x1

    iput v14, v12, Lm5/a;->a:I

    iget-object v14, v9, Ll5/f;->c:[Lm5/a;

    iget v15, v9, Ll5/f;->i:I

    add-int/lit8 v6, v15, 0x1

    iput v6, v9, Ll5/f;->i:I

    aput-object v12, v14, v15

    iget v6, v13, Ll5/a;->a:I

    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_31

    goto :goto_23

    :cond_31
    or-int/2addr v6, v5

    iput v6, v13, Ll5/a;->a:I

    iget v6, v13, Ll5/a;->x:I

    if-eq v6, v5, :cond_32

    invoke-virtual {v13, v5}, Ll5/a;->f(Z)V

    :cond_32
    invoke-virtual {v9, v13}, Ll5/f;->a(Ll5/a;)V

    goto :goto_23

    :cond_33
    invoke-virtual {v14, v4}, Lk5/f;->b(Lk5/f;)V

    invoke-virtual {v13}, Ll5/a;->k()V

    goto :goto_23

    :cond_34
    invoke-virtual {v14, v4}, Lk5/f;->b(Lk5/f;)V

    invoke-virtual {v13}, Ll5/a;->k()V

    :goto_23
    iget-object v5, v10, Lw0/i;->h:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Lw0/i;

    move-object/from16 v6, v18

    const/16 v5, 0x20

    goto/16 :goto_20

    :goto_24
    add-int/2addr v7, v5

    move-object/from16 v6, v18

    const/16 v5, 0x20

    goto/16 :goto_1f

    :cond_35
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    move-object/from16 v8, p1

    iget v4, v8, Ll5/g;->a:F

    mul-float/2addr v11, v4

    iget-object v4, v3, Ll5/h;->z:Ll5/g;

    iput v11, v4, Ll5/g;->a:F

    div-float v11, v5, v11

    iput v11, v4, Ll5/g;->b:F

    iput v5, v4, Ll5/g;->c:F

    const/16 v6, 0x14

    iput v6, v4, Ll5/g;->e:I

    iget v6, v8, Ll5/g;->d:I

    iput v6, v4, Ll5/g;->d:I

    const/4 v10, 0x0

    iput-boolean v10, v4, Ll5/g;->f:Z

    iget v0, v0, Ll5/a;->b:I

    iget v1, v1, Ll5/a;->b:I

    move v6, v10

    :goto_25
    iget v7, v9, Ll5/f;->g:I

    if-ge v6, v7, :cond_36

    iget-object v7, v9, Ll5/f;->e:[Lm5/f;

    aget-object v7, v7, v6

    iget-object v11, v7, Lm5/f;->a:Lk5/i;

    iget-object v12, v9, Ll5/f;->b:[Ll5/a;

    aget-object v12, v12, v6

    iget-object v13, v12, Ll5/a;->d:Lk5/f;

    iget-object v14, v13, Lk5/f;->f:Lk5/i;

    iget v15, v14, Lk5/i;->d:F

    iput v15, v11, Lk5/i;->d:F

    iget v14, v14, Lk5/i;->e:F

    iput v14, v11, Lk5/i;->e:F

    iget v11, v13, Lk5/f;->h:F

    iput v11, v7, Lm5/f;->b:F

    iget-object v7, v9, Ll5/f;->f:[Lm5/f;

    aget-object v7, v7, v6

    iget-object v11, v7, Lm5/f;->a:Lk5/i;

    iget-object v13, v12, Ll5/a;->e:Lk5/i;

    iget v14, v13, Lk5/i;->d:F

    iput v14, v11, Lk5/i;->d:F

    iget v13, v13, Lk5/i;->e:F

    iput v13, v11, Lk5/i;->e:F

    iget v11, v12, Ll5/a;->f:F

    iput v11, v7, Lm5/f;->b:F

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_25

    :cond_36
    iget-object v6, v9, Ll5/f;->c:[Lm5/a;

    iget-object v7, v9, Ll5/f;->q:Lg4/e;

    iput-object v6, v7, Lg4/e;->c:Ljava/lang/Object;

    iget v6, v9, Ll5/f;->i:I

    iput v6, v7, Lg4/e;->a:I

    iput-object v4, v7, Lg4/e;->b:Ljava/lang/Object;

    iget-object v6, v9, Ll5/f;->e:[Lm5/f;

    iput-object v6, v7, Lg4/e;->d:Ljava/lang/Object;

    iget-object v6, v9, Ll5/f;->f:[Lm5/f;

    iput-object v6, v7, Lg4/e;->e:Ljava/lang/Object;

    iget-object v6, v9, Ll5/f;->p:Lm5/d;

    invoke-virtual {v6, v7}, Lm5/d;->a(Lg4/e;)V

    move v7, v10

    :goto_26
    iget v11, v4, Ll5/g;->e:I

    if-ge v7, v11, :cond_3f

    move v11, v10

    const/4 v12, 0x0

    :goto_27
    iget v13, v6, Lm5/d;->g:I

    if-ge v11, v13, :cond_3d

    iget-object v13, v6, Lm5/d;->d:[Lm5/b;

    aget-object v13, v13, v11

    iget v14, v13, Lm5/b;->d:I

    iget v15, v13, Lm5/b;->e:I

    iget v5, v13, Lm5/b;->o:I

    if-eq v14, v0, :cond_38

    if-ne v14, v1, :cond_37

    goto :goto_28

    :cond_37
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_29

    :cond_38
    :goto_28
    iget v10, v13, Lm5/b;->f:F

    iget v8, v13, Lm5/b;->j:F

    :goto_29
    if-eq v15, v0, :cond_3a

    if-ne v15, v1, :cond_39

    goto :goto_2a

    :cond_39
    move-object/from16 v24, v2

    move-object/from16 v18, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_2b

    :cond_3a
    :goto_2a
    iget v3, v13, Lm5/b;->g:F

    move/from16 v18, v3

    iget v3, v13, Lm5/b;->k:F

    move-object/from16 v24, v2

    move v2, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    :goto_2b
    iget-object v4, v6, Lm5/d;->b:[Lm5/f;

    move/from16 v25, v1

    aget-object v1, v4, v14

    move/from16 v26, v0

    iget-object v0, v1, Lm5/f;->a:Lk5/i;

    iget v1, v1, Lm5/f;->b:F

    aget-object v4, v4, v15

    move/from16 v27, v1

    iget-object v1, v4, Lm5/f;->a:Lk5/i;

    iget v4, v4, Lm5/f;->b:F

    move/from16 v28, v7

    move v7, v12

    move v12, v4

    move/from16 v4, v27

    move-object/from16 v27, v9

    const/4 v9, 0x0

    :goto_2c
    if-ge v9, v5, :cond_3c

    move/from16 v29, v5

    iget-object v5, v6, Lm5/d;->m:Lk5/h;

    move/from16 v30, v11

    iget-object v11, v5, Lk5/h;->e:Lk5/d;

    invoke-virtual {v11, v4}, Lk5/d;->c(F)V

    iget-object v11, v6, Lm5/d;->n:Lk5/h;

    move/from16 v31, v15

    iget-object v15, v11, Lk5/h;->e:Lk5/d;

    invoke-virtual {v15, v12}, Lk5/d;->c(F)V

    iget-object v15, v5, Lk5/h;->e:Lk5/d;

    move/from16 v32, v14

    iget-object v14, v13, Lm5/b;->h:Lk5/i;

    move/from16 v33, v12

    iget-object v12, v5, Lk5/h;->d:Lk5/i;

    invoke-static {v15, v14, v12}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v12}, Lk5/i;->i()V

    invoke-virtual {v12, v0}, Lk5/i;->b(Lk5/i;)V

    iget-object v12, v11, Lk5/h;->e:Lk5/d;

    iget-object v14, v13, Lm5/b;->i:Lk5/i;

    iget-object v15, v11, Lk5/h;->d:Lk5/i;

    invoke-static {v12, v14, v15}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v15}, Lk5/i;->i()V

    invoke-virtual {v15, v1}, Lk5/i;->b(Lk5/i;)V

    iget-object v12, v6, Lm5/d;->x:Lh5/j;

    invoke-virtual {v12, v13, v5, v11, v9}, Lh5/j;->a(Lm5/b;Lk5/h;Lk5/h;I)V

    iget v5, v12, Lh5/j;->c:F

    iget-object v11, v12, Lh5/j;->b:Lk5/i;

    iget-object v14, v6, Lm5/d;->y:Lk5/i;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v11, Lk5/i;->d:F

    iput v15, v14, Lk5/i;->d:F

    iget v15, v11, Lk5/i;->e:F

    iput v15, v14, Lk5/i;->e:F

    invoke-virtual {v14, v0}, Lk5/i;->m(Lk5/i;)V

    iget-object v15, v6, Lm5/d;->z:Lk5/i;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v34, v13

    iget v13, v11, Lk5/i;->d:F

    iput v13, v15, Lk5/i;->d:F

    iget v11, v11, Lk5/i;->e:F

    iput v11, v15, Lk5/i;->e:F

    invoke-virtual {v15, v1}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v7, v5}, Lk5/c;->Q(FF)F

    move-result v7

    const v11, 0x3ba3d70a    # 0.005f

    add-float/2addr v5, v11

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v5, v13

    const v13, -0x41b33333    # -0.2f

    const/4 v11, 0x0

    invoke-static {v5, v13, v11}, Lk5/c;->N(FFF)F

    move-result v5

    iget-object v12, v12, Lh5/j;->a:Lk5/i;

    invoke-static {v14, v12}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v13

    invoke-static {v15, v12}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v11

    move/from16 v35, v7

    add-float v7, v10, v3

    invoke-static {v8, v13, v13, v7}, LB/a;->f(FFFF)F

    move-result v7

    invoke-static {v2, v11, v11, v7}, LB/a;->f(FFFF)F

    move-result v7

    const/4 v11, 0x0

    cmpl-float v13, v7, v11

    if-lez v13, :cond_3b

    neg-float v5, v5

    div-float v20, v5, v7

    move/from16 v5, v20

    goto :goto_2d

    :cond_3b
    move v5, v11

    :goto_2d
    iget-object v7, v6, Lm5/d;->k:Lk5/i;

    iget v13, v12, Lk5/i;->d:F

    iput v13, v7, Lk5/i;->d:F

    iget v12, v12, Lk5/i;->e:F

    iput v12, v7, Lk5/i;->e:F

    invoke-virtual {v7, v5}, Lk5/i;->h(F)V

    iget-object v5, v6, Lm5/d;->l:Lk5/i;

    iget v12, v7, Lk5/i;->d:F

    iput v12, v5, Lk5/i;->d:F

    iget v12, v7, Lk5/i;->e:F

    iput v12, v5, Lk5/i;->e:F

    invoke-virtual {v5, v10}, Lk5/i;->h(F)V

    invoke-virtual {v0, v5}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v14, v7}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v12

    mul-float/2addr v12, v8

    sub-float/2addr v4, v12

    iget v12, v7, Lk5/i;->d:F

    iput v12, v5, Lk5/i;->d:F

    iget v12, v7, Lk5/i;->e:F

    iput v12, v5, Lk5/i;->e:F

    invoke-virtual {v5, v3}, Lk5/i;->h(F)V

    invoke-virtual {v1, v5}, Lk5/i;->b(Lk5/i;)V

    invoke-static {v15, v7}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v5

    mul-float/2addr v5, v2

    add-float v12, v5, v33

    const/4 v5, 0x1

    add-int/2addr v9, v5

    move/from16 v5, v29

    move/from16 v11, v30

    move/from16 v15, v31

    move/from16 v14, v32

    move-object/from16 v13, v34

    move/from16 v7, v35

    goto/16 :goto_2c

    :cond_3c
    move/from16 v30, v11

    move/from16 v33, v12

    move/from16 v32, v14

    move/from16 v31, v15

    const/4 v5, 0x1

    const/4 v11, 0x0

    iget-object v0, v6, Lm5/d;->b:[Lm5/f;

    aget-object v1, v0, v32

    iput v4, v1, Lm5/f;->b:F

    aget-object v0, v0, v31

    move/from16 v4, v33

    iput v4, v0, Lm5/f;->b:F

    add-int/lit8 v0, v30, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move v11, v0

    move v12, v7

    move-object/from16 v4, v18

    move-object/from16 v2, v24

    move/from16 v1, v25

    move/from16 v0, v26

    move-object/from16 v9, v27

    move/from16 v7, v28

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    goto/16 :goto_27

    :cond_3d
    move/from16 v26, v0

    move/from16 v25, v1

    move-object/from16 v24, v2

    move-object/from16 v18, v4

    move/from16 v28, v7

    move-object/from16 v27, v9

    const/4 v5, 0x1

    const/4 v11, 0x0

    const v0, -0x440a3d71    # -0.0075f

    cmpl-float v0, v12, v0

    if-ltz v0, :cond_3e

    move-object/from16 v2, v27

    goto :goto_2e

    :cond_3e
    add-int/lit8 v7, v28, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move-object/from16 v4, v18

    move-object/from16 v2, v24

    move/from16 v1, v25

    move/from16 v0, v26

    move-object/from16 v9, v27

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    goto/16 :goto_26

    :cond_3f
    move/from16 v26, v0

    move/from16 v25, v1

    move-object/from16 v24, v2

    move-object/from16 v18, v4

    const/4 v11, 0x0

    move-object v2, v9

    :goto_2e
    iget-object v0, v2, Ll5/f;->b:[Ll5/a;

    aget-object v1, v0, v26

    iget-object v1, v1, Ll5/a;->d:Lk5/f;

    iget-object v3, v1, Lk5/f;->e:Lk5/i;

    iget-object v4, v2, Ll5/f;->e:[Lm5/f;

    aget-object v5, v4, v26

    iget-object v7, v5, Lm5/f;->a:Lk5/i;

    iget v8, v7, Lk5/i;->d:F

    iput v8, v3, Lk5/i;->d:F

    iget v7, v7, Lk5/i;->e:F

    iput v7, v3, Lk5/i;->e:F

    iget v3, v5, Lm5/f;->b:F

    iput v3, v1, Lk5/f;->g:F

    aget-object v0, v0, v25

    iget-object v0, v0, Ll5/a;->d:Lk5/f;

    iget-object v1, v0, Lk5/f;->e:Lk5/i;

    aget-object v3, v4, v25

    iget-object v4, v3, Lm5/f;->a:Lk5/i;

    iget v5, v4, Lk5/i;->d:F

    iput v5, v1, Lk5/i;->d:F

    iget v4, v4, Lk5/i;->e:F

    iput v4, v1, Lk5/i;->e:F

    iget v1, v3, Lm5/f;->b:F

    iput v1, v0, Lk5/f;->g:F

    invoke-virtual {v6}, Lm5/d;->b()V

    move-object/from16 v0, v18

    const/4 v9, 0x0

    :goto_2f
    iget v1, v0, Ll5/g;->d:I

    if-ge v9, v1, :cond_40

    invoke-virtual {v6}, Lm5/d;->c()V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    goto :goto_2f

    :cond_40
    iget v0, v0, Ll5/g;->a:F

    const/4 v9, 0x0

    :goto_30
    iget v1, v2, Ll5/f;->g:I

    if-ge v9, v1, :cond_43

    iget-object v1, v2, Ll5/f;->e:[Lm5/f;

    aget-object v1, v1, v9

    iget-object v3, v1, Lm5/f;->a:Lk5/i;

    iget v1, v1, Lm5/f;->b:F

    iget-object v4, v2, Ll5/f;->f:[Lm5/f;

    aget-object v4, v4, v9

    iget-object v5, v4, Lm5/f;->a:Lk5/i;

    iget v4, v4, Lm5/f;->b:F

    iget v7, v5, Lk5/i;->d:F

    mul-float/2addr v7, v0

    iget v8, v5, Lk5/i;->e:F

    mul-float/2addr v8, v0

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v8, v7

    const/high16 v7, 0x40800000    # 4.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_41

    sget-object v7, Lk5/c;->d:[F

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v8, v7

    invoke-virtual {v5, v8}, Lk5/i;->h(F)V

    :cond_41
    mul-float v7, v0, v4

    mul-float v8, v7, v7

    sget v10, Lk5/e;->b:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_42

    const v8, 0x3fc90fdb

    invoke-static {v7}, Lk5/c;->M(F)F

    move-result v7

    div-float/2addr v8, v7

    mul-float/2addr v4, v8

    :cond_42
    iget v7, v3, Lk5/i;->d:F

    iget v8, v5, Lk5/i;->d:F

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    iput v8, v3, Lk5/i;->d:F

    iget v7, v3, Lk5/i;->e:F

    iget v10, v5, Lk5/i;->e:F

    mul-float/2addr v10, v0

    add-float/2addr v10, v7

    iput v10, v3, Lk5/i;->e:F

    mul-float v7, v0, v4

    add-float/2addr v7, v1

    iget-object v1, v2, Ll5/f;->e:[Lm5/f;

    aget-object v1, v1, v9

    iget-object v12, v1, Lm5/f;->a:Lk5/i;

    iput v8, v12, Lk5/i;->d:F

    iput v10, v12, Lk5/i;->e:F

    iput v7, v1, Lm5/f;->b:F

    iget-object v1, v2, Ll5/f;->f:[Lm5/f;

    aget-object v1, v1, v9

    iget-object v8, v1, Lm5/f;->a:Lk5/i;

    iget v10, v5, Lk5/i;->d:F

    iput v10, v8, Lk5/i;->d:F

    iget v10, v5, Lk5/i;->e:F

    iput v10, v8, Lk5/i;->e:F

    iput v4, v1, Lm5/f;->b:F

    iget-object v1, v2, Ll5/f;->b:[Ll5/a;

    aget-object v1, v1, v9

    iget-object v8, v1, Ll5/a;->d:Lk5/f;

    iget-object v10, v8, Lk5/f;->f:Lk5/i;

    iget v12, v3, Lk5/i;->d:F

    iput v12, v10, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v10, Lk5/i;->e:F

    iput v7, v8, Lk5/f;->h:F

    iget v3, v5, Lk5/i;->d:F

    iget-object v7, v1, Ll5/a;->e:Lk5/i;

    iput v3, v7, Lk5/i;->d:F

    iget v3, v5, Lk5/i;->e:F

    iput v3, v7, Lk5/i;->e:F

    iput v4, v1, Ll5/a;->f:F

    invoke-virtual {v1}, Ll5/a;->k()V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    goto/16 :goto_30

    :cond_43
    iget-object v0, v6, Lm5/d;->e:[Lm5/e;

    invoke-virtual {v2, v0}, Ll5/f;->c([Lm5/e;)V

    const/4 v9, 0x0

    :goto_31
    iget v0, v2, Ll5/f;->g:I

    if-ge v9, v0, :cond_46

    iget-object v0, v2, Ll5/f;->b:[Ll5/a;

    aget-object v0, v0, v9

    iget v1, v0, Ll5/a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Ll5/a;->a:I

    iget v1, v0, Ll5/a;->x:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_45

    :cond_44
    const/4 v0, 0x1

    goto :goto_33

    :cond_45
    invoke-virtual {v0}, Ll5/a;->j()V

    iget-object v0, v0, Ll5/a;->n:Lw0/i;

    :goto_32
    if-eqz v0, :cond_44

    iget-object v1, v0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Lm5/a;

    iget v4, v1, Lm5/a;->a:I

    and-int/lit8 v4, v4, -0x22

    iput v4, v1, Lm5/a;->a:I

    iget-object v0, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Lw0/i;

    goto :goto_32

    :goto_33
    add-int/2addr v9, v0

    goto :goto_31

    :cond_46
    invoke-virtual/range {v24 .. v24}, Lg4/e;->c()V

    :goto_34
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v2

    move v8, v11

    move-object/from16 v5, v24

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_47
    move-object/from16 v24, v2

    move v3, v8

    move-object/from16 v2, v22

    :goto_35
    const/4 v11, 0x0

    goto :goto_36

    :cond_48
    move-object/from16 v24, v2

    move-object/from16 v2, v22

    const/4 v3, 0x2

    goto :goto_35

    :goto_36
    and-int/lit8 v5, v7, -0x25

    iput v5, v12, Lm5/a;->a:I

    iget-object v5, v0, Ll5/a;->d:Lk5/f;

    invoke-virtual {v5, v4}, Lk5/f;->b(Lk5/f;)V

    iget-object v4, v1, Ll5/a;->d:Lk5/f;

    invoke-virtual {v4, v6}, Lk5/f;->b(Lk5/f;)V

    invoke-virtual {v0}, Ll5/a;->k()V

    invoke-virtual {v1}, Ll5/a;->k()V

    goto :goto_34

    :goto_37
    iput-boolean v1, v0, Ll5/h;->m:Z

    return-void
.end method

.method public final h()V
    .locals 36

    move-object/from16 v0, p0

    const/4 v2, 0x2

    iget-object v4, v0, Ll5/h;->q:Lk5/g;

    invoke-virtual {v4}, Lk5/g;->b()V

    iget v5, v0, Ll5/h;->a:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    iget-object v7, v0, Ll5/h;->b:Lg4/e;

    if-ne v5, v6, :cond_0

    invoke-virtual {v7}, Lg4/e;->c()V

    iget v5, v0, Ll5/h;->a:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v0, Ll5/h;->a:I

    :cond_0
    iget v5, v0, Ll5/h;->a:I

    or-int/2addr v5, v2

    iput v5, v0, Ll5/h;->a:I

    iget-object v5, v0, Ll5/h;->p:Ll5/g;

    const v8, 0x3c888889

    iput v8, v5, Ll5/g;->a:F

    const/16 v9, 0x8

    iput v9, v5, Ll5/g;->d:I

    const/4 v10, 0x3

    iput v10, v5, Ll5/g;->e:I

    const v11, 0x426fffff    # 59.999996f

    iput v11, v5, Ll5/g;->b:F

    iget v11, v0, Ll5/h;->j:F

    mul-float/2addr v11, v8

    iput v11, v5, Ll5/g;->c:F

    iget-boolean v8, v0, Ll5/h;->k:Z

    iput-boolean v8, v5, Ll5/g;->f:Z

    iget-object v8, v0, Ll5/h;->r:Lk5/g;

    invoke-virtual {v8}, Lk5/g;->b()V

    iget-object v11, v7, Lg4/e;->c:Ljava/lang/Object;

    check-cast v11, Lm5/a;

    :goto_0
    const/4 v13, 0x0

    if-eqz v11, :cond_a

    iget-object v14, v11, Lm5/a;->f:Ll5/c;

    iget-object v15, v11, Lm5/a;->g:Ll5/c;

    iget v10, v11, Lm5/a;->h:I

    iget v2, v11, Lm5/a;->i:I

    iget-object v1, v14, Ll5/c;->c:Ll5/a;

    iget-object v3, v15, Ll5/c;->c:Ll5/a;

    iget v12, v11, Lm5/a;->a:I

    and-int/2addr v12, v9

    if-ne v12, v9, :cond_3

    invoke-virtual {v3, v1}, Ll5/a;->i(Ll5/a;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v1, v11, Lm5/a;->c:Lm5/a;

    invoke-virtual {v7, v11}, Lg4/e;->b(Lm5/a;)V

    :goto_1
    move-object v11, v1

    :goto_2
    const/4 v2, 0x2

    const/4 v10, 0x3

    goto :goto_0

    :cond_1
    invoke-static {v14, v15}, LU0/e;->x(Ll5/c;Ll5/c;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v1, v11, Lm5/a;->c:Lm5/a;

    invoke-virtual {v7, v11}, Lg4/e;->b(Lm5/a;)V

    goto :goto_1

    :cond_2
    iget v12, v11, Lm5/a;->a:I

    and-int/lit8 v12, v12, -0x9

    iput v12, v11, Lm5/a;->a:I

    :cond_3
    invoke-virtual {v1}, Ll5/a;->d()Z

    move-result v12

    if-eqz v12, :cond_4

    iget v1, v1, Ll5/a;->x:I

    if-eq v1, v6, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3}, Ll5/a;->d()Z

    move-result v12

    if-eqz v12, :cond_5

    iget v3, v3, Ll5/a;->x:I

    if-eq v3, v6, :cond_5

    move v12, v6

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    if-nez v1, :cond_6

    if-nez v12, :cond_6

    iget-object v11, v11, Lm5/a;->c:Lm5/a;

    goto :goto_2

    :cond_6
    iget-object v1, v14, Ll5/c;->g:[Ll5/e;

    aget-object v1, v1, v10

    iget v1, v1, Ll5/e;->b:I

    iget-object v3, v15, Ll5/c;->g:[Ll5/e;

    aget-object v2, v3, v2

    iget v2, v2, Ll5/e;->b:I

    iget-object v3, v7, Lg4/e;->b:Ljava/lang/Object;

    check-cast v3, Li5/a;

    iget-object v3, v3, Li5/a;->a:Li5/c;

    iget-object v3, v3, Li5/c;->b:[Li5/d;

    aget-object v1, v3, v1

    iget-object v1, v1, Li5/d;->a:Lw0/l;

    aget-object v2, v3, v2

    iget-object v2, v2, Li5/d;->a:Lw0/l;

    iget-object v3, v2, Lw0/l;->e:Ljava/lang/Object;

    check-cast v3, Lk5/i;

    iget v10, v3, Lk5/i;->d:F

    iget-object v12, v1, Lw0/l;->f:Ljava/lang/Object;

    check-cast v12, Lk5/i;

    iget v14, v12, Lk5/i;->d:F

    sub-float/2addr v10, v14

    cmpl-float v10, v10, v13

    if-gtz v10, :cond_9

    iget v3, v3, Lk5/i;->e:F

    iget v10, v12, Lk5/i;->e:F

    sub-float/2addr v3, v10

    cmpl-float v3, v3, v13

    if-lez v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, v1, Lw0/l;->e:Ljava/lang/Object;

    check-cast v1, Lk5/i;

    iget v3, v1, Lk5/i;->d:F

    iget-object v2, v2, Lw0/l;->f:Ljava/lang/Object;

    check-cast v2, Lk5/i;

    iget v10, v2, Lk5/i;->d:F

    sub-float/2addr v3, v10

    cmpl-float v3, v3, v13

    if-gtz v3, :cond_9

    iget v1, v1, Lk5/i;->e:F

    iget v2, v2, Lk5/i;->e:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v13

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, v7, Lg4/e;->d:Ljava/lang/Object;

    check-cast v1, Lg5/a;

    invoke-virtual {v11, v1}, Lm5/a;->b(Lg5/a;)V

    iget-object v11, v11, Lm5/a;->c:Lm5/a;

    goto/16 :goto_2

    :cond_9
    :goto_5
    iget-object v1, v11, Lm5/a;->c:Lm5/a;

    invoke-virtual {v7, v11}, Lg4/e;->b(Lm5/a;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v8}, Lk5/g;->a()F

    iget-object v1, v0, Ll5/h;->n:LG4/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Ll5/h;->m:Z

    if-eqz v1, :cond_3c

    iget v1, v5, Ll5/g;->a:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_3c

    invoke-virtual {v8}, Lk5/g;->b()V

    iget v1, v0, Ll5/h;->e:I

    iget v2, v7, Lg4/e;->a:I

    iget v3, v0, Ll5/h;->f:I

    iget-object v9, v7, Lg4/e;->d:Ljava/lang/Object;

    check-cast v9, Lg5/a;

    iget-object v10, v0, Ll5/h;->s:Ll5/f;

    invoke-virtual {v10, v1, v2, v3, v9}, Ll5/f;->b(IIILg5/a;)V

    iget-object v1, v0, Ll5/h;->c:Ll5/a;

    :goto_6
    if-eqz v1, :cond_b

    iget v2, v1, Ll5/a;->a:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Ll5/a;->a:I

    iget-object v1, v1, Ll5/a;->k:Ll5/a;

    goto :goto_6

    :cond_b
    iget-object v1, v7, Lg4/e;->c:Ljava/lang/Object;

    check-cast v1, Lm5/a;

    :goto_7
    if-eqz v1, :cond_c

    iget v2, v1, Lm5/a;->a:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lm5/a;->a:I

    iget-object v1, v1, Lm5/a;->c:Lm5/a;

    goto :goto_7

    :cond_c
    iget-object v1, v0, Ll5/h;->d:Ln5/c;

    :goto_8
    if-eqz v1, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v1, Ln5/c;->g:Z

    iget-object v1, v1, Ln5/c;->b:Ln5/c;

    goto :goto_8

    :cond_d
    iget v1, v0, Ll5/h;->e:I

    iget-object v2, v0, Ll5/h;->t:[Ll5/a;

    array-length v2, v2

    if-ge v2, v1, :cond_e

    new-array v1, v1, [Ll5/a;

    iput-object v1, v0, Ll5/h;->t:[Ll5/a;

    :cond_e
    iget-object v1, v0, Ll5/h;->c:Ll5/a;

    :goto_9
    if-eqz v1, :cond_38

    iget v2, v1, Ll5/a;->a:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_f

    :goto_a
    move-object v0, v1

    move-object/from16 v17, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object v4, v10

    const/4 v1, 0x0

    goto/16 :goto_2b

    :cond_f
    invoke-virtual {v1}, Ll5/a;->d()Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, v1, Ll5/a;->a:I

    const/16 v3, 0x20

    and-int/lit8 v9, v2, 0x20

    if-ne v9, v3, :cond_37

    iget v3, v1, Ll5/a;->x:I

    if-ne v3, v6, :cond_10

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    iput v3, v10, Ll5/f;->g:I

    iput v3, v10, Ll5/f;->i:I

    iput v3, v10, Ll5/f;->h:I

    iget-object v9, v0, Ll5/h;->t:[Ll5/a;

    aput-object v1, v9, v3

    or-int/2addr v2, v6

    iput v2, v1, Ll5/a;->a:I

    move v2, v6

    :cond_11
    :goto_b
    if-lez v2, :cond_1a

    iget-object v3, v0, Ll5/h;->t:[Ll5/a;

    add-int/lit8 v2, v2, -0x1

    aget-object v3, v3, v2

    invoke-virtual {v10, v3}, Ll5/f;->a(Ll5/a;)V

    invoke-virtual {v3, v6}, Ll5/a;->f(Z)V

    iget v9, v3, Ll5/a;->x:I

    if-ne v9, v6, :cond_12

    goto :goto_b

    :cond_12
    iget-object v9, v3, Ll5/a;->n:Lw0/i;

    :goto_c
    if-eqz v9, :cond_16

    iget-object v11, v9, Lw0/i;->f:Ljava/lang/Object;

    check-cast v11, Lm5/a;

    iget v12, v11, Lm5/a;->a:I

    and-int/lit8 v14, v12, 0x1

    if-ne v14, v6, :cond_13

    goto :goto_d

    :cond_13
    const/4 v14, 0x4

    and-int/lit8 v15, v12, 0x4

    if-ne v15, v14, :cond_15

    const/4 v14, 0x2

    and-int/2addr v12, v14

    if-ne v12, v14, :cond_15

    iget-object v12, v11, Lm5/a;->f:Ll5/c;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Lm5/a;->g:Ll5/c;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v10, Ll5/f;->c:[Lm5/a;

    iget v15, v10, Ll5/f;->i:I

    add-int/lit8 v14, v15, 0x1

    iput v14, v10, Ll5/f;->i:I

    aput-object v11, v12, v15

    iget v12, v11, Lm5/a;->a:I

    or-int/2addr v12, v6

    iput v12, v11, Lm5/a;->a:I

    iget-object v11, v9, Lw0/i;->e:Ljava/lang/Object;

    check-cast v11, Ll5/a;

    iget v12, v11, Ll5/a;->a:I

    and-int/lit8 v14, v12, 0x1

    if-ne v14, v6, :cond_14

    goto :goto_d

    :cond_14
    iget-object v14, v0, Ll5/h;->t:[Ll5/a;

    add-int/lit8 v15, v2, 0x1

    aput-object v11, v14, v2

    or-int/lit8 v2, v12, 0x1

    iput v2, v11, Ll5/a;->a:I

    move v2, v15

    :cond_15
    :goto_d
    iget-object v9, v9, Lw0/i;->h:Ljava/lang/Object;

    check-cast v9, Lw0/i;

    goto :goto_c

    :cond_16
    iget-object v3, v3, Ll5/a;->m:Lw0/i;

    :goto_e
    if-eqz v3, :cond_11

    iget-object v9, v3, Lw0/i;->f:Ljava/lang/Object;

    check-cast v9, Ln5/c;

    iget-boolean v11, v9, Ln5/c;->g:Z

    if-ne v11, v6, :cond_17

    goto :goto_f

    :cond_17
    iget-object v11, v3, Lw0/i;->e:Ljava/lang/Object;

    check-cast v11, Ll5/a;

    iget v12, v11, Ll5/a;->a:I

    const/16 v14, 0x20

    and-int/lit8 v15, v12, 0x20

    if-ne v15, v14, :cond_19

    iget-object v15, v10, Ll5/f;->d:[Ln5/c;

    iget v14, v10, Ll5/f;->h:I

    add-int/lit8 v13, v14, 0x1

    iput v13, v10, Ll5/f;->h:I

    aput-object v9, v15, v14

    iput-boolean v6, v9, Ln5/c;->g:Z

    and-int/lit8 v9, v12, 0x1

    if-ne v9, v6, :cond_18

    goto :goto_f

    :cond_18
    iget-object v9, v0, Ll5/h;->t:[Ll5/a;

    add-int/lit8 v13, v2, 0x1

    aput-object v11, v9, v2

    or-int/lit8 v2, v12, 0x1

    iput v2, v11, Ll5/a;->a:I

    move v2, v13

    :cond_19
    :goto_f
    iget-object v3, v3, Lw0/i;->h:Ljava/lang/Object;

    check-cast v3, Lw0/i;

    const/4 v13, 0x0

    goto :goto_e

    :cond_1a
    iget-boolean v2, v0, Ll5/h;->h:Z

    iget v3, v5, Ll5/g;->a:F

    const/4 v9, 0x0

    :goto_10
    iget v11, v10, Ll5/f;->g:I

    if-ge v9, v11, :cond_1c

    iget-object v11, v10, Ll5/f;->b:[Ll5/a;

    aget-object v11, v11, v9

    iget-object v13, v11, Ll5/a;->d:Lk5/f;

    iget-object v14, v13, Lk5/f;->f:Lk5/i;

    iget v15, v13, Lk5/f;->h:F

    iget v6, v11, Ll5/a;->f:F

    iget-object v12, v13, Lk5/f;->e:Lk5/i;

    move-object/from16 v17, v4

    iget v4, v14, Lk5/i;->d:F

    iput v4, v12, Lk5/i;->d:F

    iget v4, v14, Lk5/i;->e:F

    iput v4, v12, Lk5/i;->e:F

    iput v15, v13, Lk5/f;->g:F

    iget v4, v11, Ll5/a;->x:I

    iget-object v12, v11, Ll5/a;->e:Lk5/i;

    const/4 v13, 0x3

    if-ne v4, v13, :cond_1b

    iget v4, v12, Lk5/i;->d:F

    iget-object v13, v0, Ll5/h;->g:Lk5/i;

    move-object/from16 v18, v8

    iget v8, v13, Lk5/i;->d:F

    move-object/from16 v19, v7

    iget v7, v11, Ll5/a;->s:F

    mul-float/2addr v8, v7

    move-object/from16 v20, v1

    iget v1, v11, Ll5/a;->p:F

    move/from16 v21, v2

    iget-object v2, v11, Ll5/a;->g:Lk5/i;

    iget v0, v2, Lk5/i;->d:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v8

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    iput v0, v12, Lk5/i;->d:F

    iget v0, v12, Lk5/i;->e:F

    iget v4, v13, Lk5/i;->e:F

    mul-float/2addr v7, v4

    iget v2, v2, Lk5/i;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, v12, Lk5/i;->e:F

    iget v0, v11, Ll5/a;->r:F

    mul-float/2addr v0, v3

    iget v1, v11, Ll5/a;->h:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    const/4 v1, 0x0

    mul-float v13, v3, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, v13

    invoke-static {v4, v1, v2}, Lk5/c;->N(FFF)F

    move-result v6

    iget v7, v12, Lk5/i;->d:F

    mul-float/2addr v7, v6

    iput v7, v12, Lk5/i;->d:F

    iget v7, v12, Lk5/i;->e:F

    mul-float/2addr v7, v6

    iput v7, v12, Lk5/i;->e:F

    invoke-static {v4, v1, v2}, Lk5/c;->N(FFF)F

    move-result v2

    mul-float v6, v2, v0

    goto :goto_11

    :cond_1b
    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    :goto_11
    iget-object v0, v10, Ll5/f;->e:[Lm5/f;

    aget-object v0, v0, v9

    iget-object v1, v0, Lm5/f;->a:Lk5/i;

    iget v2, v14, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v2, v14, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iput v15, v0, Lm5/f;->b:F

    iget-object v0, v10, Ll5/f;->f:[Lm5/f;

    aget-object v0, v0, v9

    iget-object v1, v0, Lm5/f;->a:Lk5/i;

    iget v2, v12, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v2, v12, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iput v6, v0, Lm5/f;->b:F

    const/4 v0, 0x1

    add-int/2addr v9, v0

    move v6, v0

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v0, p0

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    iget-object v0, v10, Ll5/f;->m:Lk5/g;

    invoke-virtual {v0}, Lk5/g;->b()V

    iget-object v1, v10, Ll5/f;->n:Lw0/m;

    iput-object v5, v1, Lw0/m;->b:Ljava/lang/Object;

    iget-object v2, v10, Ll5/f;->e:[Lm5/f;

    iput-object v2, v1, Lw0/m;->c:Ljava/lang/Object;

    iget-object v4, v10, Ll5/f;->f:[Lm5/f;

    iput-object v4, v1, Lw0/m;->d:Ljava/lang/Object;

    iget-object v6, v10, Ll5/f;->o:Lg4/e;

    iput-object v5, v6, Lg4/e;->b:Ljava/lang/Object;

    iget-object v7, v10, Ll5/f;->c:[Lm5/a;

    iput-object v7, v6, Lg4/e;->c:Ljava/lang/Object;

    iget v7, v10, Ll5/f;->i:I

    iput v7, v6, Lg4/e;->a:I

    iput-object v2, v6, Lg4/e;->d:Ljava/lang/Object;

    iput-object v4, v6, Lg4/e;->e:Ljava/lang/Object;

    iget-object v2, v10, Ll5/f;->l:Lm5/d;

    invoke-virtual {v2, v6}, Lm5/d;->a(Lg4/e;)V

    invoke-virtual {v2}, Lm5/d;->b()V

    iget-boolean v4, v5, Ll5/g;->f:Z

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    :goto_12
    iget v6, v2, Lm5/d;->g:I

    if-ge v4, v6, :cond_1e

    iget-object v6, v2, Lm5/d;->e:[Lm5/e;

    aget-object v6, v6, v4

    iget v7, v6, Lm5/e;->e:I

    iget v8, v6, Lm5/e;->f:I

    iget v9, v6, Lm5/e;->g:F

    iget v11, v6, Lm5/e;->i:F

    iget v12, v6, Lm5/e;->h:F

    iget v13, v6, Lm5/e;->j:F

    iget v14, v6, Lm5/e;->m:I

    iget-object v15, v2, Lm5/d;->c:[Lm5/f;

    move/from16 v22, v3

    aget-object v3, v15, v7

    move-object/from16 v23, v5

    iget-object v5, v3, Lm5/f;->a:Lk5/i;

    iget v3, v3, Lm5/f;->b:F

    aget-object v15, v15, v8

    move/from16 v24, v3

    iget-object v3, v15, Lm5/f;->a:Lk5/i;

    iget v15, v15, Lm5/f;->b:F

    move/from16 v25, v15

    iget-object v15, v6, Lm5/e;->b:Lk5/i;

    move-object/from16 v26, v0

    iget v0, v15, Lk5/i;->e:F

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v0, v0, v16

    const/high16 v27, -0x40800000    # -1.0f

    move-object/from16 v28, v1

    iget v1, v15, Lk5/i;->d:F

    mul-float v1, v1, v27

    move-object/from16 v27, v10

    const/4 v10, 0x0

    move/from16 v34, v24

    move/from16 v24, v4

    move/from16 v4, v34

    move/from16 v35, v25

    move/from16 v25, v8

    move/from16 v8, v35

    :goto_13
    if-ge v10, v14, :cond_1d

    move/from16 v29, v14

    iget-object v14, v6, Lm5/e;->a:[LU0/r;

    aget-object v14, v14, v10

    move-object/from16 v30, v6

    iget v6, v14, LU0/r;->b:F

    mul-float v31, v0, v6

    move/from16 v32, v0

    iget v0, v15, Lk5/i;->d:F

    move/from16 v33, v7

    iget v7, v14, LU0/r;->a:F

    mul-float/2addr v0, v7

    add-float v0, v0, v31

    mul-float/2addr v6, v1

    move/from16 v31, v1

    iget v1, v15, Lk5/i;->e:F

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    iget-object v6, v14, LU0/r;->f:Ljava/io/Serializable;

    check-cast v6, Lk5/i;

    iget v7, v6, Lk5/i;->d:F

    mul-float/2addr v7, v1

    iget v6, v6, Lk5/i;->e:F

    mul-float/2addr v6, v0

    sub-float/2addr v7, v6

    mul-float/2addr v7, v11

    sub-float/2addr v4, v7

    iget v6, v5, Lk5/i;->d:F

    mul-float v7, v0, v9

    sub-float/2addr v6, v7

    iput v6, v5, Lk5/i;->d:F

    iget v6, v5, Lk5/i;->e:F

    mul-float v7, v1, v9

    sub-float/2addr v6, v7

    iput v6, v5, Lk5/i;->e:F

    iget-object v6, v14, LU0/r;->g:Ljava/io/Serializable;

    check-cast v6, Lk5/i;

    iget v7, v6, Lk5/i;->d:F

    mul-float/2addr v7, v1

    iget v6, v6, Lk5/i;->e:F

    mul-float/2addr v6, v0

    sub-float/2addr v7, v6

    mul-float/2addr v7, v13

    add-float/2addr v8, v7

    iget v6, v3, Lk5/i;->d:F

    mul-float/2addr v0, v12

    add-float/2addr v0, v6

    iput v0, v3, Lk5/i;->d:F

    iget v0, v3, Lk5/i;->e:F

    mul-float/2addr v1, v12

    add-float/2addr v1, v0

    iput v1, v3, Lk5/i;->e:F

    const/4 v0, 0x1

    add-int/2addr v10, v0

    move/from16 v14, v29

    move-object/from16 v6, v30

    move/from16 v1, v31

    move/from16 v0, v32

    move/from16 v7, v33

    goto :goto_13

    :cond_1d
    move/from16 v33, v7

    const/4 v0, 0x1

    iget-object v1, v2, Lm5/d;->c:[Lm5/f;

    aget-object v3, v1, v33

    iput v4, v3, Lm5/f;->b:F

    aget-object v1, v1, v25

    iput v8, v1, Lm5/f;->b:F

    add-int/lit8 v4, v24, 0x1

    move/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v0, v26

    move-object/from16 v10, v27

    move-object/from16 v1, v28

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v27, v10

    const/4 v0, 0x1

    move-object/from16 v3, v27

    const/4 v1, 0x0

    :goto_14
    iget v4, v3, Ll5/f;->h:I

    if-ge v1, v4, :cond_1f

    iget-object v4, v3, Ll5/f;->d:[Ln5/c;

    aget-object v4, v4, v1

    move-object/from16 v5, v28

    invoke-virtual {v4, v5}, Ln5/c;->a(Lw0/m;)V

    add-int/2addr v1, v0

    goto :goto_14

    :cond_1f
    move-object/from16 v5, v28

    invoke-virtual/range {v26 .. v26}, Lk5/g;->a()F

    move-object/from16 v0, p0

    iget-object v1, v0, Ll5/h;->u:LG4/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v26 .. v26}, Lk5/g;->b()V

    move-object/from16 v4, v23

    const/4 v1, 0x0

    :goto_15
    iget v6, v4, Ll5/g;->d:I

    if-ge v1, v6, :cond_21

    const/4 v6, 0x0

    :goto_16
    iget v7, v3, Ll5/f;->h:I

    if-ge v6, v7, :cond_20

    iget-object v7, v3, Ll5/f;->d:[Ln5/c;

    aget-object v7, v7, v6

    invoke-virtual {v7, v5}, Ln5/c;->c(Lw0/m;)V

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_16

    :cond_20
    const/4 v7, 0x1

    invoke-virtual {v2}, Lm5/d;->c()V

    add-int/2addr v1, v7

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :goto_17
    iget v6, v2, Lm5/d;->g:I

    if-ge v1, v6, :cond_23

    iget-object v6, v2, Lm5/d;->e:[Lm5/e;

    aget-object v6, v6, v1

    iget-object v7, v2, Lm5/d;->f:[Lm5/a;

    iget v8, v6, Lm5/e;->n:I

    aget-object v7, v7, v8

    iget-object v7, v7, Lm5/a;->j:Lh5/k;

    const/4 v8, 0x0

    :goto_18
    iget v9, v6, Lm5/e;->m:I

    if-ge v8, v9, :cond_22

    iget-object v9, v7, Lh5/k;->a:[Lh5/l;

    aget-object v9, v9, v8

    iget-object v10, v6, Lm5/e;->a:[LU0/r;

    aget-object v10, v10, v8

    iget v11, v10, LU0/r;->a:F

    iput v11, v9, Lh5/l;->b:F

    iget v10, v10, LU0/r;->b:F

    iput v10, v9, Lh5/l;->c:F

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_18

    :cond_22
    const/4 v9, 0x1

    add-int/2addr v1, v9

    goto :goto_17

    :cond_23
    invoke-virtual/range {v26 .. v26}, Lk5/g;->a()F

    const/4 v1, 0x0

    :goto_19
    iget v6, v3, Ll5/f;->g:I

    if-ge v1, v6, :cond_26

    iget-object v6, v3, Ll5/f;->e:[Lm5/f;

    aget-object v6, v6, v1

    iget-object v7, v6, Lm5/f;->a:Lk5/i;

    iget v6, v6, Lm5/f;->b:F

    iget-object v8, v3, Ll5/f;->f:[Lm5/f;

    aget-object v8, v8, v1

    iget-object v9, v8, Lm5/f;->a:Lk5/i;

    iget v8, v8, Lm5/f;->b:F

    iget v10, v9, Lk5/i;->d:F

    mul-float v10, v10, v22

    iget v11, v9, Lk5/i;->e:F

    mul-float v11, v11, v22

    mul-float/2addr v10, v10

    mul-float/2addr v11, v11

    add-float/2addr v11, v10

    const/high16 v10, 0x40800000    # 4.0f

    cmpl-float v10, v11, v10

    if-lez v10, :cond_24

    sget-object v10, Lk5/c;->d:[F

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    iget v10, v9, Lk5/i;->d:F

    mul-float/2addr v10, v11

    iput v10, v9, Lk5/i;->d:F

    iget v10, v9, Lk5/i;->e:F

    mul-float/2addr v10, v11

    iput v10, v9, Lk5/i;->e:F

    :cond_24
    mul-float v10, v22, v8

    mul-float v11, v10, v10

    sget v12, Lk5/e;->b:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_25

    const v11, 0x3fc90fdb

    invoke-static {v10}, Lk5/c;->M(F)F

    move-result v10

    div-float/2addr v11, v10

    mul-float/2addr v8, v11

    :cond_25
    iget v10, v7, Lk5/i;->d:F

    iget v11, v9, Lk5/i;->d:F

    mul-float v11, v11, v22

    add-float/2addr v11, v10

    iput v11, v7, Lk5/i;->d:F

    iget v10, v7, Lk5/i;->e:F

    iget v9, v9, Lk5/i;->e:F

    mul-float v9, v9, v22

    add-float/2addr v9, v10

    iput v9, v7, Lk5/i;->e:F

    mul-float v7, v22, v8

    add-float/2addr v7, v6

    iget-object v6, v3, Ll5/f;->e:[Lm5/f;

    aget-object v6, v6, v1

    iput v7, v6, Lm5/f;->b:F

    iget-object v6, v3, Ll5/f;->f:[Lm5/f;

    aget-object v6, v6, v1

    iput v8, v6, Lm5/f;->b:F

    const/4 v6, 0x1

    add-int/2addr v1, v6

    goto :goto_19

    :cond_26
    invoke-virtual/range {v26 .. v26}, Lk5/g;->b()V

    const/4 v1, 0x0

    :goto_1a
    iget v6, v4, Ll5/g;->e:I

    if-ge v1, v6, :cond_2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1b
    iget v8, v2, Lm5/d;->g:I

    if-ge v6, v8, :cond_29

    iget-object v8, v2, Lm5/d;->d:[Lm5/b;

    aget-object v8, v8, v6

    iget v9, v8, Lm5/b;->d:I

    iget v10, v8, Lm5/b;->e:I

    iget v11, v8, Lm5/b;->f:F

    iget v12, v8, Lm5/b;->j:F

    iget v13, v8, Lm5/b;->g:F

    iget v14, v8, Lm5/b;->k:F

    iget v15, v8, Lm5/b;->o:I

    move-object/from16 v23, v4

    iget-object v4, v2, Lm5/d;->b:[Lm5/f;

    aget-object v0, v4, v9

    move/from16 v16, v1

    iget-object v1, v0, Lm5/f;->a:Lk5/i;

    iget v0, v0, Lm5/f;->b:F

    aget-object v4, v4, v10

    move/from16 v24, v0

    iget-object v0, v4, Lm5/f;->a:Lk5/i;

    iget v4, v4, Lm5/f;->b:F

    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move v3, v7

    const/4 v7, 0x0

    move v5, v4

    move/from16 v4, v24

    :goto_1c
    if-ge v7, v15, :cond_28

    move/from16 v24, v15

    iget-object v15, v2, Lm5/d;->m:Lk5/h;

    move/from16 v25, v6

    iget-object v6, v15, Lk5/h;->e:Lk5/d;

    invoke-virtual {v6, v4}, Lk5/d;->c(F)V

    iget-object v6, v2, Lm5/d;->n:Lk5/h;

    move/from16 v29, v10

    iget-object v10, v6, Lk5/h;->e:Lk5/d;

    invoke-virtual {v10, v5}, Lk5/d;->c(F)V

    iget-object v10, v15, Lk5/h;->e:Lk5/d;

    move/from16 v30, v9

    iget-object v9, v8, Lm5/b;->h:Lk5/i;

    move/from16 v31, v5

    iget-object v5, v15, Lk5/h;->d:Lk5/i;

    invoke-static {v10, v9, v5}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v5}, Lk5/i;->i()V

    invoke-virtual {v5, v1}, Lk5/i;->b(Lk5/i;)V

    iget-object v5, v6, Lk5/h;->e:Lk5/d;

    iget-object v9, v8, Lm5/b;->i:Lk5/i;

    iget-object v10, v6, Lk5/h;->d:Lk5/i;

    invoke-static {v5, v9, v10}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-virtual {v10}, Lk5/i;->i()V

    invoke-virtual {v10, v0}, Lk5/i;->b(Lk5/i;)V

    iget-object v5, v2, Lm5/d;->x:Lh5/j;

    invoke-virtual {v5, v8, v15, v6, v7}, Lh5/j;->a(Lm5/b;Lk5/h;Lk5/h;I)V

    iget v6, v5, Lh5/j;->c:F

    iget-object v9, v5, Lh5/j;->b:Lk5/i;

    iget-object v10, v2, Lm5/d;->y:Lk5/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v9, Lk5/i;->d:F

    iput v15, v10, Lk5/i;->d:F

    iget v15, v9, Lk5/i;->e:F

    iput v15, v10, Lk5/i;->e:F

    invoke-virtual {v10, v1}, Lk5/i;->m(Lk5/i;)V

    iget-object v15, v2, Lm5/d;->z:Lk5/i;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v32, v8

    iget v8, v9, Lk5/i;->d:F

    iput v8, v15, Lk5/i;->d:F

    iget v8, v9, Lk5/i;->e:F

    iput v8, v15, Lk5/i;->e:F

    invoke-virtual {v15, v0}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v3, v6}, Lk5/c;->Q(FF)F

    move-result v3

    const v8, 0x3ba3d70a    # 0.005f

    add-float/2addr v6, v8

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v8

    const v8, -0x41b33333    # -0.2f

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lk5/c;->N(FFF)F

    move-result v6

    iget-object v5, v5, Lh5/j;->a:Lk5/i;

    invoke-static {v10, v5}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v8

    invoke-static {v15, v5}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v9

    move/from16 v33, v3

    add-float v3, v11, v13

    invoke-static {v12, v8, v8, v3}, LB/a;->f(FFFF)F

    move-result v3

    invoke-static {v14, v9, v9, v3}, LB/a;->f(FFFF)F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v9, v3, v8

    if-lez v9, :cond_27

    neg-float v6, v6

    div-float v3, v6, v3

    goto :goto_1d

    :cond_27
    const/4 v3, 0x0

    :goto_1d
    iget-object v6, v2, Lm5/d;->k:Lk5/i;

    iget v8, v5, Lk5/i;->d:F

    iput v8, v6, Lk5/i;->d:F

    iget v5, v5, Lk5/i;->e:F

    iput v5, v6, Lk5/i;->e:F

    invoke-virtual {v6, v3}, Lk5/i;->h(F)V

    iget-object v3, v2, Lm5/d;->l:Lk5/i;

    iget v5, v6, Lk5/i;->d:F

    iput v5, v3, Lk5/i;->d:F

    iget v5, v6, Lk5/i;->e:F

    iput v5, v3, Lk5/i;->e:F

    invoke-virtual {v3, v11}, Lk5/i;->h(F)V

    invoke-virtual {v1, v3}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v10, v6}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v5

    mul-float/2addr v5, v12

    sub-float/2addr v4, v5

    iget v5, v6, Lk5/i;->d:F

    iput v5, v3, Lk5/i;->d:F

    iget v5, v6, Lk5/i;->e:F

    iput v5, v3, Lk5/i;->e:F

    invoke-virtual {v3, v13}, Lk5/i;->h(F)V

    invoke-virtual {v0, v3}, Lk5/i;->b(Lk5/i;)V

    invoke-static {v15, v6}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    mul-float/2addr v3, v14

    add-float v5, v3, v31

    const/4 v6, 0x1

    add-int/2addr v7, v6

    move/from16 v15, v24

    move/from16 v6, v25

    move/from16 v10, v29

    move/from16 v9, v30

    move-object/from16 v8, v32

    move/from16 v3, v33

    goto/16 :goto_1c

    :cond_28
    move/from16 v31, v5

    move/from16 v25, v6

    move/from16 v30, v9

    move/from16 v29, v10

    const/4 v6, 0x1

    iget-object v0, v2, Lm5/d;->b:[Lm5/f;

    aget-object v1, v0, v30

    iput v4, v1, Lm5/f;->b:F

    aget-object v0, v0, v29

    move/from16 v4, v31

    iput v4, v0, Lm5/f;->b:F

    add-int/lit8 v0, v25, 0x1

    move v6, v0

    move v7, v3

    move/from16 v1, v16

    move-object/from16 v4, v23

    move-object/from16 v3, v27

    move-object/from16 v5, v28

    move-object/from16 v0, p0

    goto/16 :goto_1b

    :cond_29
    move/from16 v16, v1

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    const v0, -0x438a3d71    # -0.015f

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v0, 0x0

    :goto_1e
    move-object/from16 v4, v27

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_1f
    iget v5, v4, Ll5/f;->h:I

    if-ge v1, v5, :cond_2c

    iget-object v5, v4, Ll5/f;->d:[Ln5/c;

    aget-object v5, v5, v1

    move-object/from16 v6, v28

    invoke-virtual {v5, v6}, Ln5/c;->b(Lw0/m;)Z

    move-result v5

    if-eqz v3, :cond_2b

    if-eqz v5, :cond_2b

    const/4 v3, 0x1

    :goto_20
    const/4 v5, 0x1

    goto :goto_21

    :cond_2b
    const/4 v3, 0x0

    goto :goto_20

    :goto_21
    add-int/2addr v1, v5

    move-object/from16 v28, v6

    goto :goto_1f

    :cond_2c
    move-object/from16 v6, v28

    const/4 v5, 0x1

    if-eqz v0, :cond_2d

    if-eqz v3, :cond_2d

    goto :goto_22

    :cond_2d
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v5, v6

    move-object/from16 v4, v23

    goto/16 :goto_1a

    :cond_2e
    move-object/from16 v23, v4

    move-object v4, v3

    const/4 v5, 0x0

    :goto_22
    const/4 v0, 0x0

    :goto_23
    iget v1, v4, Ll5/f;->g:I

    if-ge v0, v1, :cond_2f

    iget-object v1, v4, Ll5/f;->b:[Ll5/a;

    aget-object v1, v1, v0

    iget-object v3, v1, Ll5/a;->d:Lk5/f;

    iget-object v6, v3, Lk5/f;->f:Lk5/i;

    iget-object v7, v4, Ll5/f;->e:[Lm5/f;

    aget-object v7, v7, v0

    iget-object v8, v7, Lm5/f;->a:Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    iput v9, v6, Lk5/i;->d:F

    iget v8, v8, Lk5/i;->e:F

    iput v8, v6, Lk5/i;->e:F

    iget v6, v7, Lm5/f;->b:F

    iput v6, v3, Lk5/f;->h:F

    iget-object v3, v4, Ll5/f;->f:[Lm5/f;

    aget-object v3, v3, v0

    iget-object v6, v3, Lm5/f;->a:Lk5/i;

    iget v7, v6, Lk5/i;->d:F

    iget-object v8, v1, Ll5/a;->e:Lk5/i;

    iput v7, v8, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v8, Lk5/i;->e:F

    iget v3, v3, Lm5/f;->b:F

    iput v3, v1, Ll5/a;->f:F

    invoke-virtual {v1}, Ll5/a;->k()V

    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_23

    :cond_2f
    invoke-virtual/range {v26 .. v26}, Lk5/g;->a()F

    iget-object v0, v2, Lm5/d;->e:[Lm5/e;

    invoke-virtual {v4, v0}, Ll5/f;->c([Lm5/e;)V

    if-eqz v21, :cond_34

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    :goto_24
    iget v1, v4, Ll5/f;->g:I

    if-ge v2, v1, :cond_33

    iget-object v1, v4, Ll5/f;->b:[Ll5/a;

    aget-object v1, v1, v2

    iget v3, v1, Ll5/a;->x:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_30

    move v1, v6

    goto :goto_27

    :cond_30
    iget v3, v1, Ll5/a;->a:I

    const/4 v6, 0x4

    and-int/2addr v3, v6

    if-eqz v3, :cond_31

    iget v3, v1, Ll5/a;->f:F

    mul-float/2addr v3, v3

    const v6, 0x3a9fb511

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_31

    iget-object v3, v1, Ll5/a;->e:Lk5/i;

    invoke-static {v3, v3}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v3

    const v6, 0x38d1b717    # 1.0E-4f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_32

    :cond_31
    const/4 v0, 0x0

    goto :goto_26

    :cond_32
    iget v3, v1, Ll5/a;->t:F

    add-float v3, v3, v22

    iput v3, v1, Ll5/a;->t:F

    invoke-static {v0, v3}, Lk5/c;->Q(FF)F

    move-result v0

    :goto_25
    const/4 v1, 0x1

    goto :goto_27

    :goto_26
    iput v0, v1, Ll5/a;->t:F

    const/4 v0, 0x0

    goto :goto_25

    :goto_27
    add-int/2addr v2, v1

    goto :goto_24

    :cond_33
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_34

    if-eqz v5, :cond_34

    const/4 v2, 0x0

    :goto_28
    iget v0, v4, Ll5/f;->g:I

    if-ge v2, v0, :cond_34

    iget-object v0, v4, Ll5/f;->b:[Ll5/a;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll5/a;->f(Z)V

    const/4 v0, 0x1

    add-int/2addr v2, v0

    goto :goto_28

    :cond_34
    const/4 v1, 0x0

    move v2, v1

    :goto_29
    iget v0, v4, Ll5/f;->g:I

    if-ge v2, v0, :cond_36

    iget-object v0, v4, Ll5/f;->b:[Ll5/a;

    aget-object v0, v0, v2

    iget v3, v0, Ll5/a;->x:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_35

    iget v3, v0, Ll5/a;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Ll5/a;->a:I

    :cond_35
    add-int/2addr v2, v5

    goto :goto_29

    :cond_36
    :goto_2a
    move-object/from16 v0, v20

    goto :goto_2b

    :cond_37
    move-object/from16 v20, v1

    move-object/from16 v17, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object v4, v10

    const/4 v1, 0x0

    goto :goto_2a

    :goto_2b
    iget-object v0, v0, Ll5/a;->k:Ll5/a;

    move-object v1, v0

    move-object v10, v4

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v23

    const/4 v6, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_38
    move-object/from16 v17, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    iget-object v1, v0, Ll5/h;->v:Lk5/g;

    invoke-virtual {v1}, Lk5/g;->b()V

    iget-object v2, v0, Ll5/h;->c:Ll5/a;

    :goto_2c
    if-eqz v2, :cond_3b

    iget v3, v2, Ll5/a;->a:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_39

    goto :goto_2d

    :cond_39
    iget v3, v2, Ll5/a;->x:I

    if-ne v3, v4, :cond_3a

    goto :goto_2d

    :cond_3a
    invoke-virtual {v2}, Ll5/a;->j()V

    :goto_2d
    iget-object v2, v2, Ll5/a;->k:Ll5/a;

    goto :goto_2c

    :cond_3b
    invoke-virtual/range {v19 .. v19}, Lg4/e;->c()V

    invoke-virtual {v1}, Lk5/g;->a()F

    invoke-virtual/range {v18 .. v18}, Lk5/g;->a()F

    goto :goto_2e

    :cond_3c
    move-object/from16 v17, v4

    move-object/from16 v23, v5

    move-object/from16 v18, v8

    :goto_2e
    iget-boolean v1, v0, Ll5/h;->l:Z

    if-eqz v1, :cond_3d

    move-object/from16 v1, v23

    iget v2, v1, Ll5/g;->a:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3e

    invoke-virtual/range {v18 .. v18}, Lk5/g;->b()V

    invoke-virtual {v0, v1}, Ll5/h;->g(Ll5/g;)V

    invoke-virtual/range {v18 .. v18}, Lk5/g;->a()F

    goto :goto_2f

    :cond_3d
    move-object/from16 v1, v23

    const/4 v3, 0x0

    :cond_3e
    :goto_2f
    iget v2, v1, Ll5/g;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3f

    iget v1, v1, Ll5/g;->b:F

    iput v1, v0, Ll5/h;->j:F

    :cond_3f
    iget v1, v0, Ll5/h;->a:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    iget-object v1, v0, Ll5/h;->c:Ll5/a;

    :goto_30
    if-eqz v1, :cond_40

    iget-object v2, v1, Ll5/a;->g:Lk5/i;

    invoke-virtual {v2}, Lk5/i;->l()V

    const/4 v2, 0x0

    iput v2, v1, Ll5/a;->h:F

    iget-object v1, v1, Ll5/a;->k:Ll5/a;

    goto :goto_30

    :cond_40
    iget v1, v0, Ll5/h;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Ll5/h;->a:I

    invoke-virtual/range {v17 .. v17}, Lk5/g;->a()F

    return-void
.end method
