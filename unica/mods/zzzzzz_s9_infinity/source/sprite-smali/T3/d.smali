.class public final LT3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ls4/b;

.field public static final f:Ls4/c;

.field public static final g:Ls4/b;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static final k:Ljava/util/HashMap;

.field public static final l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/e;->g:LS3/e;

    iget-object v2, v1, LS3/e;->d:Ls4/c;

    iget-object v2, v2, Ls4/c;->a:Ls4/e;

    invoke-virtual {v2}, Ls4/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT3/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/e;->i:LS3/e;

    iget-object v3, v1, LS3/e;->d:Ls4/c;

    iget-object v3, v3, Ls4/c;->a:Ls4/e;

    invoke-virtual {v3}, Ls4/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT3/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/e;->h:LS3/e;

    iget-object v3, v1, LS3/e;->d:Ls4/c;

    iget-object v3, v3, Ls4/c;->a:Ls4/e;

    invoke-virtual {v3}, Ls4/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT3/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/e;->j:LS3/e;

    iget-object v3, v1, LS3/e;->d:Ls4/c;

    iget-object v3, v3, Ls4/c;->a:Ls4/e;

    invoke-virtual {v3}, Ls4/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT3/d;->d:Ljava/lang/String;

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sput-object v0, LT3/d;->e:Ls4/b;

    invoke-virtual {v0}, Ls4/b;->b()Ls4/c;

    move-result-object v0

    sput-object v0, LT3/d;->f:Ls4/c;

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.reflect.KFunction"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sput-object v0, LT3/d;->g:Ls4/b;

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.reflect.KClass"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    const-class v0, Ljava/lang/Class;

    invoke-static {v0}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LT3/d;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LT3/d;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LT3/d;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LT3/d;->k:Ljava/util/HashMap;

    sget-object v0, LR3/o;->A:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->I:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v5

    const-string v6, "kotlinReadOnly.packageFqName"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v7, LT3/c;

    const-class v1, Ljava/lang/Iterable;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v7, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->z:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->H:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v8

    invoke-static {v8, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v8, LT3/c;

    const-class v1, Ljava/util/Iterator;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v8, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->B:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->J:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v9

    invoke-static {v9, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v9, LT3/c;

    const-class v1, Ljava/util/Collection;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v9, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->C:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->K:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v10

    invoke-static {v10, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v10, LT3/c;

    const-class v1, Ljava/util/List;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v10, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->E:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->M:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v11

    invoke-static {v11, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v11, LT3/c;

    const-class v1, Ljava/util/Set;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v11, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->D:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->L:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v12

    invoke-static {v12, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v12}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v12, LT3/c;

    const-class v1, Ljava/util/ListIterator;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v12, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    sget-object v0, LR3/o;->F:Ls4/c;

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v3, LR3/o;->N:Ls4/c;

    new-instance v4, Ls4/b;

    invoke-virtual {v1}, Ls4/b;->g()Ls4/c;

    move-result-object v13

    invoke-virtual {v1}, Ls4/b;->g()Ls4/c;

    move-result-object v14

    invoke-static {v14, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v14}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v3

    invoke-direct {v4, v13, v3, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v13, LT3/c;

    const-class v3, Ljava/util/Map;

    invoke-static {v3}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v3

    invoke-direct {v13, v3, v1, v4}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->G:Ls4/c;

    invoke-virtual {v1}, Ls4/c;->f()Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object v0

    sget-object v1, LR3/o;->O:Ls4/c;

    new-instance v3, Ls4/b;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v14

    invoke-static {v14, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v14}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Ls4/b;-><init>(Ls4/c;Ls4/c;Z)V

    new-instance v14, LT3/c;

    const-class v1, Ljava/util/Map$Entry;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-direct {v14, v1, v0, v3}, LT3/c;-><init>(Ls4/b;Ls4/b;Ls4/b;)V

    filled-new-array/range {v7 .. v14}, [LT3/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LT3/d;->l:Ljava/util/List;

    const-class v1, Ljava/lang/Object;

    sget-object v3, LR3/o;->a:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    const-class v1, Ljava/lang/String;

    sget-object v3, LR3/o;->f:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    const-class v1, Ljava/lang/CharSequence;

    sget-object v3, LR3/o;->e:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    sget-object v1, LR3/o;->k:Ls4/c;

    const-class v3, Ljava/lang/Throwable;

    invoke-static {v3}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v3

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-static {v3, v1}, LT3/d;->a(Ls4/b;Ls4/b;)V

    const-class v1, Ljava/lang/Cloneable;

    sget-object v3, LR3/o;->c:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    const-class v1, Ljava/lang/Number;

    sget-object v3, LR3/o;->i:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    sget-object v1, LR3/o;->l:Ls4/c;

    const-class v3, Ljava/lang/Comparable;

    invoke-static {v3}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v3

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-static {v3, v1}, LT3/d;->a(Ls4/b;Ls4/b;)V

    const-class v1, Ljava/lang/Enum;

    sget-object v3, LR3/o;->j:Ls4/e;

    invoke-static {v1, v3}, LT3/d;->c(Ljava/lang/Class;Ls4/e;)V

    sget-object v1, LR3/o;->r:Ls4/c;

    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-static {v3}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v3

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-static {v3, v1}, LT3/d;->a(Ls4/b;Ls4/b;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT3/c;

    iget-object v3, v1, LT3/c;->a:Ls4/b;

    iget-object v4, v1, LT3/c;->b:Ls4/b;

    invoke-static {v3, v4}, LT3/d;->a(Ls4/b;Ls4/b;)V

    iget-object v1, v1, LT3/c;->c:Ls4/b;

    invoke-virtual {v1}, Ls4/b;->b()Ls4/c;

    move-result-object v6

    invoke-static {v6, v3}, LT3/d;->b(Ls4/c;Ls4/b;)V

    invoke-virtual {v4}, Ls4/b;->b()Ls4/c;

    move-result-object v3

    invoke-virtual {v1}, Ls4/b;->b()Ls4/c;

    move-result-object v4

    invoke-virtual {v1}, Ls4/b;->b()Ls4/c;

    move-result-object v1

    invoke-virtual {v1}, Ls4/c;->i()Ls4/e;

    move-result-object v1

    const-string v6, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LT3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ls4/c;->i()Ls4/e;

    move-result-object v1

    const-string v3, "readOnlyFqName.toUnsafe()"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LT3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, LA4/c;->values()[LA4/c;

    move-result-object v0

    array-length v1, v0

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, LA4/c;->e()Ls4/c;

    move-result-object v6

    invoke-static {v6}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v6

    invoke-virtual {v4}, LA4/c;->d()LR3/l;

    move-result-object v4

    const-string v7, "jvmType.primitiveType"

    invoke-static {v4, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, LR3/p;->j:Ls4/c;

    iget-object v4, v4, LR3/l;->d:Ls4/f;

    invoke-virtual {v7, v4}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v4

    invoke-static {v4}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v4

    invoke-static {v6, v4}, LT3/d;->a(Ls4/b;Ls4/b;)V

    goto :goto_1

    :cond_1
    sget-object v0, LR3/d;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/b;

    new-instance v3, Ls4/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "kotlin.jvm.internal."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ls4/b;->i()Ls4/f;

    move-result-object v6

    invoke-virtual {v6}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CompanionObject"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v3

    sget-object v4, Ls4/h;->b:Ls4/f;

    invoke-virtual {v1, v4}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object v1

    invoke-static {v3, v1}, LT3/d;->a(Ls4/b;Ls4/b;)V

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_3
    add-int/lit8 v1, v0, 0x1

    new-instance v3, Ls4/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "kotlin.jvm.functions.Function"

    invoke-static {v4, v6}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v3

    new-instance v4, Ls4/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Function"

    invoke-static {v6, v7}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    sget-object v7, LR3/p;->j:Ls4/c;

    invoke-direct {v4, v7, v6}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    invoke-static {v3, v4}, LT3/d;->a(Ls4/b;Ls4/b;)V

    new-instance v3, Ls4/c;

    sget-object v4, LT3/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v4}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    sget-object v0, LT3/d;->g:Ls4/b;

    invoke-static {v3, v0}, LT3/d;->b(Ls4/c;Ls4/b;)V

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    :goto_4
    add-int/lit8 v0, v5, 0x1

    sget-object v1, LS3/e;->j:LS3/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, LS3/e;->d:Ls4/c;

    iget-object v4, v4, Ls4/c;->a:Ls4/e;

    invoke-virtual {v4}, Ls4/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ls4/c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sget-object v1, LT3/d;->g:Ls4/b;

    invoke-static {v3, v1}, LT3/d;->b(Ls4/c;Ls4/b;)V

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    sget-object v0, LR3/o;->b:Ls4/e;

    invoke-virtual {v0}, Ls4/e;->g()Ls4/c;

    move-result-object v0

    const-string v1, "nothing.toSafe()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    invoke-static {v1}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-static {v0, v1}, LT3/d;->b(Ls4/c;Ls4/b;)V

    return-void

    :cond_3
    move v5, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_3
.end method

.method public static a(Ls4/b;Ls4/b;)V
    .locals 2

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->i()Ls4/e;

    move-result-object v0

    const-string v1, "javaClassId.asSingleFqName().toUnsafe()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LT3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ls4/b;->b()Ls4/c;

    move-result-object p1

    invoke-static {p1, p0}, LT3/d;->b(Ls4/c;Ls4/b;)V

    return-void
.end method

.method public static b(Ls4/c;Ls4/b;)V
    .locals 1

    invoke-virtual {p0}, Ls4/c;->i()Ls4/e;

    move-result-object p0

    const-string v0, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT3/d;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Class;Ls4/e;)V
    .locals 1

    invoke-virtual {p1}, Ls4/e;->g()Ls4/c;

    move-result-object p1

    const-string v0, "kotlinFqName.toSafe()"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    invoke-static {p1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p1

    invoke-static {p0, p1}, LT3/d;->a(Ls4/b;Ls4/b;)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)Ls4/b;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ls4/c;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, LT3/d;->d(Ljava/lang/Class;)Ls4/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ls4/e;Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Ls4/e;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-static {p0, p1, v0}, LV4/m;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x30

    invoke-static {p1, v1, v0}, LR3/f;->w(CCZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LV4/t;->d0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x17

    if-lt p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, Ls4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Ls4/e;)Ls4/b;
    .locals 2

    sget-object v0, LT3/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, LT3/d;->e(Ls4/e;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, LT3/d;->e:Ls4/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LT3/d;->c:Ljava/lang/String;

    invoke-static {p0, v0}, LT3/d;->e(Ls4/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LT3/d;->b:Ljava/lang/String;

    invoke-static {p0, v0}, LT3/d;->e(Ls4/e;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, LT3/d;->g:Ls4/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, LT3/d;->d:Ljava/lang/String;

    invoke-static {p0, v0}, LT3/d;->e(Ls4/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, LT3/d;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ls4/b;

    :goto_0
    return-object v1
.end method
