.class public final LF4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LI4/o;

.field public final b:LU3/x;

.field public final c:LF4/j;

.field public final d:LF4/e;

.field public final e:LF4/b;

.field public final f:LU3/F;

.field public final g:LF4/j;

.field public final h:LF4/n;

.field public final i:Lc4/a;

.field public final j:LF4/o;

.field public final k:Ljava/lang/Iterable;

.field public final l:Lw0/i;

.field public final m:LF4/j;

.field public final n:LW3/b;

.field public final o:LW3/d;

.field public final p:Lt4/i;

.field public final q:LK4/l;

.field public final r:LW3/a;

.field public final s:LF4/g;


# direct methods
.method public constructor <init>(LI4/o;LU3/x;LF4/e;LF4/b;LU3/F;LF4/n;LF4/o;Ljava/lang/Iterable;Lw0/i;LW3/b;LW3/d;Lt4/i;LK4/m;LU0/e;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    sget-object v7, LF4/j;->b:LF4/j;

    sget-object v8, LF4/j;->d:LF4/j;

    sget-object v9, Lc4/a;->a:Lc4/a;

    sget-object v10, LF4/h;->a:LF4/j;

    const/high16 v11, 0x10000

    and-int v11, p15, v11

    if-eqz v11, :cond_0

    sget-object v11, LK4/l;->b:LK4/k;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, LK4/k;->b:LK4/m;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p13

    :goto_0
    sget-object v12, LW3/a;->e:LW3/a;

    const-string v13, "storageManager"

    invoke-static {p1, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "moduleDescriptor"

    invoke-static {v2, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "fictitiousClassDescriptorFactories"

    invoke-static {v3, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "additionalClassPartsProvider"

    invoke-static {v4, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "platformDependentDeclarationFilter"

    invoke-static {v5, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "extensionRegistryLite"

    invoke-static {v6, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "kotlinTypeChecker"

    invoke-static {v11, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LF4/i;->a:LI4/o;

    iput-object v2, v0, LF4/i;->b:LU3/x;

    iput-object v7, v0, LF4/i;->c:LF4/j;

    move-object/from16 v1, p3

    iput-object v1, v0, LF4/i;->d:LF4/e;

    move-object/from16 v1, p4

    iput-object v1, v0, LF4/i;->e:LF4/b;

    move-object/from16 v1, p5

    iput-object v1, v0, LF4/i;->f:LU3/F;

    iput-object v8, v0, LF4/i;->g:LF4/j;

    move-object/from16 v1, p6

    iput-object v1, v0, LF4/i;->h:LF4/n;

    iput-object v9, v0, LF4/i;->i:Lc4/a;

    move-object/from16 v1, p7

    iput-object v1, v0, LF4/i;->j:LF4/o;

    iput-object v3, v0, LF4/i;->k:Ljava/lang/Iterable;

    move-object/from16 v1, p9

    iput-object v1, v0, LF4/i;->l:Lw0/i;

    iput-object v10, v0, LF4/i;->m:LF4/j;

    iput-object v4, v0, LF4/i;->n:LW3/b;

    iput-object v5, v0, LF4/i;->o:LW3/d;

    iput-object v6, v0, LF4/i;->p:Lt4/i;

    iput-object v11, v0, LF4/i;->q:LK4/l;

    iput-object v12, v0, LF4/i;->r:LW3/a;

    new-instance v1, LF4/g;

    invoke-direct {v1, p0}, LF4/g;-><init>(LF4/i;)V

    iput-object v1, v0, LF4/i;->s:LF4/g;

    return-void
.end method


# virtual methods
.method public final a(LU3/B;Lp4/f;LX3/C;Lp4/h;Lp4/a;Ll4/e;)LF4/k;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LF4/k;

    sget-object v10, Lr3/r;->d:Lr3/r;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, LF4/k;-><init>(LF4/i;Lp4/f;LU3/j;LX3/C;Lp4/h;Lp4/a;Ll4/e;LF4/F;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Ls4/b;)LU3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LF4/g;->c:Ljava/util/Set;

    const/4 v0, 0x0

    iget-object p0, p0, LF4/i;->s:LF4/g;

    invoke-virtual {p0, p1, v0}, LF4/g;->a(Ls4/b;LF4/d;)LU3/e;

    move-result-object p0

    return-object p0
.end method
