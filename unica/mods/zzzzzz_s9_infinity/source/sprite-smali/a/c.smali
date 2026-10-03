.class public final La/c;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/weather/api/entity/settings/Setting;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:La/d;

.field public g:I


# direct methods
.method public constructor <init>(La/d;Lw3/c;)V
    .locals 0

    iput-object p1, p0, La/c;->f:La/d;

    invoke-direct {p0, p2}, Lw3/c;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, La/c;->e:Ljava/lang/Object;

    iget p1, p0, La/c;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, La/c;->g:I

    iget-object p1, p0, La/c;->f:La/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, La/d;->a(Landroid/content/Context;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
