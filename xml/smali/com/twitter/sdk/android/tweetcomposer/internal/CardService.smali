.class public interface abstract Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;
.super Ljava/lang/Object;
.source "CardService.java"


# virtual methods
.method public abstract create(Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "card_data"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/tweetcomposer/internal/CardCreate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "https://caps.twitter.com/v2/cards/create.json"
    .end annotation
.end method
