.class interface abstract Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;
.super Ljava/lang/Object;
.source "ShareEmailClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/ShareEmailClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EmailService"
.end annotation


# virtual methods
.method public abstract verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "include_entities"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit2/http/Query;
            value = "skip_status"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/account/verify_credentials.json?include_email=true"
    .end annotation
.end method
