.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaService;
.super Ljava/lang/Object;
.source "MediaService.java"


# virtual methods
.method public abstract upload(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Part;
            value = "media"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Part;
            value = "media_data"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Part;
            value = "additional_owners"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
