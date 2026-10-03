.class public Lc1/e;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;


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

    const-string v6, "toValue"

    const/4 v9, 0x1

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v6, "fromValue"

    const/4 v9, 0x1

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v6, "duration"

    const/4 v9, 0x3

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v4, Lb1/a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v6, "delay"

    const/4 v9, 0x3

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v0, Lb1/a;

    new-instance v8, Landroidx/recyclerview/widget/y;

    const/4 v1, 0x1

    invoke-direct {v8, v1, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    const-string v6, "pathInterpolator"

    const/4 v9, 0x5

    move-object v4, v0

    move-object v5, p0

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v0, p0, Lc1/e;->d:Lb1/a;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "animation"

    return-object p0
.end method
