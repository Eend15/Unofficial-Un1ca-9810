.class public final Lc1/u;
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


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "usePhysicsEngine"

    const/4 v13, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/u;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "width"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->e:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "height"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->f:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "gravityX"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->g:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "gravityY"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->h:Lb1/a;

    new-instance v0, Lb1/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "gravityWeight"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->i:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "pixelPerMeters"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->j:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "scale"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->k:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "background"

    const-string v1, ""

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->l:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "event"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/u;->m:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "layout"

    return-object p0
.end method
