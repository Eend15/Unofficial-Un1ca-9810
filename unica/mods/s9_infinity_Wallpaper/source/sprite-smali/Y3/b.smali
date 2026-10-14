.class public final LY3/b;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LY3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LY3/b;

    const-string v1, "protected_and_package"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LY3/b;->d:LY3/b;

    return-void
.end method


# virtual methods
.method public final a(LU3/b0;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "visibility"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LU3/S;->d:LU3/S;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, LU3/a0;->a:Ls3/f;

    sget-object p0, LU3/V;->d:LU3/V;

    const/4 v1, 0x1

    if-eq p1, p0, :cond_2

    sget-object p0, LU3/W;->d:LU3/W;

    if-ne p1, p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected and package*/"

    return-object p0
.end method

.method public final e()LU3/b0;
    .locals 0

    sget-object p0, LU3/X;->d:LU3/X;

    return-object p0
.end method
