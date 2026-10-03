.class public Landroidx/appcompat/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/View;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101013b

    const v1, 0x101013c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/B;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/B;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/B;->a:I

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    .line 11
    new-instance v1, LA1/e;

    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Lw0/e;

    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, v2, Lw0/e;->d:Ljava/lang/Object;

    .line 16
    new-instance v3, LQ/i;

    invoke-direct {v3, p1}, LQ/i;-><init>(Landroid/widget/EditText;)V

    iput-object v3, v2, Lw0/e;->e:Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    sget-object v3, LQ/a;->b:LQ/a;

    if-nez v3, :cond_1

    .line 19
    sget-object v3, LQ/a;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 20
    :try_start_0
    sget-object v4, LQ/a;->b:LQ/a;

    if-nez v4, :cond_0

    .line 21
    new-instance v4, LQ/a;

    .line 22
    invoke-direct {v4}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    const-string v5, "android.text.DynamicLayout$ChangeWatcher"

    .line 24
    const-class v6, LQ/a;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v0, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, LQ/a;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :catchall_0
    :try_start_2
    sput-object v4, LQ/a;->b:LQ/a;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 27
    :cond_1
    :goto_2
    sget-object v0, LQ/a;->b:LQ/a;

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 29
    iput-object v2, v1, LA1/e;->d:Ljava/lang/Object;

    .line 30
    iput-object v1, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/B;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    .line 3
    new-instance v0, LA1/e;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v1, LQ/g;

    invoke-direct {v1, p1}, LQ/g;-><init>(Landroid/widget/TextView;)V

    iput-object v1, v0, LA1/e;->d:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, LK/I;

    invoke-virtual {p0, p1}, LK/I;->J([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Lw0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, LQ/e;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, LQ/e;

    invoke-direct {p0, p1}, LQ/e;-><init>(Landroid/text/method/KeyListener;)V

    move-object p1, p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public c(Landroid/util/AttributeSet;I)V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lf/j;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lf/j;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    sget p2, Lf/j;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, LK/I;

    invoke-virtual {p0, v0}, LK/I;->s0(Z)V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lf/j;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_1
    sget p2, Lf/j;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget p2, Lf/j;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Lw0/e;

    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, LQ/i;

    iget-boolean p1, p0, LQ/i;->f:Z

    if-eq p1, v0, :cond_3

    iget-object p1, p0, LQ/i;->e:LQ/h;

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/emoji2/text/i;->a()Landroidx/emoji2/text/i;

    move-result-object p1

    iget-object p2, p0, LQ/i;->e:LQ/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "initCallback cannot be null"

    invoke-static {p2, v1}, Lw0/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-object p1, p1, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {p1, p2}, Ln/g;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2
    :goto_3
    iput-boolean v0, p0, LQ/i;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/emoji2/text/i;->a()Landroidx/emoji2/text/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/emoji2/text/i;->b()I

    move-result p1

    iget-object p0, p0, LQ/i;->d:Landroid/widget/EditText;

    invoke-static {p0, p1}, LQ/i;->a(Landroid/widget/EditText;I)V

    :cond_3
    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/B;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/widget/B;->d:[I

    invoke-static {v1, p1, v2, p2}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ln1/a;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_5

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    move v5, p2

    :goto_5
    const/16 v6, 0x2710

    if-ge v5, v3, :cond_4

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Landroidx/appcompat/widget/B;->f(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-object v1, v4

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-virtual {p1, v2}, Ln1/a;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/widget/B;->f(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {p1}, Ln1/a;->w()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)LQ/b;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Lw0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, LQ/b;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LQ/b;

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    invoke-direct {v0, p0, p1, p2}, LQ/b;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    move-object p1, v0

    :goto_0
    move-object p0, p1

    :goto_1
    check-cast p0, LQ/b;

    return-object p0
.end method

.method public e(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, LK/I;

    invoke-virtual {p0, p1}, LK/I;->r0(Z)V

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x1

    instance-of v1, p1, LD/a;

    if-eqz v1, :cond_0

    move-object p0, p1

    check-cast p0, LD/a;

    check-cast p0, LD/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    new-array v1, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000d

    if-eq v4, v6, :cond_2

    const v6, 0x102000f

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v0

    :goto_2
    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/widget/B;->f(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v2, p2, :cond_4

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_4
    return-object p0

    :cond_5
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    iput-object v1, p0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    :cond_6
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz p2, :cond_7

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object p0, p1

    :cond_7
    return-object p0

    :cond_8
    :goto_4
    return-object p1

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method
