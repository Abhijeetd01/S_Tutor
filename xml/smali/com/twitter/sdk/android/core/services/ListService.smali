.class public interface abstract Lcom/twitter/sdk/android/core/services/ListService;
.super Ljava/lang/Object;
.source "ListService.java"


# virtual methods
.method public abstract statuses(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "list_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "slug"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "owner_screen_name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "owner_id"
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
            value = "count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_entities"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_rts"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
