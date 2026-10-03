.class public final Lx4/a;
.super Lx4/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LV3/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, LV3/b;

    invoke-interface {p0}, LV3/b;->j()LJ4/C;

    move-result-object p0

    return-object p0
.end method
