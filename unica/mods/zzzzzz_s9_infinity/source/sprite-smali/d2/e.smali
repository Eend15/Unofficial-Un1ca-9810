.class public final Ld2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public final b:[F

.field public final c:[F

.field public final d:[F

.field public final e:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld2/e;->a:F

    new-array v0, p1, [F

    iput-object v0, p0, Ld2/e;->b:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ld2/e;->c:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ld2/e;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, Ld2/e;->e:[F

    return-void
.end method
