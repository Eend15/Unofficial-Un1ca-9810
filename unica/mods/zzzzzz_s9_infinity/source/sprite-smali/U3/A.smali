.class public final LU3/A;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lw0/i;


# direct methods
.method public synthetic constructor <init>(Lw0/i;I)V
    .locals 0

    iput p2, p0, LU3/A;->d:I

    iput-object p1, p0, LU3/A;->e:Lw0/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LU3/A;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/c;

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT3/k;

    iget-object p0, p0, LU3/A;->e:Lw0/i;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, LU3/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LT3/k;-><init>(LU3/x;Ls4/c;I)V

    return-object v0

    :pswitch_0
    check-cast p1, LU3/y;

    const-string v0, "$dstr$classId$typeParametersCount"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LU3/y;->a:Ls4/b;

    iget-boolean v1, v0, Ls4/b;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ls4/b;->f()Ls4/b;

    move-result-object v1

    iget-object p1, p1, LU3/y;->b:Ljava/util/List;

    const/4 v2, 0x1

    iget-object p0, p0, LU3/A;->e:Lw0/i;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lr3/j;->q0(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lw0/i;->w(Ls4/b;Ljava/util/List;)LU3/e;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v1, LI4/e;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v3

    const-string v4, "classId.packageFqName"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/f;

    :cond_1
    move-object v5, v1

    iget-object v1, v0, Ls4/b;->b:Ls4/c;

    invoke-virtual {v1}, Ls4/c;->e()Ls4/c;

    move-result-object v1

    invoke-virtual {v1}, Ls4/c;->d()Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    new-instance v1, LU3/z;

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, LI4/o;

    invoke-virtual {v0}, Ls4/b;->i()Ls4/f;

    move-result-object v6

    const-string p0, "classId.shortClassName"

    invoke-static {v6, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :goto_1
    move v8, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :goto_2
    move-object v3, v1

    invoke-direct/range {v3 .. v8}, LU3/z;-><init>(LI4/o;LU3/f;Ls4/f;ZI)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unresolved local class: "

    invoke-static {v0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
