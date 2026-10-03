.class public final LJ4/K;
.super LJ4/P;
.source "SourceFile"


# instance fields
.field public final a:LU3/O;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU3/O;)V
    .locals 2

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/K;->a:LU3/O;

    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance v0, LC4/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p1

    iput-object p1, p0, LJ4/K;->b:Ljava/lang/Object;

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

    iget-object p0, p0, LJ4/K;->b:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

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
