.class public final LJ4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Collection;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    const-string v0, "allSupertypes"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/f;->a:Ljava/util/Collection;

    sget-object p1, LJ4/v;->c:LJ4/p;

    invoke-static {p1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LJ4/f;->b:Ljava/util/List;

    return-void
.end method
