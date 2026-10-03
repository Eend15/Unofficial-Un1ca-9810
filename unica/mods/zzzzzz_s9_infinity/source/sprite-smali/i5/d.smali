.class public final Li5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/l;

.field public b:Ll5/e;

.field public c:Li5/d;

.field public d:Li5/d;

.field public e:Li5/d;

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw0/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Li5/d;->a:Lw0/l;

    iput p1, p0, Li5/d;->f:I

    return-void
.end method
