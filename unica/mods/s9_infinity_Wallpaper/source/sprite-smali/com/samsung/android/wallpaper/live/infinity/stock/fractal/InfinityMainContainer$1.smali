.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;
.super Landroid/database/ContentObserver;
.source "InfinityMainContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->access$000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->setHomeSensorEnabled()V

    return-void
.end method
