.class public interface abstract Lcom/twitter/sdk/android/core/services/SearchService;
.super Ljava/lang/Object;
.source "SearchService.java"


# virtual methods
.method public abstract tweets(Ljava/lang/String;Lcom/twitter/sdk/android/core/services/params/Geocode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "q"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "geocode"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "locale"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "result_type"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "until"
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
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/services/params/Geocode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/Search;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
