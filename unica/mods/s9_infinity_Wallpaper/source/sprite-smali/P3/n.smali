.class public final LP3/n;
.super LP3/p;
.source "SourceFile"

# interfaces
.implements LP3/e;


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LP3/p;->a([Ljava/lang/Object;)V

    iget-object p0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-static {p1}, Lr3/h;->q0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
