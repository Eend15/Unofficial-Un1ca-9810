.class public final Ls4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls4/c;

.field public final b:Ls4/c;

.field public final c:Z


# direct methods
.method public constructor <init>(Ls4/c;Ls4/c;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls4/b;->a:Ls4/c;

    .line 3
    iput-object p2, p0, Ls4/b;->b:Ls4/c;

    .line 4
    iput-boolean p3, p0, Ls4/b;->c:Z

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 5
    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ls4/c;Ls4/f;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p2}, Ls4/c;->j(Ls4/f;)Ls4/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    return-void

    :cond_0
    const/4 p0, 0x4

    .line 7
    invoke-static {p0}, Ls4/b;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Ls4/b;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 12

    const/16 v0, 0xe

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v7, 0x2

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kotlin/reflect/jvm/internal/impl/name/ClassId"

    const/4 v10, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v11, "topLevelFqName"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_0
    const-string v11, "string"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_1
    const-string v11, "segment"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_2
    const-string v11, "name"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_3
    aput-object v9, v8, v10

    goto :goto_2

    :pswitch_4
    const-string v11, "topLevelName"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_5
    const-string v11, "relativeClassName"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_6
    const-string v11, "packageFqName"

    aput-object v11, v8, v10

    :goto_2
    const/4 v10, 0x1

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v9, v8, v10

    goto :goto_3

    :cond_2
    const-string v9, "asString"

    aput-object v9, v8, v10

    goto :goto_3

    :cond_3
    const-string v9, "asSingleFqName"

    aput-object v9, v8, v10

    goto :goto_3

    :cond_4
    const-string v9, "getShortClassName"

    aput-object v9, v8, v10

    goto :goto_3

    :cond_5
    const-string v9, "getRelativeClassName"

    aput-object v9, v8, v10

    goto :goto_3

    :cond_6
    const-string v9, "getPackageFqName"

    aput-object v9, v8, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v9, "topLevel"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_7
    const-string v9, "fromString"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_8
    const-string v9, "startsWith"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_9
    const-string v9, "createNestedClassId"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_a
    const-string v9, "<init>"

    aput-object v9, v8, v7

    :goto_4
    :pswitch_b
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;Z)Ls4/b;
    .locals 4

    if-eqz p0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    new-instance v1, Ls4/b;

    new-instance v2, Ls4/c;

    invoke-direct {v2, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Ls4/c;

    invoke-direct {v0, p0}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, p1}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    return-object v1

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Ls4/c;)Ls4/b;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ls4/b;

    invoke-virtual {p0}, Ls4/c;->e()Ls4/c;

    move-result-object v1

    invoke-virtual {p0}, Ls4/c;->f()Ls4/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b()Ls4/c;
    .locals 3

    iget-object v0, p0, Ls4/b;->a:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v1

    iget-object p0, p0, Ls4/b;->b:Ls4/c;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v1, Ls4/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ls4/c;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ls4/b;->a:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v1

    iget-object p0, p0, Ls4/b;->b:Ls4/c;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0xe

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ls4/f;)Ls4/b;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ls4/b;

    invoke-virtual {p0}, Ls4/b;->g()Ls4/c;

    move-result-object v1

    iget-object v2, p0, Ls4/b;->b:Ls4/c;

    invoke-virtual {v2, p1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object p1

    iget-boolean p0, p0, Ls4/b;->c:Z

    invoke-direct {v0, v1, p1, p0}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    return-object v0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ls4/b;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ls4/b;

    iget-object v2, p0, Ls4/b;->a:Ls4/c;

    iget-object v3, p1, Ls4/b;->a:Ls4/c;

    invoke-virtual {v2, v3}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ls4/b;->b:Ls4/c;

    iget-object v3, p1, Ls4/b;->b:Ls4/c;

    invoke-virtual {v2, v3}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Ls4/b;->c:Z

    iget-boolean p1, p1, Ls4/b;->c:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Ls4/b;
    .locals 3

    iget-object v0, p0, Ls4/b;->b:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->e()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ls4/b;

    invoke-virtual {p0}, Ls4/b;->g()Ls4/c;

    move-result-object v2

    iget-boolean p0, p0, Ls4/b;->c:Z

    invoke-direct {v1, v2, v0, p0}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public final g()Ls4/c;
    .locals 0

    iget-object p0, p0, Ls4/b;->a:Ls4/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h()Ls4/c;
    .locals 0

    iget-object p0, p0, Ls4/b;->b:Ls4/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ls4/b;->a:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ls4/b;->b:Ls4/c;

    invoke-virtual {v1}, Ls4/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Ls4/b;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final i()Ls4/f;
    .locals 0

    iget-object p0, p0, Ls4/b;->b:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->f()Ls4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, Ls4/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls4/b;->a:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v0

    invoke-virtual {p0}, Ls4/b;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
