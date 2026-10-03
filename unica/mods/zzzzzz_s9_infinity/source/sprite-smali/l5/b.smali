.class public final Ll5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lk5/i;

.field public c:F

.field public final d:Lk5/i;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Ll5/b;->b:Lk5/i;

    const/4 v0, 0x0

    iput v0, p0, Ll5/b;->c:F

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Ll5/b;->d:Lk5/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll5/b;->e:Z

    const/4 v0, 0x1

    iput v0, p0, Ll5/b;->a:I

    return-void
.end method
