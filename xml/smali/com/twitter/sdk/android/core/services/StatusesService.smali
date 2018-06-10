.class public interface abstract Lcom/twitter/sdk/android/core/services/StatusesService;
.super Ljava/lang/Object;
.source "StatusesService.java"


# virtual methods
.method public abstract destroy(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "trim_user"
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
        value = "/1.1/statuses/destroy/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract homeTimeline(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
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
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "exclude_replies"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "contributor_details"
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/statuses/home_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract lookup(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_entities"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "map"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/statuses/lookup.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract mentionsTimeline(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
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
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "contributor_details"
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/statuses/mentions_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract retweet(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "trim_user"
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
        value = "/1.1/statuses/retweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract retweetsOfMe(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
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
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_entities"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_user_entities"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/statuses/retweets_of_me.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract show(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_my_retweet"
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
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract unretweet(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "trim_user"
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
        value = "/1.1/statuses/unretweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "status"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "in_reply_to_status_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "possibly_sensitive"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "lat"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "long"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "place_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "display_cooridnates"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "media_ids"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
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
        value = "/1.1/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method

.method public abstract userTimeline(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
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
            value = "trim_user"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "exclude_replies"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "contributor_details"
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
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
        value = "/1.1/statuses/user_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
