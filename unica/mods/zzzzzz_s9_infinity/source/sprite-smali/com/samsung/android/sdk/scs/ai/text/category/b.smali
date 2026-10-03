.class public final synthetic Lcom/samsung/android/sdk/scs/ai/text/category/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->a:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->a:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v0, Lo0/e;

    iget-object v0, v0, Lo0/e;->h:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lw0/s;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lw0/s;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;->a(Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;->b(Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$RequestType;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;->a(Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$RequestType;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;->a(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/b;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;->b(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
