.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;
.super Ljava/lang/Object;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OAuth2Api"
.end annotation


# virtual methods
.method public abstract getAppAuthToken(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Field;
            value = "grant_type"
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
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
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
        value = "/oauth2/token"
    .end annotation
.end method

.method public abstract getGuestToken(Ljava/lang/String;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/GuestTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/1.1/guest/activate.json"
    .end annotation
.end method
