.class public abstract LJ4/O;
.super LJ4/U;
.source "SourceFile"


# static fields
.field public static final b:LJ4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ4/O;->b:LJ4/d;

    return-void
.end method


# virtual methods
.method public final d(LJ4/C;)LJ4/P;
    .locals 0

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ4/O;->g(LJ4/M;)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(LJ4/M;)LJ4/P;
.end method
