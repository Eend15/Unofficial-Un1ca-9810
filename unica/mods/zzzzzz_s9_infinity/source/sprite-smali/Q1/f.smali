.class public final LQ1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQ1/b;

.field public b:La2/m;

.field public c:Ljava/lang/String;


# virtual methods
.method public final a()La2/m;
    .locals 0

    iget-object p0, p0, LQ1/f;->b:La2/m;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layoutArrayItem"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
