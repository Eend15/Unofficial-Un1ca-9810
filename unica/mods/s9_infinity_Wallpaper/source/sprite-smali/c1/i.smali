.class public final Lc1/i;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;

.field public final f:Lb1/a;

.field public final g:Lb1/a;

.field public final h:Lb1/a;

.field public final i:Lb1/a;

.field public final j:Lb1/a;

.field public final k:Lb1/a;

.field public final l:Lb1/a;

.field public final m:Lb1/a;

.field public final n:Lb1/a;

.field public final o:Lb1/a;

.field public final p:Lb1/a;

.field public final q:Lb1/a;

.field public final r:Lb1/a;

.field public final s:Lb1/a;

.field public final t:Lb1/a;

.field public final u:Lb1/a;

.field public final v:Lb1/a;

.field public final w:Lb1/a;

.field public final x:Lb1/a;

.field public final y:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "id"

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v13

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/i;->d:Lb1/a;

    new-instance v0, Lb1/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "usePhysicsEngine"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->e:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "type"

    const-string v2, "NONE"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v2

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->f:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "bodyType"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v2

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->g:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "shape"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v2

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->h:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "x"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->i:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "y"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->j:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "width"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->k:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "height"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->l:Lb1/a;

    new-instance v0, Lb1/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "scale"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->m:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "rotation"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->n:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "background"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->o:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "friction"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->p:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "restitution"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->q:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "density"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->r:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "categoryBits"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->s:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "maskBits"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->t:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "aodClock"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->u:Lb1/a;

    new-instance v0, Lb1/a;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "touchable"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->v:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "modular"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->w:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "fixedRotation"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->x:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "textSize"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/i;->y:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "container"

    return-object p0
.end method
