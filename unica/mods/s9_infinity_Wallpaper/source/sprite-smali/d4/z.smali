.class public final Ld4/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ld4/z;

.field public static final b:Lo1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld4/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld4/z;->a:Ld4/z;

    new-instance v0, Lo1/b;

    sget-object v1, Lr3/s;->d:Lr3/s;

    invoke-direct {v0, v1}, Lo1/b;-><init>(Ljava/util/Map;)V

    sput-object v0, Ld4/z;->b:Lo1/b;

    return-void
.end method
