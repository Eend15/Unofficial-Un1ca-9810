.class public final Ll5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lj5/e;

.field public b:F

.field public c:F

.field public d:F

.field public final e:LK/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll5/d;->a:Lj5/e;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ll5/d;->b:F

    const/4 v0, 0x0

    iput v0, p0, Ll5/d;->c:F

    iput v0, p0, Ll5/d;->d:F

    new-instance v0, LK/o;

    invoke-direct {v0}, LK/o;-><init>()V

    iput-object v0, p0, Ll5/d;->e:LK/o;

    return-void
.end method
