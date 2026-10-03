.class public final Landroidx/emoji2/text/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Landroidx/emoji2/text/i;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Ln/g;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroidx/emoji2/text/e;

.field public final f:Landroidx/emoji2/text/h;

.field public final g:LU0/e;

.field public final h:I

.field public final i:Landroidx/emoji2/text/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/i;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/p;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x3

    iput v1, p0, Landroidx/emoji2/text/i;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/h;

    iput-object v1, p0, Landroidx/emoji2/text/i;->f:Landroidx/emoji2/text/h;

    iget v2, p1, Landroidx/emoji2/text/f;->a:I

    iput v2, p0, Landroidx/emoji2/text/i;->h:I

    iget-object p1, p1, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/c;

    iput-object p1, p0, Landroidx/emoji2/text/i;->i:Landroidx/emoji2/text/c;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/emoji2/text/i;->d:Landroid/os/Handler;

    new-instance p1, Ln/g;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Ln/g;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    new-instance p1, LU0/e;

    const/16 v4, 0x12

    invoke-direct {p1, v4}, LU0/e;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/i;->g:LU0/e;

    new-instance p1, Landroidx/emoji2/text/e;

    invoke-direct {p1, p0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/i;)V

    iput-object p1, p0, Landroidx/emoji2/text/i;->e:Landroidx/emoji2/text/e;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v2, :cond_0

    :try_start_0
    iput v3, p0, Landroidx/emoji2/text/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->b()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Landroidx/emoji2/text/d;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/d;-><init>(Landroidx/emoji2/text/e;)V

    invoke-interface {v1, v0}, Landroidx/emoji2/text/h;->a(La4/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/i;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a()Landroidx/emoji2/text/i;
    .locals 4

    sget-object v0, Landroidx/emoji2/text/i;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Landroidx/emoji2/text/i;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->b()I

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/i;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Landroidx/emoji2/text/i;->e:Landroidx/emoji2/text/e;

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    :try_start_2
    new-instance v1, Landroidx/emoji2/text/d;

    invoke-direct {v1, p0}, Landroidx/emoji2/text/d;-><init>(Landroidx/emoji2/text/e;)V

    iget-object p0, v0, Landroidx/emoji2/text/i;->f:Landroidx/emoji2/text/h;

    invoke-interface {p0, v1}, Landroidx/emoji2/text/h;->a(La4/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Landroidx/emoji2/text/i;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/i;->c:I

    iget-object v1, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {v1}, Ln/g;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/i;->d:Landroid/os/Handler;

    new-instance v2, LH/b;

    iget p0, p0, Landroidx/emoji2/text/i;->c:I

    invoke-direct {v2, v0, p0, p1}, LH/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_15

    if-ltz p2, :cond_14

    if-ltz p3, :cond_13

    if-gt p2, p3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "start should be <= than end"

    invoke-static {v3, v0}, Lw0/f;->d(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p2, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    const-string v4, "start should be < than charSequence length"

    invoke-static {v4, v3}, Lw0/f;->d(Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p3, v3, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    const-string v3, "end should be < than charSequence length"

    invoke-static {v3, v2}, Lw0/f;->d(Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_12

    if-ne p2, p3, :cond_5

    goto/16 :goto_b

    :cond_5
    iget-object p0, p0, Landroidx/emoji2/text/i;->e:Landroidx/emoji2/text/e;

    iget-object v2, p0, Landroidx/emoji2/text/e;->b:Lw0/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroidx/emoji2/text/s;

    if-eqz p0, :cond_6

    move-object v3, p1

    check-cast v3, Landroidx/emoji2/text/s;

    invoke-virtual {v3}, Landroidx/emoji2/text/s;->a()V

    :cond_6
    const-class v3, Landroidx/emoji2/text/u;

    if-nez p0, :cond_8

    :try_start_0
    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_9

    move-object v4, p1

    check-cast v4, Landroid/text/Spanned;

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p3, 0x1

    invoke-interface {v4, v5, v6, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    if-gt v4, p3, :cond_9

    new-instance v0, Landroidx/emoji2/text/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Landroidx/emoji2/text/v;->d:Z

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Landroidx/emoji2/text/v;->e:Landroid/text/Spannable;

    goto :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_a

    :cond_8
    :goto_4
    new-instance v0, Landroidx/emoji2/text/v;

    move-object v4, p1

    check-cast v4, Landroid/text/Spannable;

    invoke-direct {v0, v4}, Landroidx/emoji2/text/v;-><init>(Landroid/text/Spannable;)V

    :cond_9
    :goto_5
    if-eqz v0, :cond_b

    iget-object v4, v0, Landroidx/emoji2/text/v;->e:Landroid/text/Spannable;

    invoke-interface {v4, p2, p3, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/emoji2/text/u;

    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    array-length v4, v3

    :goto_6
    if-ge v1, v4, :cond_b

    aget-object v5, v3, v1

    iget-object v6, v0, Landroidx/emoji2/text/v;->e:Landroid/text/Spannable;

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v0, Landroidx/emoji2/text/v;->e:Landroid/text/Spannable;

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, p3, :cond_a

    invoke-virtual {v0, v5}, Landroidx/emoji2/text/v;->removeSpan(Ljava/lang/Object;)V

    :cond_a
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v4, p2

    move v5, p3

    if-eq v4, v5, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v4, p2, :cond_c

    goto :goto_8

    :cond_c
    new-instance v8, Lw0/e;

    iget-object p2, v2, Lw0/m;->b:Ljava/lang/Object;

    check-cast p2, LU0/e;

    invoke-direct {v8, v0, p2}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const v6, 0x7fffffff

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lw0/m;->r(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/m;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/emoji2/text/v;

    if-eqz p2, :cond_e

    iget-object p2, p2, Landroidx/emoji2/text/v;->e:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_d

    check-cast p1, Landroidx/emoji2/text/s;

    invoke-virtual {p1}, Landroidx/emoji2/text/s;->b()V

    :cond_d
    move-object p1, p2

    goto :goto_9

    :cond_e
    if-eqz p0, :cond_10

    :goto_7
    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/s;

    invoke-virtual {p0}, Landroidx/emoji2/text/s;->b()V

    goto :goto_9

    :cond_f
    :goto_8
    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    :goto_9
    return-object p1

    :goto_a
    if-eqz p0, :cond_11

    check-cast p1, Landroidx/emoji2/text/s;

    invoke-virtual {p1}, Landroidx/emoji2/text/s;->b()V

    :cond_11
    throw p2

    :cond_12
    :goto_b
    return-object p1

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not initialized yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Landroidx/emoji2/text/g;)V
    .locals 4

    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Lw0/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/i;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/emoji2/text/i;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {v0, p1}, Ln/g;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/i;->d:Landroid/os/Handler;

    new-instance v1, LH/b;

    iget v2, p0, Landroidx/emoji2/text/i;->c:I

    filled-new-array {p1}, [Landroidx/emoji2/text/g;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, LH/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
