.class public final Lh4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/c;


# static fields
.field public static final a:Lh4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/b;->a:Lh4/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final c()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final d(Ls4/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final e(Ls4/f;)La4/t;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Ls4/f;)V
    .locals 0

    return-void
.end method
