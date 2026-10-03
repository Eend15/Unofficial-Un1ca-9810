.class public final synthetic LX1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:LX1/i;

.field public final synthetic e:La2/j;

.field public final synthetic f:LE3/b;


# direct methods
.method public synthetic constructor <init>(LX1/i;La2/j;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/h;->d:LX1/i;

    iput-object p2, p0, LX1/h;->e:La2/j;

    iput-object p3, p0, LX1/h;->f:LE3/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ln5/c;

    const-string v0, "joint"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LX1/h;->d:LX1/i;

    iget-object v0, v0, LX1/i;->f:Ln/f;

    iget-object v1, p0, LX1/h;->e:La2/j;

    iget-object v1, v1, La2/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LX1/h;->f:LE3/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
