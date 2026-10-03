.class public LK/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LK/U;


# instance fields
.field public final a:LK/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK/K;

    invoke-direct {v0}, LK/K;-><init>()V

    invoke-virtual {v0}, LK/L;->b()LK/U;

    move-result-object v0

    iget-object v0, v0, LK/U;->a:LK/S;

    invoke-virtual {v0}, LK/S;->a()LK/U;

    move-result-object v0

    iget-object v0, v0, LK/U;->a:LK/S;

    invoke-virtual {v0}, LK/S;->b()LK/U;

    move-result-object v0

    iget-object v0, v0, LK/U;->a:LK/S;

    invoke-virtual {v0}, LK/S;->c()LK/U;

    move-result-object v0

    sput-object v0, LK/S;->b:LK/U;

    return-void
.end method

.method public constructor <init>(LK/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/S;->a:LK/U;

    return-void
.end method


# virtual methods
.method public a()LK/U;
    .locals 0

    iget-object p0, p0, LK/S;->a:LK/U;

    return-object p0
.end method

.method public b()LK/U;
    .locals 0

    iget-object p0, p0, LK/S;->a:LK/U;

    return-object p0
.end method

.method public c()LK/U;
    .locals 0

    iget-object p0, p0, LK/S;->a:LK/U;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()LK/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LK/S;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LK/S;

    invoke-virtual {p0}, LK/S;->k()Z

    move-result v1

    invoke-virtual {p1}, LK/S;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LK/S;->j()Z

    move-result v1

    invoke-virtual {p1}, LK/S;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object v1

    invoke-virtual {p1}, LK/S;->h()LC/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LK/S;->g()LC/b;

    move-result-object v1

    invoke-virtual {p1}, LK/S;->g()LC/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LK/S;->e()LK/e;

    move-result-object p0

    invoke-virtual {p1}, LK/S;->e()LK/e;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(I)LC/b;
    .locals 0

    sget-object p0, LC/b;->e:LC/b;

    return-object p0
.end method

.method public g()LC/b;
    .locals 0

    sget-object p0, LC/b;->e:LC/b;

    return-object p0
.end method

.method public h()LC/b;
    .locals 0

    sget-object p0, LC/b;->e:LC/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, LK/S;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, LK/S;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object v2

    invoke-virtual {p0}, LK/S;->g()LC/b;

    move-result-object v3

    invoke-virtual {p0}, LK/S;->e()LK/e;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i(IIII)LK/U;
    .locals 0

    sget-object p0, LK/S;->b:LK/U;

    return-object p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l([LC/b;)V
    .locals 0

    return-void
.end method

.method public m(LK/U;)V
    .locals 0

    return-void
.end method
