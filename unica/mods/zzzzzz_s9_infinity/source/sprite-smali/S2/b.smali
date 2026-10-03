.class public final LS2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Lf/e;->abc_textfield_search_default_mtrl_alpha:I

    sget v1, Lf/e;->abc_textfield_default_mtrl_alpha:I

    sget v2, Lf/e;->abc_ab_share_pack_mtrl_alpha:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->a:Ljava/lang/Object;

    .line 30
    sget v1, Lf/e;->abc_ic_commit_search_api_mtrl_alpha:I

    sget v2, Lf/e;->abc_seekbar_tick_mark_material:I

    sget v3, Lf/e;->abc_ic_menu_share_mtrl_alpha:I

    sget v4, Lf/e;->abc_ic_menu_copy_mtrl_am_alpha:I

    sget v5, Lf/e;->abc_ic_menu_cut_mtrl_alpha:I

    sget v6, Lf/e;->abc_ic_menu_selectall_mtrl_alpha:I

    sget v7, Lf/e;->abc_ic_menu_paste_mtrl_am_alpha:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->b:Ljava/lang/Object;

    .line 31
    sget v1, Lf/e;->abc_textfield_activated_mtrl_alpha:I

    sget v2, Lf/e;->abc_textfield_search_activated_mtrl_alpha:I

    sget v3, Lf/e;->abc_cab_background_top_mtrl_alpha:I

    sget v4, Lf/e;->abc_text_cursor_material:I

    sget v5, Lf/e;->abc_text_select_handle_left_mtrl:I

    sget v6, Lf/e;->abc_text_select_handle_middle_mtrl:I

    sget v7, Lf/e;->abc_text_select_handle_right_mtrl:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->c:Ljava/lang/Object;

    .line 32
    sget v0, Lf/e;->abc_popup_background_mtrl_mult:I

    sget v1, Lf/e;->abc_cab_background_internal_bg:I

    sget v2, Lf/e;->abc_menu_hardkey_panel_mtrl_mult:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->d:Ljava/lang/Object;

    .line 33
    sget v0, Lf/e;->abc_tab_indicator_material:I

    sget v1, Lf/e;->abc_textfield_search_material:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->e:Ljava/lang/Object;

    .line 34
    sget v0, Lf/e;->abc_btn_check_material:I

    sget v1, Lf/e;->abc_btn_radio_material:I

    sget v2, Lf/e;->abc_btn_check_material_anim:I

    sget v3, Lf/e;->abc_btn_radio_material_anim:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, LS2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LU0/e;LT2/a;)V
    .locals 1

    const-string v0, "preference"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LS2/b;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LS2/b;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, LA1/l;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LS2/b;->d:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, LS2/b;->e:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LS2/b;->f:Ljava/lang/Object;

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    const-string v0, "DumpUtilImpl#"

    .line 8
    invoke-static {p2, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 11
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, LS2/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La2/q;I)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    const-string p3, "wallpaperData"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2/b;->a:Ljava/lang/Object;

    iput-object p2, p0, LS2/b;->b:Ljava/lang/Object;

    .line 17
    new-instance p1, Ln/f;

    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Ln/j;-><init>(I)V

    .line 19
    iput-object p1, p0, LS2/b;->e:Ljava/lang/Object;

    .line 20
    new-instance p1, Ln/f;

    .line 21
    invoke-direct {p1, p2}, Ln/j;-><init>(I)V

    .line 22
    iput-object p1, p0, LS2/b;->f:Ljava/lang/Object;

    return-void

    .line 23
    :pswitch_0
    const-string p3, "context"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "wallpaperData"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2/b;->a:Ljava/lang/Object;

    iput-object p2, p0, LS2/b;->b:Ljava/lang/Object;

    .line 25
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, LS2/b;->c:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, La2/i;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LS2/b;->d:Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/util/EnumMap;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LS2/b;->e:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static b([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    sget v0, Lf/a;->colorControlHighlight:I

    invoke-static {p0, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lf/a;->colorButtonNormal:I

    invoke-static {p0, v1}, Landroidx/appcompat/widget/H0;->b(Landroid/content/Context;I)I

    move-result p0

    sget-object v1, Landroidx/appcompat/widget/H0;->b:[I

    sget-object v2, Landroidx/appcompat/widget/H0;->d:[I

    invoke-static {v0, p1}, LC/a;->f(II)I

    move-result v3

    sget-object v4, Landroidx/appcompat/widget/H0;->c:[I

    invoke-static {v0, p1}, LC/a;->f(II)I

    move-result v0

    sget-object v5, Landroidx/appcompat/widget/H0;->f:[I

    filled-new-array {v1, v2, v4, v5}, [[I

    move-result-object v1

    filled-new-array {p0, v3, v0, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static g(Landroidx/appcompat/widget/C0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lf/e;->abc_star_black_48dp:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/C0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lf/e;->abc_star_half_black_48dp:I

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/C0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0, p0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x1020000

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x1

    const p1, 0x102000f

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x2

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/appcompat/widget/v;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/v;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[WMGC_History] "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, LS2/b;->a:Ljava/lang/Object;

    check-cast v2, LU0/e;

    invoke-virtual {v2, p1, v0, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  | "

    invoke-static {v0, p1, p2}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LS2/b;->c:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    iget-object v0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, LA1/l;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, LS2/a;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, LS2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(La2/i;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public e(La2/f;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    iget-object v0, p0, LS2/b;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v1, v0, La2/q;->k:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, La2/f;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/o;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, La2/f;->o:Landroid/util/ArrayMap;

    if-eqz p1, :cond_1

    const-string v4, "default"

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/h;

    if-eqz p1, :cond_1

    iget-object p1, p1, La2/h;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v4, v0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/d;

    if-eqz v4, :cond_2

    iget v4, v4, La2/d;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    iget-object v5, v0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/d;

    if-eqz p1, :cond_3

    iget-object p1, p1, La2/d;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v5, p1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz v1, :cond_5

    iget-object v1, v1, La2/o;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, v1, La2/o;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object p1, v0, La2/q;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LS2/b;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public f(La2/f;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentIndex"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resId"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS2/b;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v1, v0, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La2/o;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, La2/o;->c:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iget-object p3, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast p3, Ljava/util/EnumMap;

    iget-object v2, p1, La2/f;->b:La2/i;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p2, v0, La2/q;->k:Landroid/util/ArrayMap;

    iget-object v2, p1, La2/f;->b:La2/i;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/o;

    iget-object p1, p1, La2/f;->b:La2/i;

    invoke-virtual {p0, p1}, LS2/b;->d(La2/i;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    iget-object p3, p2, La2/o;->c:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p2, La2/o;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    :goto_2
    move-object p2, v1

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_2

    iget-object p1, p2, La2/o;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, v0, La2/q;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LS2/b;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    sget v0, Lf/e;->abc_edit_text_material:I

    if-ne p2, v0, :cond_0

    sget p0, Lf/c;->abc_tint_edittext:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lf/e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_1

    sget p0, Lf/c;->abc_tint_switch_track:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    sget v0, Lf/e;->abc_switch_thumb_material:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p0, 0x3

    new-array p2, p0, [[I

    new-array p0, p0, [I

    sget v0, Lf/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/appcompat/widget/H0;->b:[I

    aput-object v4, p2, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, p0, v1

    sget-object v1, Landroidx/appcompat/widget/H0;->e:[I

    aput-object v1, p2, v3

    sget v1, Lf/a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v3

    sget-object p1, Landroidx/appcompat/widget/H0;->f:[I

    aput-object p1, p2, v2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/appcompat/widget/H0;->b:[I

    aput-object v0, p2, v1

    sget v0, Lf/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->b(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v1

    sget-object v0, Landroidx/appcompat/widget/H0;->e:[I

    aput-object v0, p2, v3

    sget v0, Lf/a;->colorControlActivated:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v3

    sget-object v0, Landroidx/appcompat/widget/H0;->f:[I

    aput-object v0, p2, v2

    sget v0, Lf/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v2

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    sget v0, Lf/e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_4

    sget p0, Lf/a;->colorButtonNormal:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, LS2/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_4
    sget v0, Lf/e;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, LS2/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_5
    sget v0, Lf/e;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_6

    sget p0, Lf/a;->colorAccent:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, LS2/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_6
    sget v0, Lf/e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_c

    sget v0, Lf/e;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, LS2/b;->b:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, LS2/b;->b([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lf/a;->colorControlNormal:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/H0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, LS2/b;->b([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Lf/c;->abc_tint_default:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, LS2/b;->f:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p2}, LS2/b;->b([II)Z

    move-result p0

    if-eqz p0, :cond_a

    sget p0, Lf/c;->abc_tint_btn_checkable:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_a
    sget p0, Lf/e;->abc_seekbar_thumb_material:I

    if-ne p2, p0, :cond_b

    sget p0, Lf/c;->abc_tint_seek_thumb:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_1
    sget p0, Lf/c;->abc_tint_spinner:I

    invoke-static {p1, p0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    const-string v0, "resFileName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS2/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LS2/b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "com.samsung.android.wallpaper.res"

    const/4 v3, 0x0

    const-string v4, "ResourceManager"

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LS2/b;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "init: e="

    invoke-static {v5, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x6

    const/16 v5, 0x2e

    invoke-static {p1, v5, v3, v0}, LV4/m;->z0(Ljava/lang/String;CII)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, LS2/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "drawable"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Can\'t getWallpaperResourceDrawable"

    invoke-static {v4, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object p0, p0, LS2/b;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "openRawResource(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move-object v0, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :goto_2
    :try_start_2
    const-string v1, "Can\'t decode stream"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v1, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-object v0

    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public k()V
    .locals 6

    iget-object p0, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast p0, Ln/f;

    invoke-virtual {p0}, Ln/f;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ln/a;

    invoke-virtual {p0}, Ln/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    iget-object v0, v0, La2/f;->n:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Ll5/a;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Ll5/a;

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, v1, Ll5/a;->c:Lk5/h;

    iget-object v3, v2, Lk5/h;->d:Lk5/i;

    iget v3, v3, Lk5/i;->d:F

    sget v4, LX1/i;->l:F

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, v2, Lk5/h;->d:Lk5/i;

    iget v2, v2, Lk5/i;->e:F

    sget v3, LX1/i;->l:F

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, v1, Ll5/a;->d:Lk5/f;

    iget v1, v1, Lk5/f;->h:F

    const v2, 0x4048f5c3    # 3.14f

    div-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public l(La2/i;II)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFrameDrawable : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ResourceManager"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, La2/i;->d:Ljava/lang/String;

    iget-object v0, p0, LS2/b;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, LS2/b;->b:Ljava/lang/Object;

    check-cast p3, La2/q;

    iget-object v0, p3, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/d;

    if-eqz p1, :cond_3

    iget-object p1, p1, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "next(...)"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La2/b;

    iget-object v2, p3, La2/q;->k:Landroid/util/ArrayMap;

    iget-object v4, v0, La2/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/o;

    if-eqz v2, :cond_2

    iget-object v2, v2, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "get(...)"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iget-object v4, p3, La2/q;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, LS2/b;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, v0, La2/b;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    :goto_2
    const-string p0, "updateFrameDrawable: index is out of range"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public m(II)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :goto_0
    move v0, v1

    goto/16 :goto_7

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    goto/16 :goto_7

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    :goto_1
    move v0, v2

    goto/16 :goto_7

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    :goto_2
    move v0, v3

    goto/16 :goto_7

    :cond_6
    const/4 v3, 0x7

    if-ne p1, v3, :cond_7

    goto/16 :goto_7

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    const/16 v4, 0x9

    if-ne p1, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    :goto_3
    move v0, v4

    goto/16 :goto_7

    :cond_a
    const/16 v4, 0xb

    if-ne p1, v4, :cond_b

    goto/16 :goto_7

    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    goto/16 :goto_7

    :cond_d
    const/16 v5, 0xf

    const/16 v6, 0xe

    if-ne p1, v6, :cond_e

    :goto_4
    move v0, v5

    goto/16 :goto_7

    :cond_e
    const/16 v7, 0x10

    if-ne p1, v5, :cond_f

    :goto_5
    move v0, v7

    goto/16 :goto_7

    :cond_f
    const/16 v5, 0x11

    if-ne p1, v7, :cond_10

    goto :goto_4

    :cond_10
    const/16 v7, 0x12

    if-ne p1, v5, :cond_11

    goto :goto_5

    :cond_11
    const/16 v5, 0x13

    if-ne p1, v7, :cond_12

    goto :goto_4

    :cond_12
    const/16 v7, 0x14

    if-ne p1, v5, :cond_13

    goto :goto_5

    :cond_13
    const/16 v5, 0x15

    if-ne p1, v7, :cond_14

    goto :goto_4

    :cond_14
    const/16 v7, 0x16

    if-ne p1, v5, :cond_15

    goto :goto_5

    :cond_15
    const/16 v5, 0x17

    if-ne p1, v7, :cond_16

    goto :goto_4

    :cond_16
    const/16 v8, 0x18

    if-ne p1, v5, :cond_17

    :goto_6
    move v0, v8

    goto :goto_7

    :cond_17
    if-ne p1, v8, :cond_18

    goto :goto_0

    :cond_18
    const/16 v1, 0x19

    if-ne p1, v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x1c

    const/16 v8, 0x1b

    if-ne p1, v8, :cond_1b

    goto :goto_4

    :cond_1b
    if-ne p1, v5, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x1d

    if-ne p1, v1, :cond_1d

    goto :goto_6

    :cond_1d
    if-ne p1, v3, :cond_1e

    goto/16 :goto_1

    :cond_1e
    if-ne p1, v4, :cond_1f

    goto :goto_3

    :cond_1f
    if-ne p1, v0, :cond_20

    move v0, v6

    goto :goto_7

    :cond_20
    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    goto :goto_5

    :cond_21
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    sget-object v2, La2/i;->u:La2/i;

    invoke-virtual {v1, v2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, p2}, LS2/b;->l(La2/i;II)Z

    move-result p0

    return p0
.end method

.method public n(La2/f;I)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, La2/f;->g:Ljava/lang/String;

    const-string v0, "|"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LV4/m;->G0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    sget-object v0, La2/i;->u:La2/i;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
