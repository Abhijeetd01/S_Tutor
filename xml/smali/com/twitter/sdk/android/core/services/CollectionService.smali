.class public interface abstract Lcom/twitter/sdk/android/core/services/CollectionService;
.super Ljava/lang/Object;
.source "CollectionService.java"


# virtual methods
.method public abstract collection(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "max_position"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "min_position"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/internal/TwitterCollection;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
