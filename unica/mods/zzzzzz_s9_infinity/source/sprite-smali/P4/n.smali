.class public final LP4/n;
.super LP4/o;
.source "SourceFile"


# static fields
.field public static final c:LP4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP4/n;

    sget-object v1, LP4/d;->m:LP4/d;

    const-string v2, "Unit"

    invoke-direct {v0, v2, v1}, LP4/o;-><init>(Ljava/lang/String;LE3/b;)V

    sput-object v0, LP4/n;->c:LP4/n;

    return-void
.end method
