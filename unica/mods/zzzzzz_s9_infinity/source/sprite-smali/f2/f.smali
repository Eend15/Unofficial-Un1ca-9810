.class public abstract Lf2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/text/format/DateFormat;

    const-string v2, "getTimeFormatString"

    invoke-static {v1, v2, v0}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lf2/f;->a:Ljava/lang/reflect/Method;

    return-void
.end method
