.class public final LJ4/T;
.super LJ4/U;
.source "SourceFile"


# instance fields
.field public final synthetic b:LJ4/U;


# direct methods
.method public constructor <init>(LJ4/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/T;->b:LJ4/U;

    return-void
.end method


# virtual methods
.method public final c(LV3/h;)LV3/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/T;->b:LJ4/U;

    invoke-virtual {p0, p1}, LJ4/U;->c(LV3/h;)LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(LJ4/C;)LJ4/P;
    .locals 0

    iget-object p0, p0, LJ4/T;->b:LJ4/U;

    invoke-virtual {p0, p1}, LJ4/U;->d(LJ4/C;)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LJ4/T;->b:LJ4/U;

    invoke-virtual {p0}, LJ4/U;->e()Z

    move-result p0

    return p0
.end method

.method public final f(ILJ4/C;)LJ4/C;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    iget-object p0, p0, LJ4/T;->b:LJ4/U;

    invoke-virtual {p0, p1, p2}, LJ4/U;->f(ILJ4/C;)LJ4/C;

    move-result-object p0

    return-object p0
.end method
