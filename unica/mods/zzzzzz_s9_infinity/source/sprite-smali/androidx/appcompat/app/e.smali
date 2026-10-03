.class public final Landroidx/appcompat/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Lk/k;

.field public g:Ljava/lang/Object;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/e;->j:I

    iput-object p1, p0, Landroidx/appcompat/app/e;->a:Landroid/view/ContextThemeWrapper;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/appcompat/app/e;->b:Landroid/view/LayoutInflater;

    return-void
.end method
