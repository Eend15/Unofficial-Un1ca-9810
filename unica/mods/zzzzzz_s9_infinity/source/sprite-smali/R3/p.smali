.class public abstract LR3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/f;

.field public static final b:Ls4/f;

.field public static final c:Ls4/c;

.field public static final d:Ls4/c;

.field public static final e:Ls4/c;

.field public static final f:Ls4/c;

.field public static final g:Ls4/c;

.field public static final h:Ls4/c;

.field public static final i:Ls4/f;

.field public static final j:Ls4/c;

.field public static final k:Ls4/c;

.field public static final l:Ls4/c;

.field public static final m:Ls4/c;

.field public static final n:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "values"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LR3/p;->a:Ls4/f;

    const-string v0, "valueOf"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LR3/p;->b:Ls4/f;

    const-string v0, "code"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    new-instance v7, Ls4/c;

    const-string v0, "kotlin.coroutines"

    invoke-direct {v7, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v7, LR3/p;->c:Ls4/c;

    const-string v0, "experimental"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v7, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    sput-object v0, LR3/p;->d:Ls4/c;

    const-string v1, "intrinsics"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    const-string v1, "Continuation"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    sput-object v0, LR3/p;->e:Ls4/c;

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v7, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    sput-object v0, LR3/p;->f:Ls4/c;

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.Result"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LR3/p;->g:Ls4/c;

    new-instance v5, Ls4/c;

    const-string v0, "kotlin.reflect"

    invoke-direct {v5, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v5, LR3/p;->h:Ls4/c;

    const-string v0, "KProperty"

    const-string v1, "KMutableProperty"

    const-string v2, "KFunction"

    const-string v3, "KSuspendFunction"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "kotlin"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LR3/p;->i:Ls4/f;

    invoke-static {v0}, Ls4/c;->j(Ls4/f;)Ls4/c;

    move-result-object v1

    sput-object v1, LR3/p;->j:Ls4/c;

    const-string v0, "annotation"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v4

    sput-object v4, LR3/p;->k:Ls4/c;

    const-string v0, "collections"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v2

    sput-object v2, LR3/p;->l:Ls4/c;

    const-string v0, "ranges"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v3

    sput-object v3, LR3/p;->m:Ls4/c;

    const-string v0, "text"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    const-string v0, "internal"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v6

    filled-new-array/range {v1 .. v7}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LR3/p;->n:Ljava/util/Set;

    return-void
.end method
