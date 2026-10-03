.class public final Landroidx/appcompat/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Landroidx/appcompat/app/g;

.field public final synthetic e:Landroidx/appcompat/app/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/e;Landroidx/appcompat/app/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/e;

    iput-object p2, p0, Landroidx/appcompat/app/d;->d:Landroidx/appcompat/app/g;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/e;

    iget-object p2, p1, Landroidx/appcompat/app/e;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Landroidx/appcompat/app/d;->d:Landroidx/appcompat/app/g;

    iget-object p4, p0, Landroidx/appcompat/app/g;->b:Landroidx/appcompat/app/h;

    invoke-interface {p2, p4, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, Landroidx/appcompat/app/e;->i:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/g;->b:Landroidx/appcompat/app/h;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->dismiss()V

    :cond_0
    return-void
.end method
