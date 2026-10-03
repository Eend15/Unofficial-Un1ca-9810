.class public final Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/f;


# static fields
.field public static final g:Ljava/util/List;


# instance fields
.field public final d:[Ljava/lang/String;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Any"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/Nothing"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "/Unit"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "/Throwable"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "/Number"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "/Byte"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "/Double"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "/Float"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "/Int"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "/Long"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "/Short"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "/Boolean"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "/Char"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "/CharSequence"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "/String"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "/Comparable"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "/Enum"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "/Array"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "/ByteArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "/DoubleArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "/FloatArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "/IntArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "/LongArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "/ShortArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "/BooleanArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v1, "/CharArray"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v1, "/Cloneable"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v1, "/Annotation"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v1, "/collections/Iterable"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v1, "/collections/MutableIterable"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "/collections/Collection"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v1, "/collections/MutableCollection"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v1, "/collections/List"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v1, "/collections/MutableList"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v1, "/collections/Set"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v1, "/collections/MutableSet"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v1, "/collections/Map"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "/collections/MutableMap"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v1, "/collections/Map.Entry"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v1, "/collections/MutableMap.MutableEntry"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v1, "/collections/Iterator"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v1, "/collections/MutableIterator"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v1, "/collections/ListIterator"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v1, "/collections/MutableListIterator"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    filled-new-array/range {v2 .. v45}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr4/g;->g:Ljava/util/List;

    invoke-static {v0}, Lr3/j;->T0(Ljava/util/List;)LU4/n;

    move-result-object v0

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Lr3/v;->d0(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, LU4/b;

    iget-object v3, v1, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/u;

    iget-object v3, v1, Lr3/u;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v1, v1, Lr3/u;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lq4/i;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "strings"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/g;->d:[Ljava/lang/String;

    iget-object p2, p1, Lq4/i;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lr3/t;->d:Lr3/t;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lr4/g;->e:Ljava/util/Set;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lq4/i;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/h;

    iget v1, v0, Lq4/h;->f:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    iput-object p2, p0, Lr4/g;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final C(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lr4/g;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final m0(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lr4/g;->n(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(I)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lr4/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/h;

    iget v1, v0, Lq4/h;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object p0, v0, Lq4/h;->h:Ljava/lang/Object;

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast p0, Lt4/e;

    invoke-virtual {p0}, Lt4/e;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt4/e;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    iput-object p1, v0, Lq4/h;->h:Ljava/lang/Object;

    :cond_1
    move-object p0, p1

    goto :goto_0

    :cond_2
    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    sget-object v1, Lr4/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v4, v0, Lq4/h;->g:I

    if-ltz v4, :cond_3

    if-gt v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lr4/g;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_0
    iget-object p1, v0, Lq4/h;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-lt p1, v3, :cond_4

    iget-object p1, v0, Lq4/h;->j:Ljava/util/List;

    const-string v5, "substringIndexList"

    invoke-static {p1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v6, "begin"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "end"

    invoke-static {p1, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v6, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object p1, v0, Lq4/h;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v5, "string"

    if-lt p1, v3, :cond_5

    iget-object p1, v0, Lq4/h;->l:Ljava/util/List;

    const-string v6, "replaceCharList"

    invoke-static {p1, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p0, v2, p1}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    :cond_5
    iget-object p1, v0, Lq4/h;->i:Lq4/g;

    if-nez p1, :cond_6

    sget-object p1, Lq4/g;->e:Lq4/g;

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x2e

    const/16 v2, 0x24

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v3, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-static {p0, v2, v0}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_9
    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
