.class public final synthetic Landroidx/appcompat/app/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/f;


# instance fields
.field public final synthetic d:Landroidx/appcompat/app/h;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/G;->d:Landroidx/appcompat/app/h;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/G;->d:Landroidx/appcompat/app/h;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->i(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
