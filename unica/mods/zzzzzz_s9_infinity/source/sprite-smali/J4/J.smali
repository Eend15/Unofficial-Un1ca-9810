.class public final LJ4/J;
.super LJ4/P;
.source "SourceFile"


# instance fields
.field public final a:LJ4/G;


# direct methods
.method public constructor <init>(LR3/j;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LR3/j;->n()LJ4/G;

    move-result-object p1

    iput-object p1, p0, LJ4/J;->a:LJ4/G;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final b()LJ4/C;
    .locals 0

    iget-object p0, p0, LJ4/J;->a:LJ4/G;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(LK4/g;)LJ4/P;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
