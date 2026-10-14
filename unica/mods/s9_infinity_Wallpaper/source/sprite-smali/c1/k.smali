.class public final Lc1/k;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;

.field public final f:Lb1/a;

.field public final g:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "id"

    const-string v3, ""

    const/4 v13, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/k;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "length"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/k;->e:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "frequencyHz"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/k;->f:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "dampingRatio"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/k;->g:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "distance"

    return-object p0
.end method
