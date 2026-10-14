.class public final Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;
.super Ljava/lang/Object;
.field public static dot_frag_shader:I
.field public static dot_vert_shader:I
.field public static line_frag_shader:I
.field public static line_vert_shader:I
.field public static rectangle_frag_shader:I
.field public static rectangle_vert_shader:I
.field public static single_texture_frag_shader:I
.field public static single_texture_vert_shader:I
.field public static triangle_frag_shader:I
.field public static triangle_vert_shader:I
.field public static vertex_data_black:I
.field public static vertex_data_blue:I
.field public static vertex_data_gold:I
.field public static vertex_data_grey:I
.field public static vertex_data_purple:I

.method public static init(Landroid/content/Context;)V
    .locals 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v3
    const-string v2, "raw"
    const-string v1, "dot_frag_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->dot_frag_shader:I
    const-string v1, "dot_vert_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->dot_vert_shader:I
    const-string v1, "line_frag_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->line_frag_shader:I
    const-string v1, "line_vert_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->line_vert_shader:I
    const-string v1, "rectangle_frag_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->rectangle_frag_shader:I
    const-string v1, "rectangle_vert_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->rectangle_vert_shader:I
    const-string v1, "single_texture_frag_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_frag_shader:I
    const-string v1, "single_texture_vert_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_vert_shader:I
    const-string v1, "triangle_frag_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->triangle_frag_shader:I
    const-string v1, "triangle_vert_shader"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->triangle_vert_shader:I
    const-string v1, "vertex_data_black"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->vertex_data_black:I
    const-string v1, "vertex_data_blue"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->vertex_data_blue:I
    const-string v1, "vertex_data_gold"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->vertex_data_gold:I
    const-string v1, "vertex_data_grey"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->vertex_data_grey:I
    const-string v1, "vertex_data_purple"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    sput v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->vertex_data_purple:I
    return-void
.end method
