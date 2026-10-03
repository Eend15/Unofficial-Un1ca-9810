.class public final LC4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LC4/m;

# The value of this static final field might be set in the static constructor
.field public static final d:I = 0x1

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:LC4/f;

.field public static final n:LC4/f;

.field public static final o:LC4/f;

.field public static final p:LC4/f;

.field public static final q:LC4/f;

.field public static final r:Ljava/util/ArrayList;

.field public static final s:Ljava/util/ArrayList;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, LC4/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LC4/f;->c:LC4/m;

    sget v0, LC4/f;->d:I

    shl-int/lit8 v1, v0, 0x1

    sput v0, LC4/f;->e:I

    shl-int/lit8 v2, v0, 0x2

    sput v1, LC4/f;->f:I

    shl-int/lit8 v3, v0, 0x3

    sput v2, LC4/f;->g:I

    shl-int/lit8 v4, v0, 0x4

    sput v3, LC4/f;->h:I

    shl-int/lit8 v5, v0, 0x5

    sput v4, LC4/f;->i:I

    shl-int/lit8 v6, v0, 0x6

    sput v5, LC4/f;->j:I

    shl-int/lit8 v7, v0, 0x7

    sput v7, LC4/f;->d:I

    add-int/lit8 v6, v6, -0x1

    sput v6, LC4/f;->k:I

    or-int v7, v0, v1

    or-int/2addr v7, v2

    sput v7, LC4/f;->l:I

    or-int v8, v1, v4

    or-int/2addr v8, v5

    or-int v9, v4, v5

    new-instance v10, LC4/f;

    invoke-direct {v10, v6}, LC4/f;-><init>(I)V

    sput-object v10, LC4/f;->m:LC4/f;

    new-instance v6, LC4/f;

    invoke-direct {v6, v9}, LC4/f;-><init>(I)V

    sput-object v6, LC4/f;->n:LC4/f;

    new-instance v6, LC4/f;

    invoke-direct {v6, v0}, LC4/f;-><init>(I)V

    new-instance v0, LC4/f;

    invoke-direct {v0, v1}, LC4/f;-><init>(I)V

    new-instance v0, LC4/f;

    invoke-direct {v0, v2}, LC4/f;-><init>(I)V

    new-instance v0, LC4/f;

    invoke-direct {v0, v7}, LC4/f;-><init>(I)V

    sput-object v0, LC4/f;->o:LC4/f;

    new-instance v0, LC4/f;

    invoke-direct {v0, v3}, LC4/f;-><init>(I)V

    new-instance v0, LC4/f;

    invoke-direct {v0, v4}, LC4/f;-><init>(I)V

    sput-object v0, LC4/f;->p:LC4/f;

    new-instance v0, LC4/f;

    invoke-direct {v0, v5}, LC4/f;-><init>(I)V

    sput-object v0, LC4/f;->q:LC4/f;

    new-instance v0, LC4/f;

    invoke-direct {v0, v8}, LC4/f;-><init>(I)V

    const-class v0, LC4/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "T::class.java.fields"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    const-string v7, "field.name"

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, LC4/f;

    if-eqz v9, :cond_3

    check-cast v8, LC4/f;

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_4

    new-instance v6, LC4/e;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v8, LC4/f;->b:I

    invoke-direct {v6, v7, v4}, LC4/e;-><init>(ILjava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sput-object v1, LC4/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    :goto_3
    if-ge v5, v2, :cond_7

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v4, v3

    and-int/2addr v4, v3

    if-ne v3, v4, :cond_b

    new-instance v4, LC4/e;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, v2}, LC4/e;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v4, v6

    :goto_6
    if-eqz v4, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sput-object v1, LC4/f;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    .line 6
    sget-object v0, Lr3/r;->d:Lr3/r;

    .line 7
    invoke-direct {p0, p1, v0}, LC4/f;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    const-string v0, "excludes"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LC4/f;->a:Ljava/util/List;

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC4/d;

    .line 4
    invoke-virtual {v0}, LC4/d;->a()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    goto :goto_0

    .line 5
    :cond_0
    iput p1, p0, LC4/f;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget p0, p0, LC4/f;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, LC4/f;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_5

    check-cast p1, LC4/f;

    iget-object v1, p0, LC4/f;->a:Ljava/util/List;

    iget-object v3, p1, LC4/f;->a:Ljava/util/List;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, LC4/f;->b:I

    iget p1, p1, LC4/f;->b:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LC4/f;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LC4/f;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    sget-object v0, LC4/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LC4/e;

    iget v3, v3, LC4/e;->a:I

    iget v4, p0, LC4/f;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, LC4/e;

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, v1, LC4/e;->b:Ljava/lang/String;

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, LC4/f;->s:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC4/e;

    iget v4, v1, LC4/e;->a:I

    invoke-virtual {p0, v4}, LC4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, v1, LC4/e;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, " | "

    const/4 v5, 0x0

    const/16 v8, 0x3e

    invoke-static/range {v3 .. v8}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "DescriptorKindFilter("

    const-string v2, ", "

    invoke-static {v1, v0, v2}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, LC4/f;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
