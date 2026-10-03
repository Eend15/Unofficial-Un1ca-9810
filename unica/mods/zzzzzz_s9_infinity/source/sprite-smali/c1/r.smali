.class public final Lc1/r;
.super La1/a;
.source "SourceFile"


# instance fields
.field public d:Lc1/B;

.field public e:Lc1/B;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v0, Lb1/a;

    const-string v2, "type"

    const-string v3, ""

    const/4 v10, 0x0

    const/4 v5, 0x5

    move-object v1, p0

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v6, "positionX"

    const/4 v9, 0x1

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v6, "positionY"

    const/4 v9, 0x1

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v6, "width"

    const/4 v9, 0x2

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v6, "height"

    const/4 v9, 0x2

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/r;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(La1/a;)V
    .locals 4

    invoke-virtual {p1}, La1/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc1/A;

    iget-object v1, p0, Lc1/r;->f:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc1/A;->d:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lc1/A;->e:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "source"

    invoke-virtual {p1}, La1/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, La1/a;->c:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    const-string v1, "extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lc1/B;

    iput-object v0, p0, Lc1/r;->e:Lc1/B;

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lc1/B;

    iput-object v0, p0, Lc1/r;->d:Lc1/B;

    :cond_2
    :goto_0
    invoke-super {p0, p1}, La1/a;->a(La1/a;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "layer"

    return-object p0
.end method
