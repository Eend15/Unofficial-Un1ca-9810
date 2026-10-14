.class public final LU3/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LU3/M;

.field public static final synthetic e:[LL3/l;


# instance fields
.field public final a:LX3/b;

.field public final b:Ljava/lang/Object;

.field public final c:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LU3/K;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LU3/K;->e:[LL3/l;

    new-instance v0, LU3/M;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LU3/M;-><init>(I)V

    sput-object v0, LU3/K;->d:LU3/M;

    return-void
.end method

.method public constructor <init>(LX3/b;LI4/o;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/K;->a:LX3/b;

    iput-object p3, p0, LU3/K;->b:Ljava/lang/Object;

    new-instance p1, LC4/g;

    const/16 p3, 0x1a

    invoke-direct {p1, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    check-cast p2, LI4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LI4/i;

    invoke-direct {p3, p2, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, LU3/K;->c:LI4/i;

    return-void
.end method
