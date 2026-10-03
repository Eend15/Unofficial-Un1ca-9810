.class public final synthetic Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/appcompat/app/k;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/i;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/u;->a:Landroidx/appcompat/app/k;

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p1, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p0, v0}, Landroidx/fragment/app/L;->b(Landroidx/fragment/app/v;La4/x;Landroidx/fragment/app/r;)V

    return-void
.end method
