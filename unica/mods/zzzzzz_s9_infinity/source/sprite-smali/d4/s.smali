.class public final synthetic Ld4/s;
.super LF3/h;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final l:Ld4/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld4/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/h;-><init>(I)V

    sput-object v0, Ld4/s;->l:Ld4/s;

    return-void
.end method


# virtual methods
.method public final b()LL3/d;
    .locals 2

    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Ld4/q;

    const-string v1, "descriptors.jvm"

    invoke-virtual {p0, v0, v1}, LF3/u;->c(Ljava/lang/Class;Ljava/lang/String;)LL3/d;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls4/c;

    const-string p0, "p0"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld4/q;->a:Ls4/c;

    sget-object p0, Ld4/A;->a:Ld4/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ld4/z;->b:Lo1/b;

    sget-object v0, Lq3/c;->h:Lq3/c;

    const-string v1, "configuredReportLevels"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuredKotlinVersion"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/B;

    if-nez p0, :cond_2

    sget-object p0, Ld4/q;->b:Lo1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/r;

    if-nez p0, :cond_0

    sget-object p0, Ld4/B;->d:Ld4/B;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld4/r;->b:Lq3/c;

    if-eqz p1, :cond_1

    iget p1, p1, Lq3/c;->g:I

    iget v0, v0, Lq3/c;->g:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_1

    iget-object p0, p0, Ld4/r;->c:Ld4/B;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ld4/r;->a:Ld4/B;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "getDefaultReportLevelForAnnotation"

    return-object p0
.end method
