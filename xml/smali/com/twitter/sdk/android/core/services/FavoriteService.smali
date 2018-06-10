.class public interface abstract Lcom/twitter/sdk/android/core/services/FavoriteService;
.super Ljava/lang/Object;
.source "FavoriteService.java"


# virtual methods
.method public abstract create(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "include_entities"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract destroy(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "include_entities"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract list(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "screen_name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "since_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "max_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_entities"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
