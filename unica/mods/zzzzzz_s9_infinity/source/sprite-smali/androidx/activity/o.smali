.class public final Landroidx/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field public final d:Landroidx/fragment/app/D;

.field public final synthetic e:Landroidx/activity/p;


# direct methods
.method public constructor <init>(Landroidx/activity/p;Landroidx/fragment/app/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/o;->e:Landroidx/activity/p;

    iput-object p2, p0, Landroidx/activity/o;->d:Landroidx/fragment/app/D;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/o;->e:Landroidx/activity/p;

    iget-object v1, v0, Landroidx/activity/p;->b:Lr3/g;

    iget-object v2, p0, Landroidx/activity/o;->d:Landroidx/fragment/app/D;

    invoke-virtual {v1, v2}, Lr3/g;->remove(Ljava/lang/Object;)Z

    iget-object v1, v2, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iput-object p0, v2, Landroidx/fragment/app/D;->c:Landroidx/activity/l;

    invoke-virtual {v0}, Landroidx/activity/p;->c()V

    return-void
.end method
