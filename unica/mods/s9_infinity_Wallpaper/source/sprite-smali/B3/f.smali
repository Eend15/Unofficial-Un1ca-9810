.class public final LB3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LG3/a;


# instance fields
.field public final synthetic d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final synthetic h:LU4/i;


# direct methods
.method public constructor <init>(LB3/h;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LB3/f;->d:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LB3/f;->h:LU4/i;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    .line 4
    iget-object v1, p1, LB3/h;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/io/File;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iget-object p1, p1, LB3/h;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LB3/f;->d(Ljava/io/File;)LB3/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, LB3/d;

    .line 7
    invoke-direct {p0, p1}, LB3/g;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 9
    iput p1, p0, LB3/f;->e:I

    :goto_0
    return-void
.end method

.method public constructor <init>(LU4/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB3/f;->d:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LB3/f;->h:LU4/i;

    .line 12
    iget-object p1, p1, LU4/f;->a:LU4/i;

    .line 13
    invoke-interface {p1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LB3/f;->f:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, LB3/f;->e:I

    return-void
.end method

.method public constructor <init>(LU4/g;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LB3/f;->d:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LB3/f;->h:LU4/i;

    .line 17
    iget-object p1, p1, LU4/g;->a:LU4/i;

    .line 18
    invoke-interface {p1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LB3/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LU4/l;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LB3/f;->d:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LB3/f;->h:LU4/i;

    .line 21
    iget-object p1, p1, LU4/l;->b:Ljava/lang/Object;

    check-cast p1, LU4/i;

    .line 22
    invoke-interface {p1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LB3/f;->f:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, LB3/f;->e:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    :cond_0
    iget-object v0, p0, LB3/f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LB3/f;->h:LU4/i;

    check-cast v1, LU4/f;

    iget-object v2, v1, LU4/f;->c:Ljava/lang/Object;

    invoke-interface {v2, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v1, v1, LU4/f;->b:Z

    if-ne v2, v1, :cond_0

    iput-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, LB3/f;->e:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, LB3/f;->e:I

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LB3/f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LB3/f;->h:LU4/i;

    check-cast v1, LU4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LU3/q;->g:LU3/q;

    invoke-virtual {v1, v0}, LU3/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, LB3/f;->e:I

    iput-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LB3/f;->e:I

    return-void
.end method

.method public d(Ljava/io/File;)LB3/b;
    .locals 2

    iget-object v0, p0, LB3/f;->h:LU4/i;

    check-cast v0, LB3/h;

    iget-object v0, v0, LB3/h;->c:Ljava/lang/Object;

    check-cast v0, LB3/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, LB3/c;

    invoke-direct {v0, p0, p1}, LB3/c;-><init>(LB3/f;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, LB3/e;

    invoke-direct {v0, p0, p1}, LB3/e;-><init>(LB3/f;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, LB3/f;->e:I

    return v1

    :cond_0
    iget-object v0, p0, LB3/f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LB3/f;->h:LU4/i;

    check-cast v2, LU4/g;

    iget-object v3, v2, LU4/g;->c:Ljava/lang/Object;

    iget-object v2, v2, LU4/g;->b:LE3/b;

    invoke-interface {v2, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    iput v1, p0, LB3/f;->e:I

    return v1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, LB3/f;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, LB3/f;->e:I

    :goto_0
    iget-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB3/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, LB3/g;->a()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, v1, LB3/g;->a:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v3, p0, LB3/f;->h:LU4/i;

    check-cast v3, LB3/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7fffffff

    if-lt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, LB3/f;->d(Ljava/io/File;)LB3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, v2

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iput-object v0, p0, LB3/f;->f:Ljava/lang/Object;

    iput v1, p0, LB3/f;->e:I

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, LB3/f;->e:I

    :goto_3
    iget p0, p0, LB3/f;->e:I

    if-ne p0, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, LB3/f;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LB3/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LB3/f;->c()V

    :cond_0
    iget p0, p0, LB3/f;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, LB3/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LB3/f;->f()Z

    move-result v1

    :goto_1
    return v1

    :pswitch_1
    iget v0, p0, LB3/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, LB3/f;->b()V

    :cond_4
    iget p0, p0, LB3/f;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_2
    iget v0, p0, LB3/f;->e:I

    if-eqz v0, :cond_7

    const/4 p0, 0x1

    if-eq v0, p0, :cond_8

    const/4 p0, 0x2

    if-ne v0, p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p0}, LB3/f;->g()Z

    move-result p0

    :cond_8
    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LB3/f;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LB3/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LB3/f;->c()V

    :cond_0
    iget v0, p0, LB3/f;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, LB3/f;->g:Ljava/lang/Object;

    iput v1, p0, LB3/f;->e:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget v0, p0, LB3/f;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p0}, LB3/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LB3/f;->e:I

    iget-object p0, p0, LB3/f;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, LB3/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, LB3/f;->b()V

    :cond_5
    iget v0, p0, LB3/f;->e:I

    if-eqz v0, :cond_6

    iget-object v0, p0, LB3/f;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, LB3/f;->g:Ljava/lang/Object;

    iput v1, p0, LB3/f;->e:I

    return-object v0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_2
    iget v0, p0, LB3/f;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    iput v2, p0, LB3/f;->e:I

    iget-object p0, p0, LB3/f;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, LB3/f;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iput v2, p0, LB3/f;->e:I

    iget-object p0, p0, LB3/f;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    :goto_1
    return-object p0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, LB3/f;->d:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
