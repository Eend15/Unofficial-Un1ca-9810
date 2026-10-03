.class public final synthetic Lcom/samsung/android/nexus/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/d;->a:Lcom/samsung/android/nexus/video/VideoLayer;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/d;->a:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoLayer;->c(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result p0

    return p0
.end method
