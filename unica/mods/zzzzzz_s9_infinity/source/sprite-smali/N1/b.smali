.class public final synthetic LN1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field public final synthetic a:LN1/j;


# direct methods
.method public synthetic constructor <init>(LN1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/b;->a:LN1/j;

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 0

    iget-object p0, p0, LN1/b;->a:LN1/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, LN1/j;->k:Z

    invoke-virtual {p0}, LN1/j;->l()V

    return-void
.end method
