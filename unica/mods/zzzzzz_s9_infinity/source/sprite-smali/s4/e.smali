.class public final Ls4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ls4/f;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ls4/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public transient b:Ls4/c;

.field public transient c:Ls4/e;

.field public transient d:Ls4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<root>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, Ls4/e;->e:Ls4/f;

    const-string v0, "\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls4/e;->f:Ljava/util/regex/Pattern;

    new-instance v0, Ls4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls4/e;->g:Ls4/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ls4/e;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x2

    .line 7
    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ls4/c;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls4/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ls4/e;->b:Ls4/c;

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Ls4/e;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Ls4/e;->a(I)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ls4/e;Ls4/f;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ls4/e;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Ls4/e;->c:Ls4/e;

    .line 11
    iput-object p3, p0, Ls4/e;->d:Ls4/f;

    return-void

    :cond_0
    const/4 p0, 0x3

    .line 12
    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .locals 8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe"

    const-string v4, "shortName"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_0

    packed-switch p0, :pswitch_data_2

    const-string v7, "fqName"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_4
    aput-object v4, v2, v5

    goto :goto_2

    :pswitch_5
    const-string v7, "segment"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_6
    const-string v7, "name"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_7
    aput-object v3, v2, v5

    goto :goto_2

    :cond_0
    const-string v7, "safe"

    aput-object v7, v2, v5

    :goto_2
    packed-switch p0, :pswitch_data_3

    :pswitch_8
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_9
    const-string v3, "toString"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_a
    const-string v3, "pathSegments"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_b
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_c
    aput-object v4, v2, v6

    goto :goto_3

    :pswitch_d
    const-string v3, "parent"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_e
    const-string v3, "toSafe"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_f
    const-string v3, "asString"

    aput-object v3, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_10
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_11
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_12
    const-string v3, "child"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final b(Ls4/f;)Ls4/e;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ls4/e;

    invoke-direct {v1, v0, p0, p1}, Ls4/e;-><init>(Ljava/lang/String;Ls4/e;Ls4/f;)V

    return-object v1

    :cond_1
    const/16 p0, 0x9

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Ls4/e;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls4/f;->d(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    iput-object v2, p0, Ls4/e;->d:Ls4/f;

    new-instance v2, Ls4/e;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ls4/e;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ls4/e;->c:Ls4/e;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls4/f;->d(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    iput-object v0, p0, Ls4/e;->d:Ls4/f;

    sget-object v0, Ls4/c;->c:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->i()Ls4/e;

    move-result-object v0

    iput-object v0, p0, Ls4/e;->c:Ls4/e;

    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Ls4/e;->b:Ls4/c;

    if-nez v0, :cond_2

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Ls4/e;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    sget-object v1, Ls4/e;->g:Ls4/d;

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Ls4/f;->d(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0xe

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ls4/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ls4/e;

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    iget-object p1, p1, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f()Ls4/f;
    .locals 2

    iget-object v0, p0, Ls4/e;->d:Ls4/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, Ls4/e;->a(I)V

    throw v1

    :cond_1
    iget-object v0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ls4/e;->c()V

    iget-object p0, p0, Ls4/e;->d:Ls4/f;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0xb

    invoke-static {p0}, Ls4/e;->a(I)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Ls4/c;
    .locals 1

    iget-object v0, p0, Ls4/e;->b:Ls4/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v0, Ls4/c;

    invoke-direct {v0, p0}, Ls4/c;-><init>(Ls4/e;)V

    iput-object v0, p0, Ls4/e;->b:Ls4/c;

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ls4/e;->e:Ls4/f;

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x11

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
