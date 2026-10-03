.class public final Lh5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public final c:[I

.field public final d:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lh5/h;->c:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lh5/h;->d:[I

    const/4 v2, 0x0

    iput v2, p0, Lh5/h;->a:F

    const/4 v2, 0x0

    iput v2, p0, Lh5/h;->b:I

    const p0, 0x7fffffff

    aput p0, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    const/4 v4, 0x2

    aput p0, v1, v4

    aput p0, v0, v2

    aput p0, v0, v3

    aput p0, v0, v4

    return-void
.end method
