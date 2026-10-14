.class public abstract Ln5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ll5/a;

.field public c:Ll5/a;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ln5/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ln5/d;->b:Ll5/a;

    iput-object v0, p0, Ln5/d;->c:Ll5/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln5/d;->d:Z

    return-void
.end method
