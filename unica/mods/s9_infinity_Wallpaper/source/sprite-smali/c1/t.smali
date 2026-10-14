.class public final Lc1/t;
.super La1/a;
.source "SourceFile"


# instance fields
.field public final d:Lb1/a;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v6, Lb1/a;

    const/4 v4, 0x0

    const-string v2, "id"

    const-string v3, ""

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    iput-object v6, p0, Lc1/t;->d:Lb1/a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "layoutArray"

    return-object p0
.end method
