.class public abstract Lk4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LV3/i;

.field public static final b:LV3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LV3/i;

    sget-object v1, Ld4/x;->o:Ls4/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LV3/i;-><init>(Ls4/c;)V

    sput-object v0, Lk4/v;->a:LV3/i;

    new-instance v0, LV3/i;

    sget-object v1, Ld4/x;->p:Ls4/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LV3/i;-><init>(Ls4/c;)V

    sput-object v0, Lk4/v;->b:LV3/i;

    return-void
.end method
