.class public abstract Ld4/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;

.field public static final b:Ls4/c;

.field public static final c:Ls4/c;

.field public static final d:Ljava/util/List;

.field public static final e:Ls4/c;

.field public static final f:Ls4/c;

.field public static final g:Ljava/util/List;

.field public static final h:Ls4/c;

.field public static final i:Ls4/c;

.field public static final j:Ls4/c;

.field public static final k:Ls4/c;

.field public static final l:Ljava/util/List;

.field public static final m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Ls4/c;

    const-string v1, "org.jspecify.nullness.Nullable"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/y;->a:Ls4/c;

    new-instance v1, Ls4/c;

    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Ld4/y;->b:Ls4/c;

    new-instance v2, Ls4/c;

    const-string v3, "org.jspecify.nullness.NullMarked"

    invoke-direct {v2, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v2, Ld4/y;->c:Ls4/c;

    sget-object v4, Ld4/x;->i:Ls4/c;

    new-instance v5, Ls4/c;

    const-string v3, "androidx.annotation.Nullable"

    invoke-direct {v5, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Ls4/c;

    const-string v3, "android.support.annotation.Nullable"

    invoke-direct {v6, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v7, Ls4/c;

    const-string v3, "android.annotation.Nullable"

    invoke-direct {v7, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Ls4/c;

    const-string v3, "com.android.annotations.Nullable"

    invoke-direct {v8, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Ls4/c;

    const-string v3, "org.eclipse.jdt.annotation.Nullable"

    invoke-direct {v9, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v10, Ls4/c;

    const-string v3, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-direct {v10, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Ls4/c;

    const-string v3, "javax.annotation.Nullable"

    invoke-direct {v11, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Ls4/c;

    const-string v3, "javax.annotation.CheckForNull"

    invoke-direct {v12, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v13, Ls4/c;

    const-string v14, "edu.umd.cs.findbugs.annotations.CheckForNull"

    invoke-direct {v13, v14}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v14, Ls4/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.Nullable"

    invoke-direct {v14, v15}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v15, Ls4/c;

    move-object/from16 v18, v2

    const-string v2, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    invoke-direct {v15, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v2, Ls4/c;

    move-object/from16 v19, v1

    const-string v1, "io.reactivex.annotations.Nullable"

    invoke-direct {v2, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ls4/c;

    move-object/from16 v20, v0

    const-string v0, "io.reactivex.rxjava3.annotations.Nullable"

    invoke-direct {v1, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    filled-new-array/range {v4 .. v17}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld4/y;->d:Ljava/util/List;

    new-instance v1, Ls4/c;

    const-string v2, "javax.annotation.Nonnull"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Ld4/y;->e:Ls4/c;

    new-instance v2, Ls4/c;

    invoke-direct {v2, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v2, Ld4/y;->f:Ls4/c;

    sget-object v4, Ld4/x;->h:Ls4/c;

    new-instance v5, Ls4/c;

    const-string v2, "edu.umd.cs.findbugs.annotations.NonNull"

    invoke-direct {v5, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Ls4/c;

    const-string v2, "androidx.annotation.NonNull"

    invoke-direct {v6, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v7, Ls4/c;

    const-string v2, "android.support.annotation.NonNull"

    invoke-direct {v7, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Ls4/c;

    const-string v2, "android.annotation.NonNull"

    invoke-direct {v8, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Ls4/c;

    const-string v2, "com.android.annotations.NonNull"

    invoke-direct {v9, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v10, Ls4/c;

    const-string v2, "org.eclipse.jdt.annotation.NonNull"

    invoke-direct {v10, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Ls4/c;

    const-string v2, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v11, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Ls4/c;

    const-string v2, "lombok.NonNull"

    invoke-direct {v12, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v13, Ls4/c;

    const-string v2, "io.reactivex.annotations.NonNull"

    invoke-direct {v13, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v14, Ls4/c;

    const-string v2, "io.reactivex.rxjava3.annotations.NonNull"

    invoke-direct {v14, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    filled-new-array/range {v4 .. v14}, [Ls4/c;

    move-result-object v2

    invoke-static {v2}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ld4/y;->g:Ljava/util/List;

    new-instance v3, Ls4/c;

    const-string v4, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    invoke-direct {v3, v4}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v3, Ld4/y;->h:Ls4/c;

    new-instance v4, Ls4/c;

    const-string v5, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    invoke-direct {v4, v5}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v4, Ld4/y;->i:Ls4/c;

    new-instance v5, Ls4/c;

    const-string v6, "androidx.annotation.RecentlyNullable"

    invoke-direct {v5, v6}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v5, Ld4/y;->j:Ls4/c;

    new-instance v6, Ls4/c;

    const-string v7, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v6, v7}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v6, Ld4/y;->k:Ls4/c;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v7, v0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v2}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v3}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v4}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v5}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v6}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    sget-object v0, Ld4/x;->k:Ls4/c;

    sget-object v1, Ld4/x;->l:Ls4/c;

    filled-new-array {v0, v1}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld4/y;->l:Ljava/util/List;

    sget-object v0, Ld4/x;->j:Ls4/c;

    sget-object v1, Ld4/x;->m:Ls4/c;

    filled-new-array {v0, v1}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld4/y;->m:Ljava/util/List;

    return-void
.end method
