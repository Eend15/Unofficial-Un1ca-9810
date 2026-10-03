.class public abstract LP4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/a;


# instance fields
.field public final a:LF3/l;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, LF3/l;

    iput-object p2, p0, LP4/o;->a:LF3/l;

    const-string p2, "must return "

    invoke-static {p1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LP4/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LP4/o;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lf4/f;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LK/I;->V(LP4/a;Lf4/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lf4/f;)Z
    .locals 1

    iget-object v0, p1, LX3/w;->j:LJ4/C;

    iget-object p0, p0, LP4/o;->a:LF3/l;

    invoke-static {p1}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p1

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
