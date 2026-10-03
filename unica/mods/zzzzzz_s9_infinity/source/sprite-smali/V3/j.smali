.class public final LV3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/b;


# instance fields
.field public final a:LR3/j;

.field public final b:Ls4/c;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR3/j;Ls4/c;Ljava/util/Map;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV3/j;->a:LR3/j;

    iput-object p2, p0, LV3/j;->b:Ls4/c;

    iput-object p3, p0, LV3/j;->c:Ljava/util/Map;

    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LC4/g;

    const/16 p3, 0x1c

    invoke-direct {p2, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p1

    iput-object p1, p0, LV3/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ls4/c;
    .locals 0

    iget-object p0, p0, LV3/j;->b:Ls4/c;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LV3/j;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final i()LU3/L;
    .locals 0

    sget-object p0, LU3/L;->a:LU3/M;

    return-object p0
.end method

.method public final j()LJ4/C;
    .locals 1

    iget-object p0, p0, LV3/j;->d:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-type>(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJ4/C;

    return-object p0
.end method
