.class public final synthetic LN1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:LN1/j;


# direct methods
.method public synthetic constructor <init>(LN1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/e;->a:LN1/j;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, LN1/e;->a:LN1/j;

    invoke-virtual {p0}, LN1/j;->h()V

    const/4 p0, 0x0

    return p0
.end method
