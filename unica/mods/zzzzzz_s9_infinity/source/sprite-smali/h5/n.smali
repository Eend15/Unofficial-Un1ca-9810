.class public final Lh5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh5/f;

.field public final b:Lh5/f;

.field public final c:Lk5/f;

.field public final d:Lk5/f;

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/f;

    invoke-direct {v0}, Lh5/f;-><init>()V

    iput-object v0, p0, Lh5/n;->a:Lh5/f;

    new-instance v0, Lh5/f;

    invoke-direct {v0}, Lh5/f;-><init>()V

    iput-object v0, p0, Lh5/n;->b:Lh5/f;

    new-instance v0, Lk5/f;

    invoke-direct {v0}, Lk5/f;-><init>()V

    iput-object v0, p0, Lh5/n;->c:Lk5/f;

    new-instance v0, Lk5/f;

    invoke-direct {v0}, Lk5/f;-><init>()V

    iput-object v0, p0, Lh5/n;->d:Lk5/f;

    return-void
.end method
