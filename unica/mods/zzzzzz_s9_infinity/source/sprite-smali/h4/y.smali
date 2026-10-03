.class public final Lh4/y;
.super LS4/m;
.source "SourceFile"


# instance fields
.field public final synthetic b:LU3/e;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:LF3/l;


# direct methods
.method public constructor <init>(LU3/e;Ljava/util/Set;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/y;->b:LU3/e;

    iput-object p2, p0, Lh4/y;->c:Ljava/util/Set;

    check-cast p3, LF3/l;

    iput-object p3, p0, Lh4/y;->d:LF3/l;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LU3/e;

    const-string v0, "current"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh4/y;->b:LU3/e;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LU3/e;->U()LC4/o;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lh4/A;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh4/y;->d:LF3/l;

    invoke-interface {v0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, Lh4/y;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final bridge synthetic i()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
