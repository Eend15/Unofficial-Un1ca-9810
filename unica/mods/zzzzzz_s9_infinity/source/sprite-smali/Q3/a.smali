.class public abstract LQ3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ld4/x;->a:Ls4/c;

    sget-object v1, Ld4/x;->h:Ls4/c;

    sget-object v2, Ld4/x;->i:Ls4/c;

    sget-object v3, Ld4/x;->c:Ls4/c;

    sget-object v4, Ld4/x;->d:Ls4/c;

    sget-object v5, Ld4/x;->f:Ls4/c;

    filled-new-array/range {v0 .. v5}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/c;

    invoke-static {v2}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, LQ3/a;->a:Ljava/util/LinkedHashSet;

    return-void
.end method
