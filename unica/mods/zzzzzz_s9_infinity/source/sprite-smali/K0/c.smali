.class public final LK0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public final c:LA1/l;

.field public final synthetic d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/c;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance p1, LA1/l;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LK0/c;->c:LA1/l;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, LK0/c;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, LK0/c;->a:I

    iget-boolean p1, p0, LK0/c;->b:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, LK0/c;->c:LA1/l;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LK0/c;->b:Z

    :cond_1
    :goto_0
    return-void
.end method
