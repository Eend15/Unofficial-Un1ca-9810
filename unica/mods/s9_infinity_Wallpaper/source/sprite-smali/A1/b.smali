.class public final synthetic LA1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO/d;


# instance fields
.field public final synthetic a:LA1/f;


# direct methods
.method public synthetic constructor <init>(LA1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/b;->a:LA1/f;

    return-void
.end method


# virtual methods
.method public final a(FFZ)V
    .locals 0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget-object p0, p0, LA1/b;->a:LA1/f;

    iget p0, p0, LA1/f;->h:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p3, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "fold_Choreographer"

    const-string p2, "onAnimationEnd: canceled[%b], value[%f], velocity[%f], mCurrentAngle[%f]"

    invoke-static {p1, p2, p0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
