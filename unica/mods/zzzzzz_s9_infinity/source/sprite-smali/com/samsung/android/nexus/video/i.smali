.class public final synthetic Lcom/samsung/android/nexus/video/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/nexus/video/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/i;->a:Lcom/samsung/android/nexus/video/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/i;->a:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoPlayer;->d(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result p0

    return p0
.end method
