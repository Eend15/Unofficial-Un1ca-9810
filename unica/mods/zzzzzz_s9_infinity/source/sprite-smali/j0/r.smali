.class public abstract Lj0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/widget/G0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
