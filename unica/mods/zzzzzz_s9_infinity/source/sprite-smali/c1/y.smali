.class public final Lc1/y;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;

.field public final f:Lb1/a;

.field public final g:Lb1/a;

.field public final h:Lb1/a;

.field public final i:Lb1/a;


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

    iput-object v6, p0, Lc1/y;->d:Lb1/a;

    new-instance v0, Lb1/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "collideConnected"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/y;->e:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "enableLimit"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/y;->f:Lb1/a;

    new-instance v0, Lb1/a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "referenceAngle"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/y;->g:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "lowerAngle"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/y;->h:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "upperAngle"

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/y;->i:Lb1/a;

    new-instance v7, Lb1/a;

    const-string v9, "enableMotor"

    const/4 v12, 0x0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v7, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "motorSpeed"

    const/4 v12, 0x1

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v7, Lb1/a;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v9, "maxMotorTorque"

    const/4 v12, 0x1

    move-object v8, p0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "revolute"

    return-object p0
.end method
