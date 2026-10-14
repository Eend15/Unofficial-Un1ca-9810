.class public final Lc1/l;
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

    iput-object v6, p0, Lc1/l;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "type"

    const-string v10, "NONE"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->e:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "x"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->f:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "y"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->g:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "width"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->h:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "height"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->i:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "src"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->j:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "background"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->k:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v9, "groupId"

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->l:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "tintColor"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->m:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "flip"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->n:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "blendMode"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->o:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "scaleType"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/l;->p:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "element"

    return-object p0
.end method
