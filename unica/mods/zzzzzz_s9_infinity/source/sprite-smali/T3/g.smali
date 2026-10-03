.class public final LT3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/c;


# static fields
.field public static final d:LT3/e;

.field public static final synthetic e:[LL3/l;

.field public static final f:Ls4/c;

.field public static final g:Ls4/f;

.field public static final h:Ls4/b;


# instance fields
.field public final a:LX3/D;

.field public final b:LE3/b;

.field public final c:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LT3/g;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LT3/g;->e:[LL3/l;

    new-instance v0, LT3/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT3/g;->d:LT3/e;

    sget-object v0, LR3/p;->j:Ls4/c;

    sput-object v0, LT3/g;->f:Ls4/c;

    sget-object v0, LR3/o;->c:Ls4/e;

    invoke-virtual {v0}, Ls4/e;->f()Ls4/f;

    move-result-object v1

    const-string v2, "cloneable.shortName()"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, LT3/g;->g:Ls4/f;

    invoke-virtual {v0}, Ls4/e;->g()Ls4/c;

    move-result-object v0

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sput-object v0, LT3/g;->h:Ls4/b;

    return-void
.end method

.method public constructor <init>(LI4/l;LX3/D;)V
    .locals 1

    sget-object v0, LT3/f;->d:LT3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LT3/g;->a:LX3/D;

    iput-object v0, p0, LT3/g;->b:LE3/b;

    new-instance p2, LF4/C;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LT3/g;->c:LI4/i;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT3/g;->f:Ls4/c;

    invoke-virtual {p1, v0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LT3/g;->c:LI4/i;

    sget-object p1, LT3/g;->e:[LL3/l;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/n;

    invoke-static {p0}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lr3/t;->d:Lr3/t;

    :goto_0
    return-object p0
.end method

.method public final b(Ls4/b;)LU3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT3/g;->h:Ls4/b;

    invoke-virtual {p1, v0}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LT3/g;->c:LI4/i;

    sget-object p1, LT3/g;->e:[LL3/l;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/n;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c(Ls4/c;Ls4/f;)Z
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LT3/g;->g:Ls4/f;

    invoke-virtual {p2, p0}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LT3/g;->f:Ls4/c;

    invoke-virtual {p1, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
