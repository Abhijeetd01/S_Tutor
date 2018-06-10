.class public interface abstract Lcom/twitter/sdk/android/tweetcomposer/StatusesService;
.super Ljava/lang/Object;
.source "StatusesService.java"


# virtual methods
.method public abstract update(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "status"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "card_uri"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
        value = "/1.1/statuses/update.json"
    .end annotation
.end method
