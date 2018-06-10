.class interface abstract Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ScribeService"
.end annotation


# virtual methods
.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "version"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "log[]"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/{version}/jot/{type}"
    .end annotation
.end method

.method public abstract uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Path;
            value = "sequence"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "log[]"
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
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/scribe/{sequence}"
    .end annotation
.end method
