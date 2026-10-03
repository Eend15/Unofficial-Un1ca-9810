.class public final LW4/T;
.super LW4/Y;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(LW4/P;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LW4/Y;-><init>(Z)V

    invoke-virtual {p0, p1}, LW4/Y;->t(LW4/P;)V

    invoke-virtual {p0}, LW4/Y;->p()LW4/h;

    move-result-object p1

    instance-of v1, p1, LW4/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, LW4/i;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LW4/U;->m()LW4/Y;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, LW4/Y;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, LW4/Y;->p()LW4/h;

    move-result-object p1

    instance-of v3, p1, LW4/i;

    if-eqz v3, :cond_2

    check-cast p1, LW4/i;

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, LW4/U;->m()LW4/Y;

    move-result-object p1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, LW4/T;->e:Z

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 0

    iget-boolean p0, p0, LW4/T;->e:Z

    return p0
.end method
