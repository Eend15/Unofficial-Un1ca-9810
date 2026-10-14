.class public abstract Ld4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;

.field public static final b:Lo1/b;

.field public static final c:Ld4/r;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Ls4/c;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/q;->a:Ls4/c;

    new-instance v1, Ls4/c;

    const-string v2, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v2, Lo1/b;

    new-instance v3, Ls4/c;

    const-string v4, "org.jetbrains.annotations"

    invoke-direct {v3, v4}, Ls4/c;-><init>(Ljava/lang/String;)V

    sget-object v4, Ld4/r;->d:Ld4/r;

    new-instance v5, Lq3/f;

    invoke-direct {v5, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v6, "androidx.annotation"

    invoke-direct {v3, v6}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Lq3/f;

    invoke-direct {v6, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v7, "android.support.annotation"

    invoke-direct {v3, v7}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v7, Lq3/f;

    invoke-direct {v7, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v8, "android.annotation"

    invoke-direct {v3, v8}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lq3/f;

    invoke-direct {v8, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v9, "com.android.annotations"

    invoke-direct {v3, v9}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Lq3/f;

    invoke-direct {v9, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v10, "org.eclipse.jdt.annotation"

    invoke-direct {v3, v10}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v10, Lq3/f;

    invoke-direct {v10, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ls4/c;

    const-string v11, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v3, v11}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lq3/f;

    invoke-direct {v11, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lq3/f;

    invoke-direct {v12, v1, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "javax.annotation"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v13, Lq3/f;

    invoke-direct {v13, v1, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v14, Lq3/f;

    invoke-direct {v14, v1, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "io.reactivex.annotations"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v15, Lq3/f;

    invoke-direct {v15, v1, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "androidx.annotation.RecentlyNullable"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Ld4/r;

    move-object/from16 v21, v2

    sget-object v2, Ld4/B;->e:Ld4/B;

    move-object/from16 v16, v15

    const/4 v15, 0x4

    invoke-direct {v3, v2, v15}, Ld4/r;-><init>(Ld4/B;I)V

    new-instance v15, Lq3/f;

    invoke-direct {v15, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Ld4/r;

    move-object/from16 v18, v15

    const/4 v15, 0x4

    invoke-direct {v3, v2, v15}, Ld4/r;-><init>(Ld4/B;I)V

    new-instance v15, Lq3/f;

    invoke-direct {v15, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "lombok"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Lq3/f;

    invoke-direct {v3, v1, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ld4/r;

    new-instance v4, Lq3/c;

    move-object/from16 v19, v15

    const/4 v15, 0x1

    move-object/from16 v20, v3

    const/4 v3, 0x6

    move-object/from16 v22, v14

    const/4 v14, 0x0

    invoke-direct {v4, v15, v3, v14}, Lq3/c;-><init>(III)V

    sget-object v3, Ld4/B;->f:Ld4/B;

    invoke-direct {v1, v2, v4, v3}, Ld4/r;-><init>(Ld4/B;Lq3/c;Ld4/B;)V

    new-instance v4, Lq3/f;

    invoke-direct {v4, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ls4/c;

    const-string v1, "io.reactivex.rxjava3.annotations"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ld4/r;

    new-instance v14, Lq3/c;

    move-object/from16 v23, v4

    const/4 v4, 0x7

    move-object/from16 v24, v13

    const/4 v13, 0x0

    invoke-direct {v14, v15, v4, v13}, Lq3/c;-><init>(III)V

    invoke-direct {v1, v2, v14, v3}, Ld4/r;-><init>(Ld4/B;Lq3/c;Ld4/B;)V

    new-instance v3, Lq3/f;

    invoke-direct {v3, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v13, v24

    move-object/from16 v14, v22

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    const/4 v0, 0x4

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v20

    move-object/from16 v19, v23

    move-object/from16 v20, v3

    filled-new-array/range {v5 .. v20}, [Lq3/f;

    move-result-object v1

    invoke-static {v1}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-direct {v3, v1}, Lo1/b;-><init>(Ljava/util/Map;)V

    sput-object v3, Ld4/q;->b:Lo1/b;

    new-instance v1, Ld4/r;

    invoke-direct {v1, v2, v0}, Ld4/r;-><init>(Ld4/B;I)V

    sput-object v1, Ld4/q;->c:Ld4/r;

    return-void
.end method
