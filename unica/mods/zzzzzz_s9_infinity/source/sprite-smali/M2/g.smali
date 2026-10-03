.class public final LM2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field public final a:LO2/a;


# direct methods
.method public constructor <init>(LO2/a;)V
    .locals 1

    const-string v0, "utils"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/g;->a:LO2/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, LM2/g;->a:LO2/a;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p0

    sget-object v0, LM2/g;->b:Ljava/lang/String;

    const-string v1, "getWorkerTag : "

    invoke-static {v1, v0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WorkerRegister"

    invoke-virtual {p0, v2, v0, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LM2/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Z
    .locals 11

    iget-object p0, p0, LM2/g;->a:LO2/a;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object v0

    sget-object v1, LM2/g;->b:Ljava/lang/String;

    const-string v2, "hasRegisteredWorker, "

    invoke-static {v2, v1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "WorkerRegister"

    invoke-virtual {v0, v5, v1, v4}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LM2/g;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, LC2/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v7, p0, LO2/a;->e:LT2/b;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, LT2/b;->c(I)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "weatherId"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, -0x1

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "generate_image_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object v7

    sget-object v8, LM2/g;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8, v9}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, LM2/g;->b:Ljava/lang/String;

    invoke-static {v7, v6}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v1

    goto :goto_0

    :cond_2
    const-string p0, "wallpaper"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    move v4, v3

    :cond_4
    sget-object p0, LM2/g;->b:Ljava/lang/String;

    if-eqz p0, :cond_5

    if-eqz v4, :cond_5

    move v3, v1

    :cond_5
    return v3
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LM2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LM2/g;->a:LO2/a;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p0

    sget-object p1, LM2/g;->b:Ljava/lang/String;

    const-string v0, "unregisterWorkerTag for "

    invoke-static {v0, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WorkerRegister"

    invoke-virtual {p0, v1, p1, v0}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    sput-object p0, LM2/g;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
