.class public final Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/ArrayList;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "#FFF7674A"

    const-string v1, "#FFFFE6E6"

    const-string v2, "#D9FFE6E6"

    const-string v3, "#FF75C99D"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->b0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lb2/a;->e:Ljava/util/ArrayList;

    return-void
.end method
