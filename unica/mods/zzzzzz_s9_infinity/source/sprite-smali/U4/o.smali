.class public final synthetic LU4/o;
.super LF3/i;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final l:LU4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LU4/o;

    const-string v1, "iterator"

    const-string v2, "iterator()Ljava/util/Iterator;"

    const-class v3, LU4/i;

    invoke-direct {v0, v3, v1, v2}, LF3/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LU4/o;->l:LU4/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LU4/i;

    const-string p0, "p0"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
