.class public final Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation


# instance fields
.field public final tweetMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tweets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field public final userMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "users"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, tweetMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p2, userMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/twitter/sdk/android/core/models/User;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;->tweetMap:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;->userMap:Ljava/util/Map;

    .line 63
    return-void
.end method
