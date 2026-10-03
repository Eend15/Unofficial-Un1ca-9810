.class public final LF4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:LF4/i;

.field public final b:LI4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LR3/o;->c:Ls4/e;

    invoke-virtual {v0}, Ls4/e;->g()Ls4/c;

    move-result-object v0

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    invoke-static {v0}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LF4/g;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(LF4/i;)V
    .locals 2

    const-string v0, "components"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF4/g;->a:LF4/i;

    new-instance v0, LF4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, LF4/i;->a:LI4/o;

    check-cast p1, LI4/l;

    invoke-virtual {p1, v0}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, LF4/g;->b:LI4/j;

    return-void
.end method


# virtual methods
.method public final a(Ls4/b;LF4/d;)LU3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF4/g;->b:LI4/j;

    new-instance v0, LF4/f;

    invoke-direct {v0, p1, p2}, LF4/f;-><init>(Ls4/b;LF4/d;)V

    invoke-virtual {p0, v0}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/e;

    return-object p0
.end method
