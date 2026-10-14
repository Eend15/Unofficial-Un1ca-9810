.class public final LP4/m;
.super LP4/o;
.source "SourceFile"


# static fields
.field public static final c:LP4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP4/m;

    sget-object v1, LP4/d;->l:LP4/d;

    const-string v2, "Int"

    invoke-direct {v0, v2, v1}, LP4/o;-><init>(Ljava/lang/String;LE3/b;)V

    sput-object v0, LP4/m;->c:LP4/m;

    return-void
.end method
