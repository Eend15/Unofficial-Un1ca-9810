.class public final Lh5/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk5/i;

.field public b:F

.field public c:F

.field public final d:Lh5/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/l;->a:Lk5/i;

    const/4 v0, 0x0

    iput v0, p0, Lh5/l;->c:F

    iput v0, p0, Lh5/l;->b:F

    new-instance v0, Lh5/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh5/l;->d:Lh5/e;

    return-void
.end method
