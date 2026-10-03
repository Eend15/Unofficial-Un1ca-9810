.class public final Landroidx/fragment/app/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Landroidx/activity/l;

.field public final synthetic d:Landroidx/fragment/app/L;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/L;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/D;->d:Landroidx/fragment/app/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/D;->a:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
