.class public final Lc1/h;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;

.field public final f:Lb1/a;

.field public final g:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v2, "left"

    const/4 v14, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v3, v13

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/h;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "top"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/h;->e:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "right"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/h;->f:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "bottom"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/h;->g:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "bounds"

    return-object p0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lc1/h;->d:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lc1/h;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lc1/h;->f:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object p0, p0, Lc1/h;->g:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
