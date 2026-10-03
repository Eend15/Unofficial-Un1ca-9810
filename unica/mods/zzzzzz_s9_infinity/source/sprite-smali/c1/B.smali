.class public final Lc1/B;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "type"

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v13

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/B;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "src"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/B;->e:Lb1/a;

    new-instance v7, Lb1/a;

    const-string v9, "path"

    const/4 v12, 0x5

    move-object v8, p0

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "source"

    return-object p0
.end method
