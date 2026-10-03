.class public final Lx4/h;
.super Lx4/g;
.source "SourceFile"


# instance fields
.field public final b:Ls4/b;

.field public final c:Ls4/f;


# direct methods
.method public constructor <init>(Ls4/b;Ls4/f;)V
    .locals 1

    new-instance v0, Lq3/f;

    invoke-direct {v0, p1, p2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lx4/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lx4/h;->b:Ls4/b;

    iput-object p2, p0, Lx4/h;->c:Ls4/f;

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx4/h;->b:Ls4/b;

    invoke-static {p1, v0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lv4/f;->n(LU3/j;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, LU3/e;->n()LJ4/G;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Containing class for error-class based enum entry "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx4/h;->c:Ls4/f;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx4/h;->b:Ls4/b;

    invoke-virtual {v1}, Ls4/b;->i()Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx4/h;->c:Ls4/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
