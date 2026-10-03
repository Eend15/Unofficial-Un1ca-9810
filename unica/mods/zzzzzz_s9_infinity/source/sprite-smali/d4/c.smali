.class public final Ld4/c;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/c;


# static fields
.field public static final d:Ld4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld4/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Ld4/c;->d:Ld4/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx4/h;

    check-cast p2, Ld4/a;

    const-string p0, "$this$mapConstantToQualifierApplicabilityTypes"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lx4/h;->c:Ls4/f;

    invoke-virtual {p0}, Ls4/f;->c()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Ld4/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
