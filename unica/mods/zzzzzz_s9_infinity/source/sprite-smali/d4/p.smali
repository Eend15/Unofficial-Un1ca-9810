.class public final Ld4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lv4/g;
    .locals 0

    sget-object p0, Lv4/g;->d:Lv4/g;

    return-object p0
.end method

.method public b(LU3/a;LU3/a;LU3/e;)Lv4/h;
    .locals 5

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/b;

    sget-object v0, Lv4/h;->e:Lv4/h;

    if-eqz p0, :cond_9

    instance-of p0, p2, LU3/s;

    if-eqz p0, :cond_9

    invoke-static {p2}, LR3/j;->y(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget p0, Ld4/g;->l:I

    move-object p0, p2

    check-cast p0, LU3/s;

    move-object v1, p0

    check-cast v1, LX3/p;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v2

    const-string v3, "subDescriptor.name"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld4/g;->b(Ls4/f;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ld4/F;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld4/F;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v1, p1

    check-cast v1, LU3/b;

    invoke-static {v1}, La4/x;->B(LU3/b;)LU3/b;

    move-result-object v1

    invoke-interface {p0}, LU3/s;->F()Z

    move-result v2

    instance-of v3, p1, LU3/s;

    if-eqz v3, :cond_2

    move-object v4, p1

    check-cast v4, LU3/s;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, LU3/s;->F()Z

    move-result v4

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    invoke-interface {p0}, LU3/s;->F()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    instance-of v2, p3, Lf4/c;

    if-eqz v2, :cond_9

    invoke-interface {p0}, LU3/s;->A()LU3/s;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_9

    invoke-static {p3, v1}, La4/x;->F(LU3/e;LU3/b;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    instance-of p3, v1, LU3/s;

    if-eqz p3, :cond_8

    if-eqz v3, :cond_8

    check-cast v1, LU3/s;

    invoke-static {v1}, Ld4/g;->a(LU3/s;)LU3/s;

    move-result-object p3

    if-eqz p3, :cond_8

    const/4 p3, 0x2

    invoke-static {p0, p3}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p1

    check-cast v1, LU3/s;

    invoke-interface {v1}, LU3/s;->a()LU3/s;

    move-result-object v1

    const-string v2, "superDescriptor.original"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p3}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    :goto_4
    invoke-static {p1, p2}, La4/x;->t(LU3/a;LU3/a;)Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v0

    :cond_a
    sget-object p0, Lv4/h;->f:Lv4/h;

    return-object p0
.end method
