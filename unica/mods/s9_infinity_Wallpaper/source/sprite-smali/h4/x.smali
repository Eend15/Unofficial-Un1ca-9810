.class public final Lh4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS4/b;


# static fields
.field public static final d:Lh4/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/x;->d:Lh4/x;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, LU3/e;

    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "it.typeConstructor.supertypes"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    sget-object p1, Lh4/i;->i:Lh4/i;

    invoke-static {p0, p1}, LU4/j;->g0(LU4/i;LE3/b;)LU4/f;

    move-result-object p0

    new-instance p1, LU4/n;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LU4/n;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
