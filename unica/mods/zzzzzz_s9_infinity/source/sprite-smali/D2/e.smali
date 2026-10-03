.class public final LD2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LD2/e;->a:I

    iput-object p2, p0, LD2/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lh3/b;I)V
    .locals 0

    .line 2
    iput p3, p0, LD2/e;->a:I

    iput-object p2, p0, LD2/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/y;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, Lh2/d;

    invoke-virtual {p0}, Lh2/d;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh2/c;

    new-instance v0, Lh2/b;

    invoke-direct {v0, p0}, Lh2/b;-><init>(Lh2/c;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, LT2/b;

    iget-object p0, p0, LT2/b;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object p0

    invoke-static {p0}, Le0/a;->t(Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, LB2/c;

    invoke-virtual {p0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE2/b;

    new-instance v0, LF2/h;

    invoke-direct {v0, p0}, LF2/h;-><init>(LE2/b;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
