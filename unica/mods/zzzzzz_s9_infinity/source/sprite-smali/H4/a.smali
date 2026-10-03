.class public LH4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/h;


# static fields
.field public static final synthetic e:[LL3/l;


# instance fields
.field public final d:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LH4/a;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LH4/a;->e:[LL3/l;

    return-void
.end method

.method public constructor <init>(LI4/o;LE3/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LI4/l;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LH4/a;->d:LI4/i;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)LV3/b;
    .locals 0

    invoke-static {p0, p1}, LR3/f;->y(LV3/h;Ls4/c;)LV3/b;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ls4/c;)Z
    .locals 0

    invoke-static {p0, p1}, LR3/f;->O(LV3/h;Ls4/c;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object p0, p0, LH4/a;->d:LI4/i;

    sget-object v0, LH4/a;->e:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, LH4/a;->d:LI4/i;

    sget-object v0, LH4/a;->e:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
