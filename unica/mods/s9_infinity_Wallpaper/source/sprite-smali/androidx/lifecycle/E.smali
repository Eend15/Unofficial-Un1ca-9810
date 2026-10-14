.class public final Landroidx/lifecycle/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# static fields
.field public static final k:Landroidx/lifecycle/E;


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Landroid/os/Handler;

.field public final i:Landroidx/lifecycle/v;

.field public final j:LA0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/E;

    invoke-direct {v0}, Landroidx/lifecycle/E;-><init>()V

    sput-object v0, Landroidx/lifecycle/E;->k:Landroidx/lifecycle/E;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/E;->f:Z

    iput-boolean v0, p0, Landroidx/lifecycle/E;->g:Z

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    new-instance v0, LA0/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/E;->j:LA0/a;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    return-object p0
.end method
