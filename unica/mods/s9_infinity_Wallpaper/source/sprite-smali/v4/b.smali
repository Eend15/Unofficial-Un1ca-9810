.class public final Lv4/b;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:LU3/a;

.field public final synthetic e:LU3/a;


# direct methods
.method public constructor <init>(LU3/a;LU3/a;)V
    .locals 0

    iput-object p1, p0, Lv4/b;->d:LU3/a;

    iput-object p2, p0, Lv4/b;->e:LU3/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LU3/j;

    check-cast p2, LU3/j;

    iget-object v0, p0, Lv4/b;->d:LU3/a;

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lv4/b;->e:LU3/a;

    invoke-static {p2, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
