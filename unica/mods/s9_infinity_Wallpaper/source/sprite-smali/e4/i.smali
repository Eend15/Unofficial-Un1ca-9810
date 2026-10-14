.class public final Le4/i;
.super Le4/b;
.source "SourceFile"


# static fields
.field public static final synthetic g:[LL3/l;


# instance fields
.field public final f:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Le4/i;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, Le4/i;->g:[LL3/l;

    return-void
.end method

.method public constructor <init>(La4/c;Landroidx/recyclerview/widget/b;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LR3/o;->v:Ls4/c;

    invoke-direct {p0, p2, p1, v0}, Le4/b;-><init>(Landroidx/recyclerview/widget/b;La4/c;Ls4/c;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    new-instance p2, La0/o;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Le4/i;->f:LI4/i;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, Le4/i;->f:LI4/i;

    sget-object v0, Le4/i;->g:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
