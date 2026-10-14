.class public final Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Lcom/google/android/torus/core/activity/TorusViewerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/j;->a:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/i;)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/j;->a:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/q;->a()V

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, Ld0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/appcompat/app/q;->d()V

    return-void
.end method
