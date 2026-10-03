.class public final Lm2/g;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Lm2/n;


# direct methods
.method public constructor <init>(Lm2/n;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/g;->d:Lm2/n;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lm2/g;

    iget-object p0, p0, Lm2/g;->d:Lm2/n;

    invoke-direct {p1, p0, p2}, Lm2/g;-><init>(Lm2/n;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/g;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/g;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lv3/a;->d:Lv3/a;

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    new-instance p1, Lm2/a;

    iget-object p0, p0, Lm2/g;->d:Lm2/n;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lm2/a;-><init>(Lm2/n;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->render(LE3/b;)Z

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
