.class public final LW4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/h;


# instance fields
.field public final d:LF3/l;

.field public final e:Lu3/h;


# direct methods
.method public constructor <init>(Lu3/h;LE3/b;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, LF3/l;

    iput-object p2, p0, LW4/p;->d:LF3/l;

    instance-of p2, p1, LW4/p;

    if-eqz p2, :cond_0

    check-cast p1, LW4/p;

    iget-object p1, p1, LW4/p;->e:Lu3/h;

    :cond_0
    iput-object p1, p0, LW4/p;->e:Lu3/h;

    return-void
.end method
