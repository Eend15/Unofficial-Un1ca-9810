.class public final synthetic LQ1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LQ1/d;->d:I

    iput-object p1, p0, LQ1/d;->e:Ljava/lang/Object;

    iput-object p3, p0, LQ1/d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LQ1/d;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, LQ1/d;->e:Ljava/lang/Object;

    check-cast v0, Lm2/n;

    invoke-virtual {v0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadWallpaper, invokeOnCompletion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object p0, p0, LQ1/d;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    check-cast p1, Ll5/a;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LQ1/d;->e:Ljava/lang/Object;

    check-cast p1, LQ1/f;

    invoke-virtual {p1}, LQ1/f;->a()La2/m;

    move-result-object v0

    iget-object v0, v0, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p1}, LQ1/f;->a()La2/m;

    move-result-object v2

    iget-object v2, v2, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, La2/j;

    iget-object v2, v6, La2/j;->b:Lw0/i;

    iget-object v2, v2, Lw0/i;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "parent"

    invoke-static {v2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LQ1/d;->f:Ljava/lang/Object;

    check-cast v3, La2/f;

    iget-object v4, v6, La2/j;->b:Lw0/i;

    if-nez v2, :cond_3

    iget-object v2, v4, Lw0/i;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v3, La2/f;->a:Ljava/lang/String;

    invoke-static {v2, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v4, Lw0/i;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, LQ1/f;->a()La2/m;

    move-result-object v3

    iget-object v3, v3, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/f;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, v3, La2/f;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "<set-?>"

    invoke-static {v2, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v4, Lw0/i;->e:Ljava/lang/Object;

    move-object v2, v3

    :goto_3
    iget-object v3, v4, Lw0/i;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, LQ1/f;->a()La2/m;

    move-result-object v4

    iget-object v4, v4, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, La2/f;

    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, LQ1/f;->a()La2/m;

    move-result-object v4

    iget-object v4, v4, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v7, p1, LQ1/f;->a:LQ1/b;

    if-ne v3, v4, :cond_4

    new-instance v8, LQ1/e;

    const/4 v3, 0x0

    invoke-direct {v8, v3, p1}, LQ1/e;-><init>(ILjava/lang/Object;)V

    check-cast v7, LW1/c;

    iget-object v3, v7, LW1/c;->m:LX1/i;

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, LX1/i;->c(La2/f;La2/f;La2/j;ZLE3/b;)V

    goto :goto_4

    :cond_4
    check-cast v7, LW1/c;

    iget-object v3, v7, LW1/c;->m:LX1/i;

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, LX1/i;->c(La2/f;La2/f;La2/j;ZLE3/b;)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
