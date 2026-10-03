.class public final synthetic Lcom/samsung/android/sdk/scs/ai/text/category/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public final synthetic b:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->a:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->a:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;->c(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
