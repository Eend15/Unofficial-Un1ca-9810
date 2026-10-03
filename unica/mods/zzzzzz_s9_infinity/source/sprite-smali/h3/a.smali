.class public final Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lh3/b;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh3/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh3/a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lh3/a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lh3/a;->a:Lh3/b;

    return-void
.end method

.method public static a(Lh3/b;)Lh3/a;
    .locals 1

    instance-of v0, p0, Lh3/a;

    if-eqz v0, :cond_0

    check-cast p0, Lh3/a;

    return-object p0

    :cond_0
    new-instance v0, Lh3/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lh3/a;-><init>(Lh3/b;)V

    return-object v0
.end method

.method public static b(Lo3/a;)Lh3/a;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LC2/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LC2/c;-><init>(Lo3/a;I)V

    invoke-static {v0}, Lh3/a;->a(Lh3/b;)Lh3/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lh3/b;)Lh3/b;
    .locals 1

    instance-of v0, p0, Lh3/a;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lh3/a;

    invoke-direct {v0, p0}, Lh3/a;-><init>(Lh3/b;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lh3/a;->b:Ljava/lang/Object;

    sget-object v1, Lh3/a;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lh3/a;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lh3/a;->a:Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lh3/a;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput-object v0, p0, Lh3/a;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lh3/a;->a:Lh3/b;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    return-object v0
.end method
