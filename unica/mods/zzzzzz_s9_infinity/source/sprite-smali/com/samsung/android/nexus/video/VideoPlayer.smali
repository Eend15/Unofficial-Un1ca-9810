.class public final Lcom/samsung/android/nexus/video/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoPlayer$Companion;,
        Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 s2\u00020\u0001:\u0002stB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\r\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u0003J\r\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0015\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\r\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\"\u0010(\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R$\u0010/\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R$\u00106\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R$\u0010=\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR.\u0010L\u001a\u0004\u0018\u00010J2\u0008\u0010K\u001a\u0004\u0018\u00010J8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR.\u0010S\u001a\u0004\u0018\u00010R2\u0008\u0010K\u001a\u0004\u0018\u00010R8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR.\u0010Z\u001a\u0004\u0018\u00010Y2\u0008\u0010K\u001a\u0004\u0018\u00010Y8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R*\u0010a\u001a\u00020`2\u0006\u0010K\u001a\u00020`8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008a\u0010c\"\u0004\u0008d\u0010eR(\u0010g\u001a\u0004\u0018\u00010\u001e2\u0008\u0010f\u001a\u0004\u0018\u00010\u001e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u0011\u0010m\u001a\u00020k8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010lR\u0011\u0010q\u001a\u00020n8F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR\u0011\u0010r\u001a\u00020`8F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010c\u00a8\u0006u"
    }
    d2 = {
        "Lcom/samsung/android/nexus/video/VideoPlayer;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/nexus/base/context/NexusContext;",
        "context",
        "Lq3/m;",
        "onCreate",
        "(Lcom/samsung/android/nexus/base/context/NexusContext;)V",
        "play",
        "pause",
        "stop",
        "",
        "position",
        "seekTo",
        "(I)V",
        "release",
        "getCurrentPosition",
        "()I",
        "",
        "volume",
        "setVolume",
        "(F)V",
        "Landroid/view/Surface;",
        "surface",
        "setSurface",
        "(Landroid/view/Surface;)V",
        "setDataSourceUri",
        "setDataSourceFd",
        "setDataSourceAssetFd",
        "",
        "msg",
        "loggingError",
        "(Ljava/lang/String;)V",
        "mNexusContext",
        "Lcom/samsung/android/nexus/base/context/NexusContext;",
        "Lcom/samsung/android/media/SemMediaPlayer;",
        "mMediaPlayer",
        "Lcom/samsung/android/media/SemMediaPlayer;",
        "Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;",
        "mPlayerState",
        "Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;",
        "getMPlayerState",
        "()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;",
        "setMPlayerState",
        "(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "errorListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "getErrorListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "setErrorListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "completionListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "getCompletionListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "setCompletionListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "preparedListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "getPreparedListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "setPreparedListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "seekCompleteListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "getSeekCompleteListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "setSeekCompleteListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V",
        "Landroid/net/Uri;",
        "value",
        "mediaUri",
        "Landroid/net/Uri;",
        "getMediaUri",
        "()Landroid/net/Uri;",
        "setMediaUri",
        "(Landroid/net/Uri;)V",
        "Ljava/io/FileDescriptor;",
        "mediaFd",
        "Ljava/io/FileDescriptor;",
        "getMediaFd",
        "()Ljava/io/FileDescriptor;",
        "setMediaFd",
        "(Ljava/io/FileDescriptor;)V",
        "Landroid/content/res/AssetFileDescriptor;",
        "mediaAssetFd",
        "Landroid/content/res/AssetFileDescriptor;",
        "getMediaAssetFd",
        "()Landroid/content/res/AssetFileDescriptor;",
        "setMediaAssetFd",
        "(Landroid/content/res/AssetFileDescriptor;)V",
        "",
        "isLooping",
        "Z",
        "()Z",
        "setLooping",
        "(Z)V",
        "<set-?>",
        "videoOrientation",
        "Ljava/lang/String;",
        "getVideoOrientation",
        "()Ljava/lang/String;",
        "",
        "()J",
        "currentPosition",
        "Landroid/graphics/Point;",
        "getVideoSize",
        "()Landroid/graphics/Point;",
        "videoSize",
        "isPlaying",
        "Companion",
        "VideoState",
        "NexusVideo-3.0.1_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

.field public static final MEDIA_ERROR_NOT_PREPARED:I = -0x26

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field private static final SEM_KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field private static final SEM_KEY_PARAMETER_SEAMLESS_LOOPING:I = 0x9089

.field private static final SEM_KEY_PARAMETER_VIDEO_TEAR_DOWN:I = 0x9088

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private final mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

.field private mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field private mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private mediaFd:Ljava/io/FileDescriptor;

.field private mediaUri:Landroid/net/Uri;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    const-string v0, "VideoPlayer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    new-instance v1, Lcom/samsung/android/nexus/video/f;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/nexus/video/f;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/g;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/h;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/i;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/i;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer$lambda$4$lambda$2(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer$lambda$4$lambda$0(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer$lambda$4$lambda$1(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer$lambda$4$lambda$3(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final mMediaPlayer$lambda$4$lambda$0(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Prepare is done."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    const v0, 0x88bc

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    const v0, 0x9088

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object p2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method private static final mMediaPlayer$lambda$4$lambda$1(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Play completed."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private static final mMediaPlayer$lambda$4$lambda$2(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "seekTo completed."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private static final mMediaPlayer$lambda$4$lambda$3(Lcom/samsung/android/nexus/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: mp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final setDataSourceAssetFd()V
    .locals 7

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set data asset source fd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is looping = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "Set data source error. Media asset fd is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-nez v0, :cond_1

    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    :goto_4
    if-eqz v1, :cond_6

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void
.end method

.method private final setDataSourceFd()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set data source fd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is looping = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "Set data source error. Media fd is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-nez v0, :cond_1

    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    :goto_4
    if-eqz v1, :cond_6

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void
.end method

.method private final setDataSourceUri()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set data source uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is looping = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "Set data source error. Media uri is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-nez v0, :cond_1

    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/context/NexusContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    :goto_4
    if-eqz v1, :cond_6

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method public final getCurrentPosition()I
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    .line 3
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get current position : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public final getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-object p0
.end method

.method public final getMediaAssetFd()Landroid/content/res/AssetFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method public final getMediaFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getMediaUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public final getVideoOrientation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->videoOrientation:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoSize()Landroid/graphics/Point;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoWidth()I

    move-result v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoHeight()I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final isLooping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    return p0
.end method

.method public final isPlaying()Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set looping to the media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    return-void
.end method

.method public final pause()V
    .locals 4

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pause : state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot pause media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final play()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start play state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", player looping state = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot start media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Release"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    return-void
.end method

.method public final seekTo(I)V
    .locals 5

    const-string v0, "Cannot seek to in media player : "

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Seek to position : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setLooping(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set looping : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get playing state of media player : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setMPlayerState(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-void
.end method

.method public final setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceAssetFd()V

    return-void
.end method

.method public final setMediaFd(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceFd()V

    return-void
.end method

.method public final setMediaUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceUri()V

    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set surface : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set surface to media player : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set volume : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public final stop()V
    .locals 4

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop : state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot stop media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method
