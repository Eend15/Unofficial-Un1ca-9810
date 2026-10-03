.class public final LR0/c;
.super LK/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:LK/I;

.field public final synthetic d:LR0/d;


# direct methods
.method public constructor <init>(LR0/d;Landroid/content/Context;Landroid/text/TextPaint;LK/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/c;->d:LR0/d;

    iput-object p2, p0, LR0/c;->a:Landroid/content/Context;

    iput-object p3, p0, LR0/c;->b:Landroid/text/TextPaint;

    iput-object p4, p0, LR0/c;->c:LK/I;

    return-void
.end method


# virtual methods
.method public final g0(I)V
    .locals 0

    iget-object p0, p0, LR0/c;->c:LK/I;

    invoke-virtual {p0, p1}, LK/I;->g0(I)V

    return-void
.end method

.method public final h0(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, LR0/c;->b:Landroid/text/TextPaint;

    iget-object v1, p0, LR0/c;->d:LR0/d;

    iget-object v2, p0, LR0/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, LR0/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, LR0/c;->c:LK/I;

    invoke-virtual {p0, p1, p2}, LK/I;->h0(Landroid/graphics/Typeface;Z)V

    return-void
.end method
