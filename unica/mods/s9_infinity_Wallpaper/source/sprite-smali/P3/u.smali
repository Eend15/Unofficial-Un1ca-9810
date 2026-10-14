.class public abstract LP3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/f;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/reflect/Member;

.field public final c:Ljava/lang/reflect/Type;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    iput-object p2, p0, LP3/u;->c:Ljava/lang/reflect/Type;

    iput-object p3, p0, LP3/u;->d:Ljava/lang/Class;

    if-eqz p3, :cond_0

    new-instance p1, LA1/e;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, LA1/e;-><init>(I)V

    invoke-virtual {p1, p3}, LA1/e;->O(Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, LA1/e;->P(Ljava/lang/Object;)V

    iget-object p1, p1, LA1/e;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    invoke-static {p1}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lr3/h;->u0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LP3/u;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An object member requires the object instance passed as the first argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, LP3/u;->c:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LP3/u;->a:Ljava/util/List;

    return-object p0
.end method
