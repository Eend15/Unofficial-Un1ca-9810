.class public final Lv4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:Lv4/p;

.field public final synthetic e:LU3/b;


# direct methods
.method public constructor <init>(Lv4/p;LU3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/m;->d:Lv4/p;

    iput-object p2, p0, Lv4/m;->e:LU3/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LU3/b;

    iget-object v0, p0, Lv4/m;->d:Lv4/p;

    iget-object p0, p0, Lv4/m;->e:LU3/b;

    const-string v1, "second"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lv4/p;->d(LU3/b;LU3/b;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
