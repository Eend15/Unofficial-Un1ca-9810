.class public final LT3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;

.field public static final b:Ljava/util/LinkedHashSet;

.field public static final c:Ljava/util/LinkedHashSet;

.field public static final d:Ljava/util/LinkedHashSet;

.field public static final e:Ljava/util/LinkedHashSet;

.field public static final f:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    const-string v0, "toArray()[Ljava/lang/Object;"

    const-string v1, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collection"

    invoke-static {v1, v0}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v0, v2}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, LT3/p;->a:Ljava/util/LinkedHashSet;

    sget-object v0, LA4/c;->h:LA4/c;

    sget-object v2, LA4/c;->i:LA4/c;

    filled-new-array {v0, v2}, [LA4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it.wrapperFqName.shortName().asString()"

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA4/c;

    invoke-virtual {v3}, LA4/c;->e()Ls4/c;

    move-result-object v5

    invoke-virtual {v5}, Ls4/c;->f()Ls4/f;

    move-result-object v5

    invoke-virtual {v5}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, LA4/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Value()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LA4/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    const-string v0, "sort(Ljava/util/Comparator;)V"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "List"

    invoke-static {v5, v3}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v50, "trim()Ljava/lang/String;"

    const-string v51, "isBlank()Z"

    const-string v6, "codePointAt(I)I"

    const-string v7, "codePointBefore(I)I"

    const-string v8, "codePointCount(II)I"

    const-string v9, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v10, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v11, "contains(Ljava/lang/CharSequence;)Z"

    const-string v12, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v13, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v14, "endsWith(Ljava/lang/String;)Z"

    const-string v15, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v16, "getBytes()[B"

    const-string v17, "getBytes(II[BI)V"

    const-string v18, "getBytes(Ljava/lang/String;)[B"

    const-string v19, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v20, "getChars(II[CI)V"

    const-string v21, "indexOf(I)I"

    const-string v22, "indexOf(II)I"

    const-string v23, "indexOf(Ljava/lang/String;)I"

    const-string v24, "indexOf(Ljava/lang/String;I)I"

    const-string v25, "intern()Ljava/lang/String;"

    const-string v26, "isEmpty()Z"

    const-string v27, "lastIndexOf(I)I"

    const-string v28, "lastIndexOf(II)I"

    const-string v29, "lastIndexOf(Ljava/lang/String;)I"

    const-string v30, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v31, "matches(Ljava/lang/String;)Z"

    const-string v32, "offsetByCodePoints(II)I"

    const-string v33, "regionMatches(ILjava/lang/String;II)Z"

    const-string v34, "regionMatches(ZILjava/lang/String;II)Z"

    const-string v35, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v36, "replace(CC)Ljava/lang/String;"

    const-string v37, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v38, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string v39, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string v40, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string v41, "startsWith(Ljava/lang/String;I)Z"

    const-string v42, "startsWith(Ljava/lang/String;)Z"

    const-string v43, "substring(II)Ljava/lang/String;"

    const-string v44, "substring(I)Ljava/lang/String;"

    const-string v45, "toCharArray()[C"

    const-string v46, "toLowerCase()Ljava/lang/String;"

    const-string v47, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v48, "toUpperCase()Ljava/lang/String;"

    const-string v49, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v52, "lines()Ljava/util/stream/Stream;"

    const-string v53, "repeat(I)Ljava/lang/String;"

    filled-new-array/range {v6 .. v53}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "String"

    invoke-static {v6, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "isInfinite()Z"

    const-string v7, "isNaN()Z"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Double"

    invoke-static {v9, v8}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-static {v2, v8}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "Float"

    invoke-static {v7, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "getDeclaringClass()Ljava/lang/Class;"

    const-string v8, "finalize()V"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "Enum"

    invoke-static {v8, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "isEmpty()Z"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "CharSequence"

    invoke-static {v8, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    sput-object v2, LT3/p;->b:Ljava/util/LinkedHashSet;

    const-string v2, "codePoints()Ljava/util/stream/IntStream;"

    const-string v3, "chars()Ljava/util/stream/IntStream;"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "forEachRemaining(Ljava/util/function/Consumer;)V"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "Iterator"

    invoke-static {v8, v3}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "forEach(Ljava/util/function/Consumer;)V"

    const-string v8, "spliterator()Ljava/util/Spliterator;"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "Iterable"

    invoke-static {v9, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v15, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v16, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const-string v9, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v10, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v11, "getLocalizedMessage()Ljava/lang/String;"

    const-string v12, "printStackTrace()V"

    const-string v13, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string v14, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v17, "getSuppressed()[Ljava/lang/Throwable;"

    const-string v18, "addSuppressed(Ljava/lang/Throwable;)V"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "Throwable"

    invoke-static {v9, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "parallelStream()Ljava/util/stream/Stream;"

    const-string v10, "stream()Ljava/util/stream/Stream;"

    const-string v11, "removeIf(Ljava/util/function/Predicate;)Z"

    filled-new-array {v8, v3, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v3, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-static {v2, v8}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    const-string v18, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v12, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v13, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string v14, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v15, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v16, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v20, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v21, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    filled-new-array/range {v12 .. v21}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "Map"

    invoke-static {v10, v8}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-static {v2, v8}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v2

    sput-object v2, LT3/p;->c:Ljava/util/LinkedHashSet;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v1, v0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v16, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v17, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v11, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v13, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v14, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v15, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v18, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Ll4/d;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, LT3/p;->d:Ljava/util/LinkedHashSet;

    sget-object v10, LA4/c;->h:LA4/c;

    sget-object v14, LA4/c;->j:LA4/c;

    sget-object v12, LA4/c;->o:LA4/c;

    sget-object v13, LA4/c;->m:LA4/c;

    sget-object v15, LA4/c;->l:LA4/c;

    sget-object v16, LA4/c;->n:LA4/c;

    sget-object v17, LA4/c;->k:LA4/c;

    move-object v11, v14

    filled-new-array/range {v10 .. v17}, [LA4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA4/c;

    invoke-virtual {v2}, LA4/c;->e()Ls4/c;

    move-result-object v2

    invoke-virtual {v2}, Ls4/c;->f()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Ljava/lang/String;"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ll4/d;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    const-string v0, "D"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll4/d;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v7, v0}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v1, v0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v17, "[BII"

    const-string v18, "[B"

    const-string v10, "[C"

    const-string v11, "[CII"

    const-string v12, "[III"

    const-string v13, "[BIILjava/lang/String;"

    const-string v14, "[BIILjava/nio/charset/Charset;"

    const-string v15, "[BLjava/lang/String;"

    const-string v16, "[BLjava/nio/charset/Charset;"

    const-string v19, "Ljava/lang/StringBuffer;"

    const-string v20, "Ljava/lang/StringBuilder;"

    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll4/d;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v6, v1}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, LT3/p;->e:Ljava/util/LinkedHashSet;

    const-string v0, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll4/d;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v9, v0}, Ll4/d;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, LT3/p;->f:Ljava/util/LinkedHashSet;

    return-void
.end method
