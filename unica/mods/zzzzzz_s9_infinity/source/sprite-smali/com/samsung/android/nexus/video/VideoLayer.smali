.class public final Lcom/samsung/android/nexus/video/VideoLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoLayer$BackupData;,
        Lcom/samsung/android/nexus/video/VideoLayer$Companion;,
        Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;,
        Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;,
        Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u00c5\u00012\u00020\u0001:\u0008\u00c6\u0001\u00c5\u0001\u00c7\u0001\u00c8\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0015\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000fJ\u0015\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ%\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\u001e\u0010\"J\r\u0010#\u001a\u00020\u0018\u00a2\u0006\u0004\u0008#\u0010\u001dJ\u001d\u0010$\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u001f2\u0006\u0010\u0015\u001a\u00020\u001f\u00a2\u0006\u0004\u0008$\u0010%J-\u0010*\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u001f\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f\u00a2\u0006\u0004\u0008-\u0010.J%\u00102\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001f\u00a2\u0006\u0004\u00082\u00103J\u001d\u00104\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\u001f\u00a2\u0006\u0004\u00084\u0010%J\u0015\u00107\u001a\u00020\u00072\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00087\u00108J\u0015\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u000205\u00a2\u0006\u0004\u0008:\u00108J\u0015\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0002\u00a2\u0006\u0004\u0008:\u0010\u0005J\u0017\u0010=\u001a\u00020\u00072\u0008\u0010<\u001a\u0004\u0018\u00010;\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010@\u001a\u00020\u00072\u0006\u0010?\u001a\u00020;\u00a2\u0006\u0004\u0008@\u0010>J\u0015\u0010B\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0018\u00a2\u0006\u0004\u0008B\u0010\u001bJ\u0015\u0010E\u001a\u00020\u00072\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010FJ\r\u0010G\u001a\u00020\u0007\u00a2\u0006\u0004\u0008G\u0010\u0006J\r\u0010H\u001a\u00020\u0007\u00a2\u0006\u0004\u0008H\u0010\u0006J\r\u0010I\u001a\u00020\u0007\u00a2\u0006\u0004\u0008I\u0010\u0006J\u0015\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0013\u00a2\u0006\u0004\u0008K\u0010LJ\r\u0010M\u001a\u00020\u0013\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008O\u0010\u0006J\u000f\u0010P\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0006J\u000f\u0010Q\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0006J\u000f\u0010R\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008R\u0010\u0006J\u0017\u0010U\u001a\u00020\u00072\u0006\u0010T\u001a\u00020SH\u0014\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010W\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008W\u0010\u0006J\u0017\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008Y\u0010\u001bJ\'\u0010\\\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u00132\u0006\u0010[\u001a\u00020ZH\u0014\u00a2\u0006\u0004\u0008\\\u0010]J\u000f\u0010_\u001a\u00020^H\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008a\u0010\u001dJ\u000f\u0010b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008b\u0010\u0006J\u0019\u0010d\u001a\u00020\u00072\u0008\u0008\u0002\u0010c\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008d\u0010\u001bJ\u000f\u0010e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008e\u0010\u0006J\u0017\u0010P\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008P\u0010LJ\u000f\u0010g\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008g\u0010\u0006R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010hR\u0018\u0010j\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010l\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010n\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010mR\u0014\u0010p\u001a\u00020o8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010s\u001a\u00060rR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0018\u0010u\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010w\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0018\u0010y\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010{\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010}\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010|R\u0019\u0010\u007f\u001a\u00060~R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R,\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R,\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R,\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R,\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\"\u0006\u0008\u009b\u0001\u0010\u009c\u0001R,\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R&\u0010\u00a4\u0001\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0001\u0010|\u001a\u0005\u0008\u00a4\u0001\u0010\u001d\"\u0005\u0008\u00a5\u0001\u0010\u001bR&\u0010\u00a6\u0001\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a6\u0001\u0010|\u001a\u0005\u0008\u00a6\u0001\u0010\u001d\"\u0005\u0008\u00a7\u0001\u0010\u001bR(\u0010!\u001a\u00020\u001f2\u0007\u0010\u00a8\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00ab\u0001\u0010.R)\u0010\u00ae\u0001\u001a\u00020\u001f2\u0007\u0010\u00a8\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00ac\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00ad\u0001\u0010.R)\u0010\u00b1\u0001\u001a\u00020\u001f2\u0007\u0010\u00a8\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00af\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00b0\u0001\u0010.R)\u0010\u00b4\u0001\u001a\u00020\u001f2\u0007\u0010\u00a8\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00b2\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00b3\u0001\u0010.R)\u0010\u00b7\u0001\u001a\u00020\u001f2\u0007\u0010\u00a8\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00b5\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00b6\u0001\u0010.R\u0014\u0010\u00b9\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00b8\u0001\u0010\u00aa\u0001R\u0014\u0010\u00bb\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ba\u0001\u0010\u00aa\u0001R\u0017\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00bc\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R)\u0010\u00c3\u0001\u001a\u00020\u001f2\u0007\u0010\u00c0\u0001\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00c1\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00c2\u0001\u0010.R\u0013\u0010\u00c4\u0001\u001a\u00020\u00188F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c4\u0001\u0010\u001d\u00a8\u0006\u00c9\u0001"
    }
    d2 = {
        "Lcom/samsung/android/nexus/video/VideoLayer;",
        "Lcom/samsung/android/nexus/base/layer/BaseLayer;",
        "Landroid/graphics/Rect;",
        "mObjectRect",
        "<init>",
        "(Landroid/graphics/Rect;)V",
        "()V",
        "Lq3/m;",
        "onCreate",
        "Landroid/net/Uri;",
        "uri",
        "setMediaSource",
        "(Landroid/net/Uri;)V",
        "Landroid/content/res/AssetFileDescriptor;",
        "assetFd",
        "(Landroid/content/res/AssetFileDescriptor;)V",
        "Ljava/io/FileDescriptor;",
        "fd",
        "(Ljava/io/FileDescriptor;)V",
        "",
        "width",
        "height",
        "onSizeChanged",
        "(II)V",
        "",
        "enabled",
        "setTransparencyEnabled",
        "(Z)V",
        "getTransparencyEnabled",
        "()Z",
        "setHdrModeEnabled",
        "",
        "saturation",
        "contrast",
        "(ZFF)V",
        "getHdrModeEnabled",
        "setSize",
        "(FF)V",
        "angle",
        "rotationX",
        "rotationY",
        "rotationZ",
        "setRotation",
        "(FFFF)V",
        "scale",
        "setScale",
        "(F)V",
        "x",
        "y",
        "z",
        "setOffset",
        "(FFF)V",
        "setOffsetXY",
        "Landroid/graphics/RectF;",
        "cropRect",
        "setCropRect",
        "(Landroid/graphics/RectF;)V",
        "bounds",
        "setBoundRect",
        "",
        "rgbFilterColor",
        "setRgbFilterColor",
        "([F)V",
        "hsvFilterColor",
        "setHsvFilterColor",
        "looping",
        "setLooping",
        "",
        "videoOrientation",
        "setVideoOrientation",
        "(Ljava/lang/String;)V",
        "startPlayer",
        "stopPlayer",
        "pausePlayer",
        "position",
        "seekToPlayer",
        "(I)V",
        "getCurrentPosition",
        "()I",
        "clear",
        "reset",
        "onDestroy",
        "onDraw",
        "Lcom/samsung/android/nexus/base/layer/NexusLayerParams;",
        "lp",
        "onLayerParamsChanged",
        "(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V",
        "onAmbientModeChanged",
        "visible",
        "onVisibilityChanged",
        "",
        "eventTime",
        "onTapEvent",
        "(IIJ)V",
        "Lcom/samsung/android/nexus/video/VideoGL;",
        "prepareVideoGl",
        "()Lcom/samsung/android/nexus/video/VideoGL;",
        "setDataSource",
        "create",
        "async",
        "clearLocked",
        "clearAsync",
        "reason",
        "resetAsync",
        "Landroid/graphics/Rect;",
        "Lcom/samsung/android/nexus/video/VideoPlayer;",
        "mPlayer",
        "Lcom/samsung/android/nexus/video/VideoPlayer;",
        "mVideoGl",
        "Lcom/samsung/android/nexus/video/VideoGL;",
        "mOldVideoGl",
        "Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;",
        "mReservedActions",
        "Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;",
        "Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;",
        "mResetLogger",
        "Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;",
        "mUri",
        "Landroid/net/Uri;",
        "mAssetFd",
        "Landroid/content/res/AssetFileDescriptor;",
        "mFd",
        "Ljava/io/FileDescriptor;",
        "mIsCreated",
        "Z",
        "mNeedToRecreate",
        "Lcom/samsung/android/nexus/video/VideoLayer$BackupData;",
        "mBackupData",
        "Lcom/samsung/android/nexus/video/VideoLayer$BackupData;",
        "Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;",
        "videoStateChangedListener",
        "Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;",
        "getVideoStateChangedListener",
        "()Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;",
        "setVideoStateChangedListener",
        "(Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "completionListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "getCompletionListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;",
        "setCompletionListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "seekCompleteListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "getSeekCompleteListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;",
        "setSeekCompleteListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "preparedListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "getPreparedListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;",
        "setPreparedListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V",
        "Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "errorListener",
        "Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "getErrorListener",
        "()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;",
        "setErrorListener",
        "(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V",
        "isAutoPlayNextMediaSource",
        "setAutoPlayNextMediaSource",
        "isLoopingMediaSources",
        "setLoopingMediaSources",
        "value",
        "getContrast",
        "()F",
        "setContrast",
        "getHdrSaturation",
        "setHdrSaturation",
        "hdrSaturation",
        "getHsvHue",
        "setHsvHue",
        "hsvHue",
        "getHsvSaturation",
        "setHsvSaturation",
        "hsvSaturation",
        "getHsvValue",
        "setHsvValue",
        "hsvValue",
        "getOffsetX",
        "offsetX",
        "getOffsetY",
        "offsetY",
        "Lcom/samsung/android/nexus/egl/world/BaseWorld;",
        "getWorld",
        "()Lcom/samsung/android/nexus/egl/world/BaseWorld;",
        "world",
        "alpha",
        "getGlobalAlpha",
        "setGlobalAlpha",
        "globalAlpha",
        "isPlaying",
        "Companion",
        "BackupData",
        "ResetLogger",
        "VideoStateChangedListener",
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
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

.field private static final RESET_MAX_CNT:I = 0x2710

.field private static final RESET_REASON_CORE:I = 0x0

.field private static final RESET_REASON_GL_ERROR:I = 0x2

.field private static final RESET_REASON_MEDIA_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isAutoPlayNextMediaSource:Z

.field private isLoopingMediaSources:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsCreated:Z

.field private mNeedToRecreate:Z

.field private final mObjectRect:Landroid/graphics/Rect;

.field private mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

.field private final mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

.field private final mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

.field private mUri:Landroid/net/Uri;

.field private mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    const-string v0, "VideoLayer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-direct {v0, v15}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    .line 4
    new-instance v14, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    move-object v0, v14

    const v24, 0x3fffff

    const/16 v25, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;ILF3/f;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->create$lambda$37$lambda$34(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/nexus/video/VideoLayer;->create$lambda$37$lambda$36(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoLayer;->create$lambda$37$lambda$35(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private final clearAsync()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear async"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    return-void
.end method

.method private final clearLocked(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear locked"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    return-void
.end method

.method public static synthetic clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    return-void
.end method

.method private final create()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;-><init>()V

    new-instance v1, Lcom/samsung/android/nexus/video/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/b;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/c;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/d;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/e;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method private static final create$lambda$37$lambda$33(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnPlaybackCompleteListener : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_1
    return-void
.end method

.method private static final create$lambda$37$lambda$34(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnSeekCompleteListener : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private static final create$lambda$37$lambda$35(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_1

    :cond_0
    const/16 v1, -0x26

    if-ne p2, v1, :cond_3

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static final create$lambda$37$lambda$36(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnInitCompleteListener : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    invoke-virtual {p1, p0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->doAction(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->create$lambda$37$lambda$33(Lcom/samsung/android/nexus/video/VideoLayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method private final prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Prepare GL"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/nexus/video/VideoGL;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/nexus/video/VideoGL;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private final reset(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->addCount(I)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    return-void
.end method

.method private final resetAsync()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clearAsync()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->restore()V

    return-void
.end method

.method private final setDataSource()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaUri(Landroid/net/Uri;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaFd(Ljava/io/FileDescriptor;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v1, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "setVideoOrientation"

    invoke-direct {v1, v5, v3, v4}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-string v2, "setDataSource"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method public final getContrast()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getContrast()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getCurrentPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public final getGlobalAlpha()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getGlobalAlpha()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrModeEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHdrSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrSaturation()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public final getHsvHue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvHue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvSaturation()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public final getHsvValue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public final getOffsetX()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetX()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetY()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public final getTransparencyEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getTransparencyEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getVideoStateChangedListener()Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    return-object p0
.end method

.method public final getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isAutoPlayNextMediaSource()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    return p0
.end method

.method public final isLoopingMediaSources()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->isPlaying()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAmbientModeChanged()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clear()V

    return-void
.end method

.method public onDraw()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->resetAsync()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->onDrawFrame()V

    :cond_1
    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    const-string p0, "lp"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldWidth(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setWorldSize(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSizeChanged"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public onTapEvent(IIJ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final pausePlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Pause player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "pausePlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->pause()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    return-void
.end method

.method public final seekToPlayer(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seek to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "seekToPlayer"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->seekTo(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setAutoPlayNextMediaSource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setBoundRect(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setBoundRect(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 5
    const-class v1, Landroid/graphics/RectF;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 6
    filled-new-array {p1}, [Landroid/graphics/RectF;

    move-result-object p1

    .line 7
    const-string v2, "setBoundRect"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-void
.end method

.method public final setContrast(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setContrast(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setContrast"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "cropRect"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setCropRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setCropRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-class v1, Landroid/graphics/RectF;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [Landroid/graphics/RectF;

    move-result-object p1

    const-string v2, "setCropRect"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setGlobalAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setGlobalAlpha(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setGlobalAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setGlobalAlpha"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    const-string v2, "setHdrModeEnabled"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    .line 11
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(ZFF)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 15
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    const-string p2, "setHdrModeEnabled"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHdrSaturation(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrSaturation(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setHdrSaturation"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHsvFilterColor([F)V
    .locals 3

    const-string v0, "hsvFilterColor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHsvFilterColor([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvFilterColor([F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-class v1, [F

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [[F

    move-result-object p1

    const-string v2, "setHsvFilterColor"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHsvHue(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvHue(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setHsvHue"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHsvSaturation(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvSaturation(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setHsvSaturation"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setHsvValue(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvValue(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setHsvValue"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setLooping(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setLooping(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "setLooping"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setLooping(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setLoopingMediaSources(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    return-void
.end method

.method public final setMediaSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    const-string v0, "assetFd"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 5
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setOffset(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetZ(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setOffset(FFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Float;

    move-result-object p1

    const-string p2, "setOffset"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setOffsetXY(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setOffsetXY(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Float;

    move-result-object p1

    const-string p2, "setOffsetXY"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-void
.end method

.method public final setRgbFilterColor([F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRgbFilterColor([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setRgbFilterColor([F)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-class v1, [F

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [[F

    move-result-object p1

    const-string v2, "setRgbFilterColor"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_1
    return-void
.end method

.method public final setRotation(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationAngle(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationX(Ljava/lang/Float;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationY(Ljava/lang/Float;)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationZ(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/video/VideoGL;->setRotation(FFFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Float;

    move-result-object p1

    const-string p2, "setRotation"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setScale(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setScale(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setScale(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v2, "setScale"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setSize(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectWidth(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectHeight(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setSize(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Float;

    move-result-object p1

    const-string p2, "setSize"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setTransparencyEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setTransparencyEnabled(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setTransparencyEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "setTransparencyEnabled"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :goto_0
    return-void
.end method

.method public final setVideoOrientation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoOrientation"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setVideoStateChangedListener(Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    return-void
.end method

.method public final startPlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Start player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->print()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "startPlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final stopPlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Stop player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "stopPlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    :cond_2
    :goto_0
    return-void
.end method
