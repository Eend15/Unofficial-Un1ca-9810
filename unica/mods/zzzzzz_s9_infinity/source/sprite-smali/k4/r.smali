.class public final Lk4/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public c:Lq3/f;


# direct methods
.method public constructor <init>(Lw0/l;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lk4/r;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk4/r;->b:Ljava/util/ArrayList;

    new-instance p1, Lq3/f;

    const-string p2, "V"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lk4/r;->c:Lq3/f;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Lk4/e;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk4/r;->b:Ljava/util/ArrayList;

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, LU4/n;

    new-instance v1, La0/o;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p2}, La0/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, LU4/n;-><init>(LE3/a;)V

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, Lr3/v;->d0(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_1

    move p2, v1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LU4/b;

    iget-object v2, v0, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/u;

    iget v2, v0, Lr3/u;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lr3/u;->b:Ljava/lang/Object;

    check-cast v0, Lk4/e;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p2, Lk4/t;

    invoke-direct {p2, v1}, Lk4/t;-><init>(Ljava/util/LinkedHashMap;)V

    :goto_1
    new-instance v0, Lq3/f;

    invoke-direct {v0, p1, p2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(LA4/c;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LA4/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.desc"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq3/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lk4/r;->c:Lq3/f;

    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Lk4/e;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LU4/n;

    new-instance v1, La0/o;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p2}, La0/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, LU4/n;-><init>(LE3/a;)V

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, Lr3/v;->d0(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LU4/b;

    iget-object v2, v0, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/u;

    iget v2, v0, Lr3/u;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lr3/u;->b:Ljava/lang/Object;

    check-cast v0, Lk4/e;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p2, Lk4/t;

    invoke-direct {p2, v1}, Lk4/t;-><init>(Ljava/util/LinkedHashMap;)V

    new-instance v0, Lq3/f;

    invoke-direct {v0, p1, p2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lk4/r;->c:Lq3/f;

    return-void
.end method
