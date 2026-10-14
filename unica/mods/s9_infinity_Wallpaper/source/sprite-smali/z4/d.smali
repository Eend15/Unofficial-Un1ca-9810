.class public final Lz4/d;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:Lz4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Lz4/d;->d:Lz4/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LU3/j;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p0

    return-object p0
.end method
