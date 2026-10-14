.class public final synthetic LN3/a;
.super LF3/h;
.source "SourceFile"

# interfaces
.implements LE3/c;


# static fields
.field public static final l:LN3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LF3/h;-><init>(I)V

    sput-object v0, LN3/a;->l:LN3/a;

    return-void
.end method


# virtual methods
.method public final b()LL3/d;
    .locals 1

    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, LF4/u;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;"

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LF4/u;

    check-cast p2, Ln4/y;

    const-string p0, "p1"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p2"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LF4/u;->e(Ln4/y;)LH4/u;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "loadFunction"

    return-object p0
.end method
