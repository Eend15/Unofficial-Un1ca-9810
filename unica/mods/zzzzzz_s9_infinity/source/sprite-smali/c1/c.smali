.class public final Lc1/c;
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
    .locals 9

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "bodyA"

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->d:Lb1/a;

    new-instance v6, Lb1/a;

    const-string v2, "bodyB"

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->e:Lb1/a;

    new-instance v6, Lb1/a;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "localAX"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->f:Lb1/a;

    new-instance v6, Lb1/a;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "localAY"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->g:Lb1/a;

    new-instance v6, Lb1/a;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "localBX"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->h:Lb1/a;

    new-instance v6, Lb1/a;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "localBY"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/c;->i:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "anchor"

    return-object p0
.end method
