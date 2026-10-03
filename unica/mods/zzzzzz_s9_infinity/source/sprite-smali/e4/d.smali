.class public final Le4/d;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:Le4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Le4/d;->d:Le4/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LU3/x;

    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Le4/c;->b:Ls4/f;

    invoke-interface {p1}, LU3/x;->c()LR3/j;

    move-result-object p1

    sget-object v0, LR3/o;->s:Ls4/c;

    invoke-virtual {p1, v0}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object p1

    invoke-static {p0, p1}, Le0/a;->A(Ls4/f;LU3/e;)LX3/W;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, LX3/X;

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "Error: AnnotationTarget[]"

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    :cond_1
    return-object p0
.end method
