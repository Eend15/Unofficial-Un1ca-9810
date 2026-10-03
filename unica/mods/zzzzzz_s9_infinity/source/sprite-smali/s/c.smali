.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Ls/d;

.field public final e:I

.field public f:Ls/c;

.field public g:I

.field public h:I

.field public i:Lq/f;


# direct methods
.method public constructor <init>(Ls/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Ls/c;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ls/c;->h:I

    iput-object p1, p0, Ls/c;->d:Ls/d;

    iput p2, p0, Ls/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ls/c;II)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ls/c;->g()V

    return-void

    :cond_0
    iput-object p1, p0, Ls/c;->f:Ls/c;

    iget-object v0, p1, Ls/c;->a:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Ls/c;->a:Ljava/util/HashSet;

    :cond_1
    iget-object p1, p0, Ls/c;->f:Ls/c;

    iget-object p1, p1, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iput p2, p0, Ls/c;->g:I

    iput p3, p0, Ls/c;->h:I

    return-void
.end method

.method public final b(ILjava/util/ArrayList;Lt/n;)V
    .locals 1

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v0, v0, Ls/c;->d:Ls/d;

    invoke-static {v0, p1, p2, p3}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Ls/c;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ls/c;->b:I

    return p0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Ls/c;->d:Ls/d;

    iget v0, v0, Ls/d;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Ls/c;->h:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ls/c;->d:Ls/d;

    iget v2, v2, Ls/d;->e0:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Ls/c;->g:I

    return p0
.end method

.method public final e()Z
    .locals 4

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/c;

    iget v2, v1, Ls/c;->e:I

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v3

    iget-object v1, v1, Ls/c;->d:Ls/d;

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v2}, Li4/b;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    iget-object v1, v1, Ls/d;->H:Ls/c;

    goto :goto_0

    :pswitch_1
    iget-object v1, v1, Ls/d;->G:Ls/c;

    goto :goto_0

    :pswitch_2
    iget-object v1, v1, Ls/d;->J:Ls/c;

    goto :goto_0

    :pswitch_3
    iget-object v1, v1, Ls/d;->I:Ls/c;

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v1}, Ls/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Ls/c;->f:Ls/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Ls/c;->f:Ls/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls/c;->f:Ls/c;

    iget-object v0, v0, Ls/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls/c;->f:Ls/c;

    iput-object v1, v0, Ls/c;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Ls/c;->a:Ljava/util/HashSet;

    iput-object v1, p0, Ls/c;->f:Ls/c;

    const/4 v0, 0x0

    iput v0, p0, Ls/c;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Ls/c;->h:I

    iput-boolean v0, p0, Ls/c;->c:Z

    iput v0, p0, Ls/c;->b:I

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ls/c;->i:Lq/f;

    if-nez v0, :cond_0

    new-instance v0, Lq/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq/f;-><init>(I)V

    iput-object v0, p0, Ls/c;->i:Lq/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lq/f;->c()V

    :goto_0
    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Ls/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/c;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls/c;->d:Ls/d;

    iget-object v1, v1, Ls/d;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls/c;->e:I

    invoke-static {p0}, Li4/b;->l(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
