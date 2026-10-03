.class public final LP3/w;
.super LP3/y;
.source "SourceFile"

# interfaces
.implements LP3/e;


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lr3/r;->d:Lr3/r;

    invoke-direct {p0, p1, v0}, LP3/y;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    iput-object p2, p0, LP3/w;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LP3/y;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, LP3/w;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
