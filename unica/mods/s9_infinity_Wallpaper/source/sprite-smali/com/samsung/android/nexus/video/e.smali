.class public final synthetic Lcom/samsung/android/nexus/video/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/e;->a:Lcom/samsung/android/nexus/video/VideoLayer;

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/e;->a:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/nexus/video/VideoLayer;->b(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method
