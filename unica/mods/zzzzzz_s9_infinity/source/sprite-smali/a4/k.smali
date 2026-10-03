.class public final synthetic La4/k;
.super LF3/h;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final l:La4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/h;-><init>(I)V

    sput-object v0, La4/k;->l:La4/k;

    return-void
.end method


# virtual methods
.method public final b()LL3/d;
    .locals 1

    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Ljava/lang/reflect/Member;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "isSynthetic()Z"

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Member;

    const-string p0, "p0"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "isSynthetic"

    return-object p0
.end method
