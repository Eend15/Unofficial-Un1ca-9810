.class public final LO3/N;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/O;


# direct methods
.method public synthetic constructor <init>(LO3/O;I)V
    .locals 0

    iput p2, p0, LO3/N;->d:I

    iput-object p1, p0, LO3/N;->e:LO3/O;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, LO3/N;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/N;->e:LO3/O;

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object v0

    iget-boolean v0, v0, LX3/L;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO3/c0;->e:LO3/l0;

    invoke-virtual {v0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object v2

    iget-object v3, p0, LO3/c0;->j:Ljava/lang/Object;

    invoke-static {v3, v2}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead"

    const-string v4, "\'"

    :try_start_0
    sget-object v5, LO3/c0;->k:Ljava/lang/Object;

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object v5

    iget-object v5, v5, LX3/L;->v:LX3/O;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :goto_2
    new-instance v0, LM3/a;

    const-string v1, "Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    new-instance v0, LO3/M;

    iget-object p0, p0, LO3/N;->e:LO3/O;

    invoke-direct {v0, p0}, LO3/M;-><init>(LO3/O;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
