.class public final Lc1/m;
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
    .locals 9

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const-string v2, "id"

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/m;->d:Lb1/a;

    new-instance v6, Lb1/a;

    const-string v2, "resId"

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/m;->e:Lb1/a;

    new-instance v6, Lb1/a;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "duration"

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/m;->f:Lb1/a;

    new-instance v0, Lb1/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "frameCount"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v6, Lb1/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "startPosition"

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/m;->g:Lb1/a;

    new-instance v6, Lb1/a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isLoop"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/m;->h:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "frame"

    return-object p0
.end method
