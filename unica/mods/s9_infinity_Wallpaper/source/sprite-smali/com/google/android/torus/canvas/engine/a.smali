.class public final synthetic Lcom/google/android/torus/canvas/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

.field public final synthetic e:LE3/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/a;->d:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    iput-object p2, p0, Lcom/google/android/torus/canvas/engine/a;->e:LE3/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/a;->d:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/a;->e:LE3/b;

    invoke-static {v0, p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->a(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
