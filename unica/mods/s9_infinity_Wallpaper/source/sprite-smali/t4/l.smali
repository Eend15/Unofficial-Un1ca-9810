.class public abstract Lt4/l;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public e:Lt4/j;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt4/k;-><init>()V

    sget-object v0, Lt4/j;->c:Lt4/j;

    iput-object v0, p0, Lt4/l;->e:Lt4/j;

    return-void
.end method


# virtual methods
.method public final f(Lt4/m;)V
    .locals 3

    iget-boolean v0, p0, Lt4/l;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt4/l;->e:Lt4/j;

    invoke-virtual {v0}, Lt4/j;->b()Lt4/j;

    move-result-object v0

    iput-object v0, p0, Lt4/l;->e:Lt4/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt4/l;->f:Z

    :cond_0
    iget-object p0, p0, Lt4/l;->e:Lt4/j;

    iget-object p1, p1, Lt4/m;->d:Lt4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lt4/j;->a:Lt4/C;

    iget-object v1, v1, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lt4/j;->a:Lt4/C;

    if-ge v0, v1, :cond_1

    iget-object v1, v2, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0, v1}, Lt4/j;->g(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lt4/C;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lt4/j;->g(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method
