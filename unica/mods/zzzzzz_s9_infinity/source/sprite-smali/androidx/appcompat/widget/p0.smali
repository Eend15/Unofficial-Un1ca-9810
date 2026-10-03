.class public final Landroidx/appcompat/widget/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/w0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/p0;->a:Landroidx/appcompat/widget/w0;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/p0;->a:Landroidx/appcompat/widget/w0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/k0;->k:Z

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
