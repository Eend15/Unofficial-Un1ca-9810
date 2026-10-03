.class public final LU4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LG3/a;


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/util/Iterator;

.field public f:I


# direct methods
.method public constructor <init>(LU4/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LU4/b;->d:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, LU4/c;->a:LU4/i;

    .line 4
    invoke-interface {v0}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LU4/b;->e:Ljava/util/Iterator;

    .line 5
    iget p1, p1, LU4/c;->b:I

    iput p1, p0, LU4/b;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LU4/b;->d:I

    const-string v0, "iterator"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU4/b;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, LU4/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_0
    :pswitch_0
    iget v0, p0, LU4/b;->f:I

    iget-object v1, p0, LU4/b;->e:Ljava/util/Iterator;

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, LU4/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LU4/b;->f:I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LU4/b;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr3/u;

    iget v1, p0, LU4/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LU4/b;->f:I

    if-ltz v1, :cond_0

    iget-object p0, p0, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lr3/u;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lr3/k;->i0()V

    const/4 p0, 0x0

    throw p0

    :goto_0
    :pswitch_0
    iget v0, p0, LU4/b;->f:I

    iget-object v1, p0, LU4/b;->e:Ljava/util/Iterator;

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, LU4/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LU4/b;->f:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, LU4/b;->d:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
