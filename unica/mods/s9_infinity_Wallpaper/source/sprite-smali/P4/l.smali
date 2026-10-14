.class public final LP4/l;
.super LP4/o;
.source "SourceFile"


# static fields
.field public static final c:LP4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP4/l;

    sget-object v1, LP4/d;->k:LP4/d;

    const-string v2, "Boolean"

    invoke-direct {v0, v2, v1}, LP4/o;-><init>(Ljava/lang/String;LE3/b;)V

    sput-object v0, LP4/l;->c:LP4/l;

    return-void
.end method
