.class public final Lg4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LI4/l;

.field public final b:LZ3/b;

.field public final c:LZ3/b;

.field public final d:Ll4/c;

.field public final e:Le4/h;

.field public final f:LZ3/e;

.field public final g:Le4/h;

.field public final h:Le4/h;

.field public final i:LU0/e;

.field public final j:LZ3/e;

.field public final k:Landroidx/recyclerview/widget/y;

.field public final l:Ll4/d;

.field public final m:LU3/M;

.field public final n:Lc4/a;

.field public final o:LX3/D;

.field public final p:LR3/n;

.field public final q:Ld4/d;

.field public final r:Ln1/a;

.field public final s:Ld4/m;

.field public final t:Lg4/b;

.field public final u:LK4/m;

.field public final v:Ld4/t;

.field public final w:LZ3/e;

.field public final x:LA4/e;


# direct methods
.method public constructor <init>(LI4/l;LZ3/b;LZ3/b;Ll4/c;Le4/h;LZ3/e;Le4/h;LU0/e;LZ3/e;Landroidx/recyclerview/widget/y;Ll4/d;LU3/M;Lc4/a;LX3/D;LR3/n;Ld4/d;Ln1/a;Ld4/m;Lg4/b;LK4/m;Ld4/t;LZ3/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    sget-object v0, Le4/h;->b:Le4/h;

    sget-object v16, LA4/e;->a:LA4/d;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    const-string v0, "storageManager"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v12, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v13, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p16

    move-object/from16 v14, v16

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    sget-object v15, LA4/d;->b:LA4/a;

    invoke-static {v15, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v16, v15

    move-object/from16 v15, p16

    iput-object v1, v0, Lg4/a;->a:LI4/l;

    iput-object v2, v0, Lg4/a;->b:LZ3/b;

    iput-object v3, v0, Lg4/a;->c:LZ3/b;

    iput-object v4, v0, Lg4/a;->d:Ll4/c;

    iput-object v5, v0, Lg4/a;->e:Le4/h;

    iput-object v6, v0, Lg4/a;->f:LZ3/e;

    iput-object v14, v0, Lg4/a;->g:Le4/h;

    iput-object v7, v0, Lg4/a;->h:Le4/h;

    iput-object v8, v0, Lg4/a;->i:LU0/e;

    iput-object v9, v0, Lg4/a;->j:LZ3/e;

    iput-object v10, v0, Lg4/a;->k:Landroidx/recyclerview/widget/y;

    iput-object v11, v0, Lg4/a;->l:Ll4/d;

    iput-object v12, v0, Lg4/a;->m:LU3/M;

    iput-object v13, v0, Lg4/a;->n:Lc4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lg4/a;->o:LX3/D;

    move-object/from16 v1, p15

    iput-object v1, v0, Lg4/a;->p:LR3/n;

    iput-object v15, v0, Lg4/a;->q:Ld4/d;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lg4/a;->r:Ln1/a;

    iput-object v2, v0, Lg4/a;->s:Ld4/m;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Lg4/a;->t:Lg4/b;

    iput-object v2, v0, Lg4/a;->u:LK4/m;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lg4/a;->v:Ld4/t;

    iput-object v2, v0, Lg4/a;->w:LZ3/e;

    move-object/from16 v1, v16

    iput-object v1, v0, Lg4/a;->x:LA4/e;

    return-void
.end method
