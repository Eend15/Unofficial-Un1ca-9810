.class public abstract LG0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:LT/a;

.field public static final c:LT/a;

.field public static final d:LT/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LG0/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, LT/a;

    sget-object v1, LT/a;->d:[F

    invoke-direct {v0, v1}, LT/b;-><init>([F)V

    sput-object v0, LG0/a;->b:LT/a;

    new-instance v0, LT/a;

    sget-object v1, LT/a;->c:[F

    invoke-direct {v0, v1}, LT/b;-><init>([F)V

    sput-object v0, LG0/a;->c:LT/a;

    new-instance v0, LT/a;

    sget-object v1, LT/a;->e:[F

    invoke-direct {v0, v1}, LT/b;-><init>([F)V

    sput-object v0, LG0/a;->d:LT/a;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Li4/b;->b(FFFF)F

    move-result p0

    return p0
.end method

.method public static b(FII)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method
