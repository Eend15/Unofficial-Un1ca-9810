.class public final Ld4/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ld4/t;


# instance fields
.field public final a:Ld4/v;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld4/t;

    sget-object v1, Ld4/q;->a:Ls4/c;

    sget-object v1, Lq3/c;->h:Lq3/c;

    const-string v2, "configuredKotlinVersion"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld4/q;->c:Ld4/r;

    iget-object v3, v2, Ld4/r;->b:Lq3/c;

    if-eqz v3, :cond_0

    iget v3, v3, Lq3/c;->g:I

    iget v1, v1, Lq3/c;->g:I

    sub-int/2addr v3, v1

    if-gtz v3, :cond_0

    iget-object v1, v2, Ld4/r;->c:Ld4/B;

    goto :goto_0

    :cond_0
    iget-object v1, v2, Ld4/r;->a:Ld4/B;

    :goto_0
    const-string v2, "globalReportLevel"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld4/B;->e:Ld4/B;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    new-instance v3, Ld4/v;

    invoke-direct {v3, v1, v2}, Ld4/v;-><init>(Ld4/B;Ld4/B;)V

    sget-object v1, Ld4/s;->l:Ld4/s;

    invoke-direct {v0, v3}, Ld4/t;-><init>(Ld4/v;)V

    sput-object v0, Ld4/t;->c:Ld4/t;

    return-void
.end method

.method public constructor <init>(Ld4/v;)V
    .locals 1

    sget-object v0, Ld4/s;->l:Ld4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/t;->a:Ld4/v;

    iget-boolean p1, p1, Ld4/v;->d:Z

    if-nez p1, :cond_1

    sget-object p1, Ld4/q;->a:Ls4/c;

    invoke-virtual {v0, p1}, Ld4/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ld4/B;->d:Ld4/B;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Ld4/t;->b:Z

    return-void
.end method
