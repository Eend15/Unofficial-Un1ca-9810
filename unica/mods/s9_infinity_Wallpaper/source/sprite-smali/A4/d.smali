.class public final LA4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LA4/d;

.field public static final b:LA4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA4/d;->a:LA4/d;

    new-instance v0, LA4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA4/d;->b:LA4/a;

    return-void
.end method
