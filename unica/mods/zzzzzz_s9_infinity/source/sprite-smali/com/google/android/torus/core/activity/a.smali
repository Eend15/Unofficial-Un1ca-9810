.class public final synthetic Lcom/google/android/torus/core/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:Lcom/google/android/torus/core/activity/TorusViewerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/torus/core/activity/a;->d:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/activity/a;->d:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    invoke-static {p0, p1, p2}, Lcom/google/android/torus/core/activity/TorusViewerActivity;->e(Lcom/google/android/torus/core/activity/TorusViewerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
