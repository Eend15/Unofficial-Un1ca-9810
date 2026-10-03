.class public abstract LW4/q;
.super Lu3/a;
.source "SourceFile"

# interfaces
.implements Lu3/f;


# static fields
.field public static final e:LW4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW4/p;

    sget-object v1, Lu3/e;->d:Lu3/e;

    sget-object v2, LW4/o;->d:LW4/o;

    invoke-direct {v0, v1, v2}, LW4/p;-><init>(Lu3/h;LE3/b;)V

    sput-object v0, LW4/q;->e:LW4/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lu3/e;->d:Lu3/e;

    invoke-direct {p0, v0}, Lu3/a;-><init>(Lu3/h;)V

    return-void
.end method


# virtual methods
.method public final K(Lu3/h;)Lu3/i;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LW4/p;

    sget-object v1, Lu3/j;->d:Lu3/j;

    if-eqz v0, :cond_1

    check-cast p1, LW4/p;

    iget-object v0, p0, Lu3/a;->d:Lu3/h;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, LW4/p;->e:Lu3/h;

    if-ne v2, v0, :cond_2

    :cond_0
    iget-object p1, p1, LW4/p;->d:LF3/l;

    invoke-interface {p1, p0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/g;

    if-eqz p1, :cond_2

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    sget-object v0, Lu3/e;->d:Lu3/e;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final W(Lu3/h;)Lu3/g;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LW4/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, LW4/p;

    iget-object v0, p0, Lu3/a;->d:Lu3/h;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, LW4/p;->e:Lu3/h;

    if-ne v2, v0, :cond_3

    :cond_0
    iget-object p1, p1, LW4/p;->d:LF3/l;

    invoke-interface {p1, p0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/g;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_1
    sget-object v0, Lu3/e;->d:Lu3/e;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public abstract X(Lu3/i;Ljava/lang/Runnable;)V
.end method

.method public Y()Z
    .locals 0

    instance-of p0, p0, LW4/f0;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
