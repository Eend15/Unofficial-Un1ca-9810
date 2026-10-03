.class public abstract Lk4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk4/e;

.field public static final b:Lk4/e;

.field public static final c:Lk4/e;

.field public static final d:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lk4/e;

    sget-object v1, Lk4/h;->d:Lk4/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    sput-object v0, Lk4/k;->a:Lk4/e;

    new-instance v0, Lk4/e;

    sget-object v1, Lk4/h;->e:Lk4/h;

    invoke-direct {v0, v1, v2, v3, v3}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    sput-object v0, Lk4/k;->b:Lk4/e;

    new-instance v0, Lk4/e;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    sput-object v0, Lk4/k;->c:Lk4/e;

    const-string v0, "java/lang/"

    const-string v1, "Object"

    invoke-static {v1, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java/util/function/"

    const-string v3, "Predicate"

    invoke-static {v3, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Function"

    invoke-static {v5, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Consumer"

    invoke-static {v6, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BiFunction"

    invoke-static {v7, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BiConsumer"

    invoke-static {v8, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UnaryOperator"

    invoke-static {v9, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java/util/"

    const-string v11, "stream/Stream"

    invoke-static {v11, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Optional"

    invoke-static {v12, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, La0/k;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, La0/k;-><init>(I)V

    const-string v14, "Iterator"

    invoke-static {v14, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lw0/l;

    invoke-direct {v15, v13, v14}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v14, LV4/w;

    const/4 v4, 0x1

    invoke-direct {v14, v6, v4}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v4, "forEachRemaining"

    invoke-virtual {v15, v4, v14}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v4, "Iterable"

    invoke-static {v4, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v14, Lw0/l;

    invoke-direct {v14, v13, v4}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v4, Lk4/o;

    const/4 v15, 0x4

    move-object/from16 v16, v2

    const/4 v2, 0x1

    invoke-direct {v4, v2, v15}, Lk4/o;-><init>(II)V

    const-string v2, "spliterator"

    invoke-virtual {v14, v2, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v2, "Collection"

    invoke-static {v2, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/l;

    invoke-direct {v4, v13, v2}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v2, LV4/w;

    const/4 v14, 0x7

    invoke-direct {v2, v3, v14}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v14, "removeIf"

    invoke-virtual {v4, v14, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v14, 0x8

    invoke-direct {v2, v11, v14}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v14, "stream"

    invoke-virtual {v4, v14, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v14, 0x9

    invoke-direct {v2, v11, v14}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v11, "parallelStream"

    invoke-virtual {v4, v11, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v2, "List"

    invoke-static {v2, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/l;

    invoke-direct {v4, v13, v2}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v2, LV4/w;

    const/16 v11, 0xa

    invoke-direct {v2, v9, v11}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v9, "replaceAll"

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v2, "Map"

    invoke-static {v2, v10}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/l;

    invoke-direct {v4, v13, v2}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v2, LV4/w;

    const/16 v10, 0xb

    invoke-direct {v2, v8, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v10, "forEach"

    invoke-virtual {v4, v10, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v10, 0xc

    invoke-direct {v2, v1, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v10, "putIfAbsent"

    invoke-virtual {v4, v10, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v10, 0xd

    invoke-direct {v2, v1, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v10, "replace"

    invoke-virtual {v4, v10, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v11, 0xe

    invoke-direct {v2, v1, v11}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v10, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, LV4/w;

    const/16 v10, 0xf

    invoke-direct {v2, v7, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, Lk4/j;

    const/4 v9, 0x0

    invoke-direct {v2, v1, v7, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "compute"

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, Lk4/j;

    const/4 v9, 0x1

    invoke-direct {v2, v1, v5, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "computeIfAbsent"

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, Lk4/j;

    const/4 v9, 0x2

    invoke-direct {v2, v1, v7, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "computeIfPresent"

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, Lk4/j;

    const/4 v9, 0x3

    invoke-direct {v2, v1, v7, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "merge"

    invoke-virtual {v4, v9, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v2, Lw0/l;

    invoke-direct {v2, v13, v12}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v4, LV4/w;

    const/16 v9, 0x10

    invoke-direct {v4, v12, v9}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v9, "empty"

    invoke-virtual {v2, v9, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v4, Lk4/j;

    const/4 v9, 0x4

    invoke-direct {v4, v1, v12, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "of"

    invoke-virtual {v2, v9, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v4, Lk4/j;

    const/4 v9, 0x5

    invoke-direct {v4, v1, v12, v9}, Lk4/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "ofNullable"

    invoke-virtual {v2, v9, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v4, LV4/w;

    const/16 v9, 0x11

    invoke-direct {v4, v1, v9}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v9, "get"

    invoke-virtual {v2, v9, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v4, LV4/w;

    const/16 v10, 0x12

    invoke-direct {v4, v6, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v10, "ifPresent"

    invoke-virtual {v2, v10, v4}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v2, "ref/Reference"

    invoke-static {v2, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/l;

    invoke-direct {v2, v13, v0}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v0, LV4/w;

    const/16 v4, 0x13

    invoke-direct {v0, v1, v4}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v9, v0}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v0, Lw0/l;

    invoke-direct {v0, v13, v3}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v2, LV4/w;

    const/16 v3, 0x14

    invoke-direct {v2, v1, v3}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v3, "test"

    invoke-virtual {v0, v3, v2}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v0, "BiPredicate"

    move-object/from16 v2, v16

    invoke-static {v0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lw0/l;

    invoke-direct {v4, v13, v0}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v0, LV4/w;

    const/16 v10, 0x15

    invoke-direct {v0, v1, v10}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v3, v0}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v0, Lw0/l;

    invoke-direct {v0, v13, v6}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v3, LV4/w;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v4, "accept"

    invoke-virtual {v0, v4, v3}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v0, Lw0/l;

    invoke-direct {v0, v13, v8}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v3, LV4/w;

    const/4 v6, 0x3

    invoke-direct {v3, v1, v6}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v3}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v0, Lw0/l;

    invoke-direct {v0, v13, v5}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v3, LV4/w;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, LV4/w;-><init>(Ljava/lang/String;I)V

    const-string v4, "apply"

    invoke-virtual {v0, v4, v3}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    new-instance v0, Lw0/l;

    invoke-direct {v0, v13, v7}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v3, LV4/w;

    const/4 v5, 0x5

    invoke-direct {v3, v1, v5}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v3}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    const-string v0, "Supplier"

    invoke-static {v0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/l;

    invoke-direct {v2, v13, v0}, Lw0/l;-><init>(La0/k;Ljava/lang/String;)V

    new-instance v0, LV4/w;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v9, v0}, Lw0/l;->e(Ljava/lang/String;LE3/b;)V

    iget-object v0, v13, La0/k;->a:Ljava/util/LinkedHashMap;

    sput-object v0, Lk4/k;->d:Ljava/util/LinkedHashMap;

    return-void
.end method
