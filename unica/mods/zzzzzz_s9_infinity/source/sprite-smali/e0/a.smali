.class public abstract Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ls4/f;LU3/e;)LX3/W;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, LU3/e;->P()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU3/d;

    check-cast p1, LX3/w;

    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    move-object v2, v1

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2, p0}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    const/16 p0, 0x14

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_4
    const/16 p0, 0x13

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Cannot load class: "

    const-string v2, " : "

    invoke-static {v1, p0, v2}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReflectUtil"

    invoke-static {v1, p0, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    new-instance v1, LB/j;

    invoke-direct {v1, v0, p0}, LB/j;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    sget-object v2, LB/l;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, LB/l;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LB/i;

    if-eqz v5, :cond_3

    iget-object v6, v5, LB/i;->b:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p0, :cond_0

    iget v6, v5, LB/i;->c:I

    if-eqz v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    iget v6, v5, LB/i;->c:I

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    :cond_1
    iget-object v3, v5, LB/i;->a:Landroid/content/res/ColorStateList;

    monitor-exit v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    sget-object v2, LB/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TypedValue;

    if-nez v3, :cond_5

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v3, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_1
    invoke-static {v0, v2, p0}, LB/d;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "ResourcesCompat"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v4, :cond_8

    sget-object v2, LB/l;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object v0, LB/l;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_7

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v0, LB/i;

    iget-object v1, v1, LB/j;->a:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v4, v1, p0}, LB/i;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v3, v4

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_8
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_5
    return-object v3

    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroidx/appcompat/widget/C0;->b()Landroidx/appcompat/widget/C0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/C0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/media/MediaMetadataRetriever;I)I
    .locals 5

    const-string v0, "ThumbnailUtils"

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-float v1, v2

    int-to-float v3, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    div-float/2addr v1, v3

    int-to-float p1, p1

    div-float/2addr p1, v1

    const v3, 0x49742400    # 1000000.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    :try_start_1
    const-string v3, "getFrameTime: total count[%d], duration[%d], frame count[%f], frame time[%d]"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, p0, v1, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move v1, p1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "getFrameTime: e = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return v1
.end method

.method public static varargs G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot load method: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ReflectUtil"

    invoke-static {p2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final H(LU3/e;)Lh4/z;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lz4/e;->a:I

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-static {v0}, LR3/j;->w(LJ4/C;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lv4/f;->n(LU3/j;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lv4/f;->n(LU3/j;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    check-cast v0, LU3/e;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v0}, LU3/e;->U()LC4/o;

    move-result-object p0

    instance-of v2, p0, Lh4/z;

    if-eqz v2, :cond_5

    move-object v1, p0

    check-cast v1, Lh4/z;

    :cond_5
    if-nez v1, :cond_6

    invoke-static {v0}, Le0/a;->H(LU3/e;)Lh4/z;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method public static I(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getRawResourceBitmap: e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ThumbnailUtils"

    invoke-static {v0, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static J(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Le0/a;->B(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cannot load field: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "ReflectUtil"

    invoke-static {v1, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return p0
.end method

.method public static K(Lh2/c;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lh2/c;->a:Landroid/content/SharedPreferences;

    const-string v0, "Spr_History"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Landroid/content/res/AssetFileDescriptor;)Landroid/util/Size;
    .locals 13

    const-string v0, "ThumbnailUtils"

    const-string v1, "getVideoScreenSize: e = "

    const-string v2, ""

    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 v10, 0x280

    const/16 v11, 0x1e0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v9, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/16 p0, 0x12

    :try_start_1
    invoke-virtual {v9, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x13

    :try_start_2
    invoke-virtual {v9, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x18

    :try_start_3
    invoke-virtual {v9, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "90"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "270"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v4

    move-object v12, v2

    move-object v2, p0

    move-object p0, v12

    goto :goto_5

    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v11

    :goto_2
    :try_start_4
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v5

    invoke-static {v1, v5}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catch_2
    move-exception v4

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto :goto_5

    :catch_3
    move-exception v4

    :goto_3
    move-object p0, v2

    move-object v3, p0

    goto :goto_5

    :goto_4
    move-object v4, p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :goto_5
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v4

    invoke-static {v1, v4}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move v4, v11

    move-object v12, v2

    move-object v2, p0

    move-object p0, v12

    :goto_7
    const-string v1, "getVideoScreenSize: w = "

    const-string v5, ", h = "

    const-string v6, ", r = "

    invoke-static {v1, p0, v5, v3, v6}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v10, v4}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :goto_8
    :try_start_7
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v2

    invoke-static {v1, v2}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    throw p0
.end method

.method public static M(ILandroid/content/res/AssetFileDescriptor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "ThumbnailUtils"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "getVideoThumbFromAssetFileDescriptor: fd is null"

    invoke-static {v1, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-static {v8, p0}, Le0/a;->F(Landroid/media/MediaMetadataRetriever;I)I

    move-result p0

    const-string p1, "getVideoThumbFromAssetFileDescriptor: frame time[%d]"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    new-instance p1, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    int-to-long v2, p0

    const/4 p0, 0x2

    invoke-virtual {v8, v2, v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    int-to-long p0, p0

    invoke-virtual {v8, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const-string p1, "getVideoThumbFromAssetFileDescriptor: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-object v0
.end method

.method public static N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getWallpaperFileDescriptor"

    const-string v3, "WallpaperUtils"

    invoke-static {v3, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "getWallpaperFileDescriptor : context is NULL"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "getWallpaperFileDescriptor : video name is NULL or EMPTY"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v2, "raw"

    const-string v4, "com.samsung.android.wallpaper.res"

    const-string v5, "getWallpaperResource: resId = "

    const-string v6, "getWallpaperResource: fileName[%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getWallpaperResource: Can\'t find package name"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v6}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    const-string p0, "getWallpaperResource: resContext is null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :try_start_1
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string p1, "getWallpaperResource: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-object v1
.end method

.method public static O(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "WallpaperUtils"

    if-nez p0, :cond_0

    const-string p0, "getWallpaperParameters : Context is NULL"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getWallpaperParameters : Wallpaper extras is NULL"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getWallpaperParameters : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "serviceSettings"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static P(Landroidx/recyclerview/widget/y;Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;
    .locals 2

    const-string v0, "refHolder"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lf0/c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lf0/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lf0/c;

    invoke-direct {v0, p1}, Lf0/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static varargs Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ReflectUtil"

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is called"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v3}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " invoke IllegalAccessException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " invoke InvocationTargetException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    const-string p0, "method or callerInstance is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static R(ILjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LM1/h;->a()I

    move-result v0

    and-int/lit8 p0, p0, 0x3c

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const-string p0, "android.wallpaper.goingtosleep"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "samsung.android.wallpaper.goingtosleep"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isDiscardableCommand : "

    invoke-static {p0, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WallpaperCommand"

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final S(LX3/L;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LX3/L;->x:LX3/M;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BitmapUtils"

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "BitmapDrawable : file path is NULL"

    invoke-static {v2, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BitmapDrawable : file is NOT valid , "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    :goto_2
    return-object v3
.end method

.method public static final U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationsOwner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg4/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg4/c;-><init>(Landroidx/recyclerview/widget/b;Lj4/b;Z)V

    return-object v0
.end method

.method public static V(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;Z)Ljava/util/LinkedHashSet;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Le4/a;

    invoke-direct {v6, p4, v0, p6}, Le4/a;-><init>(LF4/n;Ljava/util/LinkedHashSet;Z)V

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lv4/o;->h(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;Lv4/p;)V

    return-object v0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x10

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0xf

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0xd

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_4
    const/16 p0, 0xc

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0
.end method

.method public static W(Ls4/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;)Ljava/util/LinkedHashSet;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Le0/a;->V(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;Z)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x3

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0
.end method

.method public static X(Ls4/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LU3/e;LZ3/e;Lv4/o;)Ljava/util/LinkedHashSet;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Le0/a;->V(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;Z)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xb

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xa

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x9

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x7

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0

    :cond_4
    const/4 p0, 0x6

    invoke-static {p0}, Le0/a;->a(I)V

    throw v0
.end method

.method public static Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 5

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string p0, "thumbnail"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "getThumbnailFile: thumbnail file path = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "ThumbnailUtils"

    invoke-static {v1, p0, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p0, 0x10000000

    const-string p2, "storeThumbnail: e = "

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, v2, p3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_0
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object p0, p3

    :cond_3
    :goto_3
    return-object p0

    :goto_4
    if-eqz p3, :cond_4

    :try_start_6
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_5
    throw p0
.end method

.method public static synthetic a(I)V
    .locals 7

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    const-string v6, "annotationClass"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_2
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "overridingUtil"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "errorReporter"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "classDescriptor"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "membersFromCurrent"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "membersFromSupertypes"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "resolveOverrides"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "resolveOverridesForNonStaticMembers"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_8
    const-string v4, "getAnnotationParameterByName"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_9
    aput-object v5, v3, v2

    goto :goto_4

    :pswitch_a
    const-string v4, "resolveOverridesForStaticMembers"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_b
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static b(FI)I
    .locals 4

    const v0, 0x4479c000    # 999.0f

    cmpg-float v1, p0, v0

    if-nez v1, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide v1, 0x3ffccccccccccccdL    # 1.8

    const/high16 v3, 0x42000000    # 32.0f

    if-ne p1, v0, :cond_2

    sub-float/2addr p0, v3

    float-to-double p0, p0

    div-double/2addr p0, v1

    :goto_0
    double-to-float p0, p0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    float-to-double p0, p0

    mul-double/2addr p0, v1

    float-to-double v0, v3

    add-double/2addr p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static c(II)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static d(IJ)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x1f

    return p1
.end method

.method public static e(ILjava/lang/String;)I
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p0, v0, p1}, LB/a;->g(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final f(Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;)La3/a;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    sget-object p0, La3/a;->f:La3/a;

    goto :goto_0

    :cond_0
    sget-object p0, La3/a;->f:La3/a;

    goto :goto_0

    :cond_1
    sget-object p0, La3/a;->e:La3/a;

    goto :goto_0

    :cond_2
    sget-object p0, La3/a;->d:La3/a;

    :goto_0
    return-object p0
.end method

.method public static g(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/AQI;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cpType"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7d2d258b

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const-string v9, ")"

    const-string v10, "("

    const-string v11, "getCountry(...)"

    if-eq v2, v3, :cond_7

    const v3, 0x118d4

    if-eq v2, v3, :cond_2

    const v3, 0x11fc8

    if-eq v2, v3, :cond_1

    const v3, 0x1236e

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_8

    :cond_1
    const-string v2, "JPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_4

    :cond_2
    const-string v2, "HUA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v2

    invoke-static {v1, v0, v2}, Le0/a;->m(FLandroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/weather/api/unit/AQICategory;->HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v5, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x5

    goto :goto_1

    :pswitch_3
    move v5, v8

    goto :goto_1

    :pswitch_4
    move v5, v7

    goto :goto_1

    :goto_0
    :pswitch_5
    move v5, v6

    :goto_1
    :pswitch_6
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/AQIC;->getLevelRange()I

    move-result v3

    if-le v5, v3, :cond_4

    move/from16 v17, v3

    goto :goto_2

    :cond_4
    move/from16 v17, v5

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    move-object v4, v5

    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    packed-switch v17, :pswitch_data_2

    sget v5, LY2/d;->no_information:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_7
    sget v5, LY2/d;->index_state_chn_hazardous:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_8
    sget v5, LY2/d;->index_state_chn_very_unhealthy:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_9
    sget v5, LY2/d;->index_state_chn_unhealthy:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_a
    sget v5, LY2/d;->index_state_chn_unhealthy_for_sensitive_groups:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_b
    sget v5, LY2/d;->index_state_chn__moderate:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_c
    sget v5, LY2/d;->index_state_chn_dust_good:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v5, "let(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v6

    invoke-static {v0, v6, v5}, Le0/a;->p(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v15

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Le0/a;->f(Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;)La3/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/weather/api/unit/AQIC;->getMaxValue(La3/a;)I

    move-result v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-object v12, v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v22}, Lcom/samsung/android/weather/api/entity/weather/AQI;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_7
    const-string v2, "JPN_V4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v3

    invoke-static {v2, v0, v3}, Le0/a;->m(FLandroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x86b

    if-eq v3, v4, :cond_19

    const/16 v4, 0x881

    if-eq v3, v4, :cond_17

    const/16 v4, 0x8ae

    if-eq v3, v4, :cond_15

    const/16 v4, 0x8cc

    if-eq v3, v4, :cond_13

    const/16 v4, 0x8db

    if-eq v3, v4, :cond_11

    const/16 v4, 0x91c

    if-eq v3, v4, :cond_10

    const/16 v4, 0x925

    if-eq v3, v4, :cond_e

    const/16 v4, 0x967

    if-eq v3, v4, :cond_c

    const/16 v4, 0x9ab

    if-eq v3, v4, :cond_a

    goto/16 :goto_5

    :cond_a
    const-string v3, "MX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_5

    :cond_b
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->IMECA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto/16 :goto_6

    :cond_c
    const-string v3, "KR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_e
    const-string v3, "IN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_5

    :cond_f
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->NAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_10
    const-string v3, "IE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_11
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_12
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->DAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_13
    const-string v3, "FR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->ATMO:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_15
    const-string v3, "ES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_5

    :cond_16
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->CAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_17
    const-string v3, "DE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_5

    :cond_18
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->UBA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_19
    const-string v3, "CN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :goto_5
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->EPA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_6

    :cond_1a
    sget-object v3, Lcom/samsung/android/weather/api/unit/AQICategory;->HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

    :goto_6
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/unit/AQIC;->getLevelRange()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v5

    if-le v5, v4, :cond_1b

    move/from16 v16, v4

    goto :goto_7

    :cond_1b
    move/from16 v16, v5

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v5

    invoke-static {v0, v5, v1}, Le0/a;->p(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v14

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Le0/a;->f(Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;)La3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/unit/AQIC;->getMaxValue(La3/a;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-object v11, v0

    move/from16 v17, v4

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v21}, Lcom/samsung/android/weather/api/entity/weather/AQI;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1c
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v2

    invoke-static {v1, v0, v2}, Le0/a;->m(FLandroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/weather/api/unit/AQICategory;->CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v3

    const/16 v12, 0x79

    if-eq v3, v12, :cond_20

    const/16 v12, 0x7a

    if-eq v3, v12, :cond_1f

    const/16 v12, 0x7c

    if-eq v3, v12, :cond_1e

    const/16 v12, 0x7d

    if-eq v3, v12, :cond_1d

    if-eq v3, v5, :cond_1d

    if-eq v3, v7, :cond_1f

    if-eq v3, v8, :cond_20

    goto :goto_9

    :cond_1d
    move v3, v5

    goto :goto_a

    :cond_1e
    :goto_9
    move v3, v6

    goto :goto_a

    :cond_1f
    move v3, v7

    goto :goto_a

    :cond_20
    move v3, v8

    :goto_a
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/weather/api/unit/AQIC;->getLevelRange()I

    move-result v15

    if-le v3, v15, :cond_21

    move v3, v15

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_22

    move-object v4, v12

    :cond_22
    if-nez v4, :cond_27

    const-string v4, "getString(...)"

    if-eq v3, v5, :cond_26

    if-eq v3, v6, :cond_25

    if-eq v3, v7, :cond_24

    if-eq v3, v8, :cond_23

    sget v5, LY2/d;->index_state_good:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_23
    sget v5, LY2/d;->index_state_very_bad:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_24
    sget v5, LY2/d;->index_state_bad:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    sget v5, LY2/d;->index_state_chn__moderate:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_26
    sget v5, LY2/d;->index_state_good:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_27
    move-object v5, v4

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v6

    invoke-static {v0, v6, v4}, Le0/a;->p(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v0

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Le0/a;->f(Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;)La3/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/weather/api/unit/AQIC;->getMaxValue(La3/a;)I

    move-result v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v22

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-object v12, v2

    move v4, v15

    move v15, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v22}, Lcom/samsung/android/weather/api/entity/weather/AQI;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_c
    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getValue()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevel()I

    move-result v4

    const-string v5, "aqi]  title: "

    const-string v6, " category: "

    const-string v7, " value: "

    invoke-static {v5, v1, v6, v2, v7}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x83
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static h(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/ForecastTime;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;La3/w;La3/k;La3/k;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string v4, "context"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "time"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "probUnit"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "storageAmountUnit"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "displayAmountUnit"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    invoke-static {v6, v2, v3}, LR3/f;->o(FLa3/k;La3/k;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GetPrecipitation] origin amount : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " convert amount : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WPI"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, LY2/d;->precipitation:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "getString(...)"

    invoke-static {v6, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v4

    :goto_1
    move v10, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getEpochTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getTimeZone()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    move v11, v5

    goto :goto_3

    :cond_3
    move v11, v4

    :goto_3
    sget-object v5, La3/v;->a:La3/v;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "--"

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    invoke-static {v5, v0}, Le0/a;->z(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_4

    :cond_4
    move-object v12, v1

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_5
    move v13, v4

    sget-object v4, La3/i;->b:La3/i;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1, v0}, Le0/a;->l(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v14, v0

    goto :goto_6

    :cond_6
    move-object v14, v1

    goto :goto_6

    :cond_7
    sget-object v4, La3/j;->b:La3/j;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1, v0}, Le0/a;->y(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    sget-object v4, La3/h;->b:La3/h;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v2, 0xa

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1, v0}, Le0/a;->s(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    move-object/from16 v16, v0

    goto :goto_9

    :cond_a
    :goto_8
    const-string v0, ""

    goto :goto_7

    :goto_9
    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    iget v15, v3, La3/k;->a:I

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_b
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static i(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;La3/w;La3/k;La3/k;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "context"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "probUnit"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "storageAmountUnit"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "displayAmountUnit"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/samsung/android/weather/api/entity/weather/ForecastTimeKt;->isDay(Lcom/samsung/android/weather/api/entity/weather/ForecastTime;J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    check-cast v6, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    check-cast v6, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_5

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    check-cast v7, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v4

    invoke-static {v4, v2, v3}, LR3/f;->o(FLa3/k;La3/k;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v5

    :goto_4
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "GetCurrentPrecipitation] origin amount : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " convert amount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WPI"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    sget v5, LY2/d;->precipitation:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v5, "getString(...)"

    invoke-static {v9, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getEpochTime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getTimeZone()Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v5

    :goto_5
    move v13, v5

    goto :goto_6

    :cond_9
    const/4 v5, 0x1

    goto :goto_5

    :goto_6
    const/4 v5, 0x0

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v8

    move v14, v8

    goto :goto_7

    :cond_a
    move v14, v5

    :goto_7
    sget-object v8, La3/v;->a:La3/v;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "--"

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v8

    invoke-static {v8, v0}, Le0/a;->z(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    goto :goto_8

    :cond_b
    move-object v15, v1

    :goto_8
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move/from16 v16, v2

    goto :goto_9

    :cond_c
    move/from16 v16, v5

    :goto_9
    sget-object v2, La3/i;->b:La3/i;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v1

    invoke-static {v1, v0}, Le0/a;->l(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    move-object/from16 v17, v0

    goto :goto_b

    :cond_d
    move-object/from16 v17, v1

    goto :goto_b

    :cond_e
    sget-object v2, La3/j;->b:La3/j;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v1

    invoke-static {v1, v0}, Le0/a;->y(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_f
    sget-object v2, La3/h;->b:La3/h;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v1

    const/16 v2, 0xa

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1, v0}, Le0/a;->s(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :goto_b
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_d

    :cond_10
    :goto_c
    move-object/from16 v19, v0

    goto :goto_e

    :cond_11
    :goto_d
    const-string v0, ""

    goto :goto_c

    :goto_e
    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x100

    move-object v8, v4

    invoke-direct/range {v8 .. v21}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;ILF3/f;)V

    return-object v4

    :cond_12
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static j(Landroid/content/Context;ILcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;La3/B;La3/B;)Lcom/samsung/android/weather/api/entity/weather/Wind;
    .locals 9

    const v0, 0x11170

    if-gt v0, p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result p1

    invoke-static {p1, p0, p4}, Le0/a;->o(FLandroid/content/Context;La3/B;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result p1

    invoke-static {p1, p0, p4}, Le0/a;->o(FLandroid/content/Context;La3/B;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result p1

    invoke-static {p1, p3, p4}, LR3/f;->p(FLa3/B;La3/B;)F

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getHuaWind] origin : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " convert : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " phrase: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WPI"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/weather/api/entity/weather/Wind;

    sget p3, LY2/d;->life_index_wind:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "getString(...)"

    invoke-static {v1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/f;->H(F)I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v8

    iget v7, p4, La3/B;->a:I

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/weather/api/entity/weather/Wind;-><init>(Ljava/lang/String;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public static k(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;La3/B;La3/B;)Lcom/samsung/android/weather/api/entity/weather/Wind;
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v0

    invoke-static {v0, p2, p3}, LR3/f;->p(FLa3/B;La3/B;)F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetWind] origin : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " convert : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WPI"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/samsung/android/weather/api/entity/weather/Wind;

    sget v0, LY2/d;->life_index_wind:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lw0/f;->H(F)I

    move-result v4

    invoke-static {v3, p0, p3}, Le0/a;->o(FLandroid/content/Context;La3/B;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v9

    iget v8, p3, La3/B;->a:I

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/weather/api/entity/weather/Wind;-><init>(Ljava/lang/String;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public static final l(FLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LY2/d;->p2f_in:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m(FLandroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    if-ne v0, p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p2, "context"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LY2/d;->pd_mg_m3:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final n(FLandroid/content/Context;La3/u;)Ljava/lang/String;
    .locals 3

    sget-object v0, La3/t;->b:La3/t;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getString(...)"

    const-string v2, "context"

    if-eqz v0, :cond_0

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LY2/d;->p1f_mb:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, La3/s;->b:La3/s;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Le0/a;->l(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, La3/r;->b:La3/r;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LY2/d;->pd_hpa:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static o(FLandroid/content/Context;La3/B;)Ljava/lang/String;
    .locals 3

    sget-object v0, La3/A;->b:La3/A;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getString(...)"

    const-string v2, "context"

    if-eqz v0, :cond_0

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LY2/d;->pd_m_s:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    sget-object v0, La3/z;->b:La3/z;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Le0/a;->s(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    sget-object v0, La3/y;->b:La3/y;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LY2/d;->format_km_per_hour:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d"

    invoke-static {p2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    sget-object v0, La3/x;->b:La3/x;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const-string v0, "zh"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget p0, LY2/d;->no_information:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "11-12"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "10-11"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "9-10"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_3
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "8-9"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "7-8"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "6-7"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "5-6"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "4-5"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    sget p0, LY2/d;->wind_grade_chn:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "3-4"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_9
    sget p0, LY2/d;->index_state_chn_wind_force_0:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final p(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    const-string v1, "getString(...)"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_0

    const-string p0, "--"

    goto :goto_1

    :cond_0
    sget p1, LY2/d;->aqi_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, LY2/d;->life_index_ultra_fine_dust:I

    goto :goto_0

    :cond_2
    sget p1, LY2/d;->life_index_pm2_5:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget p1, LY2/d;->life_index_fine_dust:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static q(Landroid/graphics/Bitmap;IIIFFF)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, p2

    sub-float/2addr v4, p5

    int-to-float v6, p1

    sub-float/2addr v6, p6

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v2, p5, p6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p6, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {p6, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p5, p0, v1, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p5, p0, v2, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance p5, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p5, p4, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p6}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0, v5, v5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p0, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static final s(FLandroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LY2/d;->format_m_per_hour:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable component method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroidx/recyclerview/widget/b;LU3/f;La4/n;I)Landroidx/recyclerview/widget/b;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lq3/e;->e:Lq3/e;

    new-instance v1, LF4/C;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p3, v1}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p3

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lg4/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lg4/e;-><init>(Landroidx/recyclerview/widget/b;LU3/k;Lj4/e;I)V

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lg4/f;

    :cond_2
    new-instance p0, Landroidx/recyclerview/widget/b;

    invoke-direct {p0, v1, v0, p3}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    return-object p0
.end method

.method public static final v(Landroidx/recyclerview/widget/b;LV3/h;)Ld4/u;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalAnnotations"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v3, v1, Lg4/a;->v:Ld4/t;

    iget-boolean v3, v3, Ld4/t;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV3/b;

    iget-object v8, v1, Lg4/a;->q:Ld4/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "annotationDescriptor"

    invoke-static {v4, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v8, Ld4/d;->a:Ld4/t;

    iget-boolean v10, v9, Ld4/t;->b:Z

    sget-object v11, Ld4/B;->e:Ld4/B;

    sget-object v12, Ld4/B;->d:Ld4/B;

    if-eqz v10, :cond_2

    :goto_1
    const/4 v15, 0x0

    goto :goto_5

    :cond_2
    sget-object v10, Ld4/b;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, LV3/b;->a()Ls4/c;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld4/n;

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, LV3/b;->a()Ls4/c;

    move-result-object v13

    if-eqz v13, :cond_4

    sget-object v14, Ld4/b;->e:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Ld4/s;->l:Ld4/s;

    invoke-virtual {v14, v13}, Ld4/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ld4/B;

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v4}, Ld4/d;->b(LV3/b;)Ld4/B;

    move-result-object v13

    :goto_2
    if-eq v13, v12, :cond_5

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_6

    goto :goto_1

    :cond_6
    if-ne v13, v11, :cond_7

    move v13, v6

    goto :goto_4

    :cond_7
    move v13, v5

    :goto_4
    iget-object v14, v10, Ld4/n;->a:Lk4/i;

    invoke-static {v14, v13}, Lk4/i;->a(Lk4/i;Z)Lk4/i;

    move-result-object v13

    iget-object v14, v10, Ld4/n;->b:Ljava/util/Collection;

    const-string v15, "qualifierApplicabilityTypes"

    invoke-static {v14, v15}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ld4/n;

    iget-boolean v7, v10, Ld4/n;->c:Z

    iget-boolean v10, v10, Ld4/n;->d:Z

    invoke-direct {v15, v13, v14, v7, v10}, Ld4/n;-><init>(Lk4/i;Ljava/util/Collection;ZZ)V

    :goto_5
    if-nez v15, :cond_1b

    iget-object v7, v9, Ld4/t;->a:Ld4/v;

    iget-boolean v7, v7, Ld4/v;->d:Z

    if-eqz v7, :cond_8

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_8
    invoke-static {v4}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object v7

    if-nez v7, :cond_a

    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    invoke-interface {v7}, LV3/a;->p()LV3/h;

    move-result-object v9

    sget-object v10, Ld4/b;->c:Ls4/c;

    invoke-interface {v9, v10}, LV3/h;->e(Ls4/c;)Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_7
    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v4}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object v9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {v9}, LV3/a;->p()LV3/h;

    move-result-object v9

    sget-object v10, Ld4/b;->c:Ls4/c;

    invoke-interface {v9, v10}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object v9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {v9}, LV3/b;->b()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls4/f;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx4/g;

    sget-object v15, Ld4/x;->b:Ls4/f;

    invoke-static {v14, v15}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Ld4/c;->d:Ld4/c;

    invoke-static {v13, v14}, Ld4/d;->a(Lx4/g;LE3/c;)Ljava/util/List;

    move-result-object v13

    goto :goto_9

    :cond_c
    sget-object v13, Lr3/r;->d:Lr3/r;

    :goto_9
    invoke-static {v10, v13}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v5

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ld4/a;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    shl-int v13, v6, v13

    or-int/2addr v10, v13

    goto :goto_a

    :cond_e
    invoke-interface {v7}, LV3/a;->p()LV3/h;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, LV3/b;

    invoke-virtual {v8, v13}, Ld4/d;->d(LV3/b;)LV3/b;

    move-result-object v13

    if-eqz v13, :cond_f

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_b
    check-cast v9, LV3/b;

    if-nez v9, :cond_11

    goto/16 :goto_6

    :cond_11
    new-instance v7, LH/k;

    invoke-direct {v7, v10, v9}, LH/k;-><init>(ILjava/lang/Object;)V

    :goto_c
    if-nez v7, :cond_12

    :goto_d
    const/4 v7, 0x0

    goto :goto_11

    :cond_12
    invoke-static {}, Ld4/a;->values()[Ld4/a;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v9

    move v14, v5

    :goto_e
    if-ge v14, v13, :cond_15

    aget-object v15, v9, v14

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    shl-int v16, v6, v16

    iget v6, v7, LH/k;->d:I

    and-int v16, v6, v16

    if-eqz v16, :cond_13

    goto :goto_f

    :cond_13
    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_14

    sget-object v6, Ld4/a;->i:Ld4/a;

    if-eq v15, v6, :cond_14

    :goto_f
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_e

    :cond_15
    invoke-virtual {v8, v4}, Ld4/d;->c(LV3/b;)Ld4/B;

    move-result-object v4

    iget-object v6, v7, LH/k;->e:Ljava/lang/Object;

    check-cast v6, LV3/b;

    if-nez v4, :cond_16

    invoke-virtual {v8, v6}, Ld4/d;->b(LV3/b;)Ld4/B;

    move-result-object v4

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v12, :cond_17

    goto :goto_d

    :cond_17
    iget-object v7, v1, Lg4/a;->t:Lg4/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lg4/a;->r:Ln1/a;

    invoke-virtual {v7, v6, v5}, Ln1/a;->g(LV3/b;Z)Lk4/i;

    move-result-object v6

    if-nez v6, :cond_18

    const/4 v4, 0x0

    goto :goto_10

    :cond_18
    if-ne v4, v11, :cond_19

    const/4 v5, 0x1

    :cond_19
    invoke-static {v6, v5}, Lk4/i;->a(Lk4/i;Z)Lk4/i;

    move-result-object v4

    :goto_10
    if-nez v4, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v7, Ld4/n;

    invoke-direct {v7, v4, v10}, Ld4/n;-><init>(Lk4/i;Ljava/util/List;)V

    goto :goto_11

    :cond_1b
    move-object v7, v15

    :goto_11
    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v1

    if-nez v1, :cond_1e

    const/4 v7, 0x0

    goto :goto_12

    :cond_1e
    iget-object v1, v1, Ld4/u;->a:Ljava/util/EnumMap;

    new-instance v7, Ljava/util/EnumMap;

    invoke-direct {v7, v1}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    :goto_12
    if-nez v7, :cond_1f

    new-instance v7, Ljava/util/EnumMap;

    const-class v1, Ld4/a;

    invoke-direct {v7, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :cond_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld4/n;

    iget-object v3, v2, Ld4/n;->b:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld4/a;

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_13

    :cond_21
    if-nez v5, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v0

    goto :goto_14

    :cond_22
    new-instance v0, Ld4/u;

    invoke-direct {v0, v7}, Ld4/u;-><init>(Ljava/util/EnumMap;)V

    :goto_14
    return-object v0
.end method

.method public static final w(Ljava/util/List;Ljava/util/List;LU3/s;)Ljava/util/ArrayList;
    .locals 16

    const-string v0, "oldValueParameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    invoke-static/range {p0 .. p1}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/f;

    iget-object v3, v2, Lq3/f;->d:Ljava/lang/Object;

    check-cast v3, Lf4/i;

    iget-object v2, v2, Lq3/f;->e:Ljava/lang/Object;

    check-cast v2, LX3/W;

    new-instance v15, LX3/W;

    iget v7, v2, LX3/W;->i:I

    move-object v4, v2

    check-cast v4, LD4/a;

    invoke-virtual {v4}, LD4/a;->p()LV3/h;

    move-result-object v8

    move-object v4, v2

    check-cast v4, LX3/p;

    invoke-virtual {v4}, LX3/p;->r()Ls4/f;

    move-result-object v9

    const-string v4, "oldParameter.name"

    invoke-static {v9, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v3, Lf4/i;->a:LJ4/C;

    iget-object v4, v2, LX3/W;->m:LJ4/C;

    if-eqz v4, :cond_0

    invoke-static/range {p2 .. p2}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object v4

    invoke-interface {v4}, LU3/x;->c()LR3/j;

    move-result-object v4

    iget-object v5, v3, Lf4/i;->a:LJ4/C;

    invoke-virtual {v4, v5}, LR3/j;->f(LJ4/C;)LJ4/C;

    move-result-object v4

    :goto_1
    move-object v14, v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    move-object v4, v2

    check-cast v4, LX3/q;

    invoke-virtual {v4}, LX3/q;->i()LU3/L;

    move-result-object v13

    const-string v4, "oldParameter.source"

    invoke-static {v13, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v12, v2, LX3/W;->k:Z

    iget-boolean v2, v2, LX3/W;->l:Z

    const/4 v6, 0x0

    iget-boolean v11, v3, Lf4/i;->b:Z

    move-object v4, v15

    move-object/from16 v5, p2

    move-object v3, v13

    move v13, v2

    move-object v2, v15

    move-object v15, v3

    invoke-direct/range {v4 .. v15}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LV3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/b;

    sget-object v1, Lq3/e;->e:Lq3/e;

    new-instance v2, LF4/C;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Lg4/f;

    invoke-direct {v0, v1, p0, p1}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final y(FLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LY2/d;->pd_mm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final z(FLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LY2/d;->pdp:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/f;->H(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
