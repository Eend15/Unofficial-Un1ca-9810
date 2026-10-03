.class public final synthetic LX1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:Ll5/d;

.field public final synthetic e:La2/f;

.field public final synthetic f:LX1/i;

.field public final synthetic g:LE3/b;


# direct methods
.method public synthetic constructor <init>(Ll5/d;La2/f;LX1/i;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/g;->d:Ll5/d;

    iput-object p2, p0, LX1/g;->e:La2/f;

    iput-object p3, p0, LX1/g;->f:LX1/i;

    iput-object p4, p0, LX1/g;->g:LE3/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ll5/a;

    const-string v0, "body"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LX1/g;->d:Ll5/d;

    invoke-virtual {p1, v0}, Ll5/a;->c(Ll5/d;)V

    iget-object v0, p0, LX1/g;->e:La2/f;

    iput-object p1, v0, La2/f;->B:Ll5/a;

    iget-object v0, p0, LX1/g;->f:LX1/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LX1/g;->g:LE3/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
