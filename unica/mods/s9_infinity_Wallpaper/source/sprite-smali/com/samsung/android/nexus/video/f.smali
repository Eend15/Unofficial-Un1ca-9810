.class public final synthetic Lcom/samsung/android/nexus/video/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/nexus/video/VideoPlayer;

.field public final synthetic b:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/f;->a:Lcom/samsung/android/nexus/video/VideoPlayer;

    iput-object p2, p0, Lcom/samsung/android/nexus/video/f;->b:Lcom/samsung/android/media/SemMediaPlayer;

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/f;->a:Lcom/samsung/android/nexus/video/VideoPlayer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/f;->b:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/nexus/video/VideoPlayer;->b(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method
