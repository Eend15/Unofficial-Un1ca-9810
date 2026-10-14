.class public final Lc1/C;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;

.field public final e:Lb1/a;

.field public final f:Lb1/a;

.field public final g:Lb1/a;

.field public final h:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "templateName"

    const-string v3, ""

    const/4 v13, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/C;->d:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "templateVersion"

    const-string v1, "1.0"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/C;->e:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "specVersion"

    const/4 v12, 0x5

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/C;->f:Lb1/a;

    new-instance v0, Lb1/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "includeClock"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/C;->g:Lb1/a;

    new-instance v0, Lb1/a;

    const-string v9, "hideWhenRoaming"

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v10, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/C;->h:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
