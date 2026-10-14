.class public final LP4/b;
.super LP4/c;
.source "SourceFile"


# static fields
.field public static final b:LP4/b;

.field public static final c:LP4/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LP4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP4/c;-><init>(Z)V

    sput-object v0, LP4/b;->b:LP4/b;

    new-instance v0, LP4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LP4/c;-><init>(Z)V

    sput-object v0, LP4/b;->c:LP4/b;

    return-void
.end method
