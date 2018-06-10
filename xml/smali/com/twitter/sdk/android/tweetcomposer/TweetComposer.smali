.class public Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
.super Lio/fabric/sdk/android/Kit;
.source "TweetComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/DependsOn;
    value = {
        Lcom/twitter/sdk/android/core/TwitterCore;
    }
.end annotation


# static fields
.field private static final KIT_SCRIBE_NAME:Ljava/lang/String; = "TweetComposer"

.field private static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIME_TYPE_PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field private static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"

.field private static final WEB_INTENT:Ljava/lang/String; = "https://twitter.com/intent/tweet?text=%s&url=%s"


# instance fields
.field advertisingId:Ljava/lang/String;

.field private final apiClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/Session;",
            "Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;",
            ">;"
        }
    .end annotation
.end field

.field guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field private scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

.field sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .line 63
    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    .prologue
    .line 107
    const-class v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->checkInitialized()V

    .line 99
    const-class v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 7

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->advertisingId:Ljava/lang/String;

    .line 79
    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const-string v2, "TweetComposer"

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lio/fabric/sdk/android/services/common/IdManager;)V

    invoke-direct {v6, v0}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;)V

    iput-object v6, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;
    .locals 2
    .parameter "session"

    .prologue
    .line 90
    invoke-static {}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->checkInitialized()V

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->apiClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.twitter.sdk.android:tweet-composer"

    return-object v0
.end method

.method protected getScribeClient()Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "2.0.0.142"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 72
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getGuestSessionProvider()Lcom/twitter/sdk/android/core/GuestSessionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 73
    invoke-super {p0}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z

    move-result v0

    return v0
.end method
