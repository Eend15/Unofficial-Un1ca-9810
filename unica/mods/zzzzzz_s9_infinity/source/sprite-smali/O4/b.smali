.class public final LO4/b;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:LO4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LO4/b;->d:LO4/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJ4/b0;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    instance-of p0, p0, Lw4/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
