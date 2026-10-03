.class public final Lh4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls4/f;

.field public final b:La4/n;


# direct methods
.method public constructor <init>(Ls4/f;La4/n;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/o;->a:Ls4/f;

    iput-object p2, p0, Lh4/o;->b:La4/n;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lh4/o;

    if-eqz v0, :cond_0

    check-cast p1, Lh4/o;

    iget-object p1, p1, Lh4/o;->a:Ls4/f;

    iget-object p0, p0, Lh4/o;->a:Ls4/f;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lh4/o;->a:Ls4/f;

    invoke-virtual {p0}, Ls4/f;->hashCode()I

    move-result p0

    return p0
.end method
