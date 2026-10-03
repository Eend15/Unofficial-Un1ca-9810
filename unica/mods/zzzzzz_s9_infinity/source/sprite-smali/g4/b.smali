.class public final Lg4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/f;


# static fields
.field public static final a:Lg4/b;

.field public static final b:Lg4/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/b;->a:Lg4/b;

    new-instance v0, Lg4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/b;->b:Lg4/b;

    return-void
.end method


# virtual methods
.method public a(La4/C;)LU3/O;
    .locals 0

    const-string p0, "javaTypeParameter"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
