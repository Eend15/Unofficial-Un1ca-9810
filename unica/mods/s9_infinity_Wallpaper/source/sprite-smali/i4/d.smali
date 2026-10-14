.class public abstract Li4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/c;

    const-string v1, "java.lang.Class"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Li4/d;->a:Ls4/c;

    return-void
.end method

.method public static final a(LU3/O;Li4/a;)LJ4/P;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Li4/a;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, LJ4/Q;

    invoke-static {p0}, LJ4/c;->r(LU3/O;)LJ4/C;

    move-result-object p0

    invoke-direct {p1, v0, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_0

    :cond_0
    new-instance p1, LJ4/K;

    invoke-direct {p1, p0}, LJ4/K;-><init>(LU3/O;)V

    :goto_0
    return-object p1
.end method

.method public static b(IZLh4/B;I)Li4/a;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, LB/a;->t(ILjava/lang/String;)V

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    new-instance p2, Li4/a;

    const/16 p3, 0x12

    invoke-direct {p2, p0, p1, v0, p3}, Li4/a;-><init>(IZLjava/util/Set;I)V

    return-object p2
.end method
