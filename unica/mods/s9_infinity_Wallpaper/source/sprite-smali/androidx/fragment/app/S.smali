.class public final Landroidx/fragment/app/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/r;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/lifecycle/n;

.field public i:Landroidx/lifecycle/n;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/fragment/app/S;->a:I

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/S;->c:Z

    .line 5
    sget-object p1, Landroidx/lifecycle/n;->h:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/S;->h:Landroidx/lifecycle/n;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/S;->i:Landroidx/lifecycle/n;

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/r;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroidx/fragment/app/S;->a:I

    .line 9
    iput-object p2, p0, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/fragment/app/S;->c:Z

    .line 11
    sget-object p1, Landroidx/lifecycle/n;->h:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/S;->h:Landroidx/lifecycle/n;

    .line 12
    iput-object p1, p0, Landroidx/fragment/app/S;->i:Landroidx/lifecycle/n;

    return-void
.end method
