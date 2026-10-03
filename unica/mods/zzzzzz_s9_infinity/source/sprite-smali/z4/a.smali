.class public final Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS4/b;


# static fields
.field public static final d:Lz4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz4/a;->d:Lz4/a;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, LX3/W;

    invoke-virtual {p1}, LX3/W;->m()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    invoke-virtual {v0}, LX3/W;->K0()LX3/W;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
