.class public abstract LJ4/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ4/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ4/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ4/U;->a:LJ4/S;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(LV3/h;)LV3/h;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract d(LJ4/C;)LJ4/P;
.end method

.method public e()Z
    .locals 0

    instance-of p0, p0, LJ4/S;

    return p0
.end method

.method public f(ILJ4/C;)LJ4/C;
    .locals 0

    const-string p0, "topLevelType"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p1, p0}, LB/a;->t(ILjava/lang/String;)V

    return-object p2
.end method
