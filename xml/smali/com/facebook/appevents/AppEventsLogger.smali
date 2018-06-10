.class public Lcom/facebook/appevents/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;,
        Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;,
        Lcom/facebook/appevents/AppEventsLogger$AppEvent;,
        Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;,
        Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;,
        Lcom/facebook/appevents/AppEventsLogger$FlushResult;,
        Lcom/facebook/appevents/AppEventsLogger$FlushReason;,
        Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;,
        Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isActivateAppEventRequested:Z

.field private static isOpenedByApplink:Z

.field private static requestInFlight:Z

.field private static sourceApplication:Ljava/lang/String;

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    .line 186
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2
    .parameter "context"
    .parameter "applicationId"
    .parameter "accessToken"

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    .line 656
    if-nez p3, :cond_0

    .line 657
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 661
    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    .line 662
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    :cond_1
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 673
    :goto_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 678
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 681
    return-void

    .line 667
    :cond_3
    if-nez p2, :cond_4

    .line 668
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 670
    :cond_4
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLogger;->handleResponse(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V

    return-void
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionSuspendEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->flushAndWait(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->flushIfNecessary()V

    return-void
.end method

.method private static accumulatePersistedEvents()I
    .locals 7

    .prologue
    .line 1029
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    move-result-object v2

    .line 1031
    .local v2, persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    const/4 v3, 0x0

    .line 1032
    .local v3, result:I
    invoke-virtual {v2}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 1033
    .local v0, accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    sget-object v6, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 1034
    invoke-static {v6, v0}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v4

    .line 1036
    .local v4, sessionEventsState:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    invoke-virtual {v2, v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    .line 1037
    .local v1, events:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    invoke-virtual {v4, v1}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    .line 1038
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 1039
    goto :goto_0

    .line 1041
    .end local v0           #accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    .end local v1           #events:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    .end local v4           #sessionEventsState:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :cond_0
    return v3
.end method

.method public static activateApp(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 267
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 268
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 280
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 281
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Both context and applicationId must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_1
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    move-object v4, p0

    .line 285
    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/facebook/appevents/AppEventsLogger;->setSourceApplication(Landroid/app/Activity;)V

    .line 297
    :goto_0
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    new-instance v2, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 300
    .local v2, logger:Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    .local v0, eventTime:J
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getSourceApplication()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, sourceApplicationInfo:Ljava/lang/String;
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$1;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/facebook/appevents/AppEventsLogger$1;-><init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void

    .line 288
    .end local v0           #eventTime:J
    .end local v2           #logger:Lcom/facebook/appevents/AppEventsLogger;
    .end local v3           #sourceApplicationInfo:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 289
    const-class v4, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/appevents/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    .locals 12
    .parameter "reason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$FlushReason;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    .prologue
    .local p1, keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;>;"
    const/4 v6, 0x0

    .line 877
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;

    invoke-direct {v1, v6}, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/appevents/AppEventsLogger$1;)V

    .line 879
    .local v1, flushResults:Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    sget-object v7, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 881
    .local v2, limitEventUsage:Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v4, requestsToExecute:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 883
    .local v0, accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v5

    .line 884
    .local v5, sessionEventsState:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    if-eqz v5, :cond_0

    .line 888
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/appevents/AppEventsLogger;->buildRequestForSession(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;ZLcom/facebook/appevents/AppEventsLogger$FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 893
    .local v3, request:Lcom/facebook/GraphRequest;
    if-eqz v3, :cond_0

    .line 894
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 898
    .end local v0           #accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    .end local v3           #request:Lcom/facebook/GraphRequest;
    .end local v5           #sessionEventsState:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 899
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 900
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 901
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 899
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest;

    .line 906
    .restart local v3       #request:Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    goto :goto_1

    .end local v3           #request:Lcom/facebook/GraphRequest;
    :cond_2
    move-object v1, v6

    .line 911
    .end local v1           #flushResults:Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    :cond_3
    return-object v1
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;ZLcom/facebook/appevents/AppEventsLogger$FlushStatistics;)Lcom/facebook/GraphRequest;
    .locals 9
    .parameter "accessTokenAppId"
    .parameter "sessionEventsState"
    .parameter "limitEventUsage"
    .parameter "flushState"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 924
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, applicationId:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 929
    .local v1, fetchedAppSettings:Lcom/facebook/internal/Utility$FetchedAppSettings;
    const-string v6, "%s/activities"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    .line 931
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 929
    invoke-static {v5, v6, v5, v5}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 935
    .local v3, postRequest:Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 936
    .local v4, requestParameters:Landroid/os/Bundle;
    if-nez v4, :cond_0

    .line 937
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #requestParameters:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 939
    .restart local v4       #requestParameters:Landroid/os/Bundle;
    :cond_0
    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v3, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 942
    if-nez v1, :cond_1

    move-object v3, v5

    .line 964
    .end local v3           #postRequest:Lcom/facebook/GraphRequest;
    :goto_0
    return-object v3

    .line 948
    .restart local v3       #postRequest:Lcom/facebook/GraphRequest;
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v6

    .line 946
    invoke-virtual {p1, v3, v6, p2}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;ZZ)I

    move-result v2

    .line 951
    .local v2, numEvents:I
    if-nez v2, :cond_2

    move-object v3, v5

    .line 952
    goto :goto_0

    .line 955
    :cond_2
    iget v5, p3, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    add-int/2addr v5, v2

    iput v5, p3, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 957
    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$7;

    invoke-direct {v5, p0, v3, p1, p3}, Lcom/facebook/appevents/AppEventsLogger$7;-><init>(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V

    invoke-virtual {v3, v5}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_0
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 322
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 334
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 335
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Both context and applicationId must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 340
    new-instance v2, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 341
    .local v2, logger:Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    .local v0, eventTime:J
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/facebook/appevents/AppEventsLogger$2;

    invoke-direct {v4, v2, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$2;-><init>(Lcom/facebook/appevents/AppEventsLogger;J)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method static eagerFlush()V
    .locals 2

    .prologue
    .line 771
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 772
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 774
    :cond_0
    return-void
.end method

.method private static flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 834
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$6;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsLogger$6;-><init>(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method

.method private static flushAndWait(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 845
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 846
    :try_start_0
    sget-boolean v4, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    if-eqz v4, :cond_1

    .line 847
    monitor-exit v5

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    .line 850
    new-instance v3, Ljava/util/HashSet;

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 851
    .local v3, keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->accumulatePersistedEvents()I

    .line 855
    const/4 v1, 0x0

    .line 857
    .local v1, flushResults:Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    :try_start_1
    invoke-static {p0, v3}, Lcom/facebook/appevents/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/appevents/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 862
    :goto_1
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 863
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    .line 864
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 866
    if-eqz v1, :cond_0

    .line 867
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v5, v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v5, v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 870
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 851
    .end local v1           #flushResults:Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 858
    .restart local v1       #flushResults:Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    .restart local v3       #keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v5, "Caught unexpected exception while flushing: "

    invoke-static {v4, v5, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 864
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private static flushIfNecessary()V
    .locals 3

    .prologue
    .line 777
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v2, :cond_0

    .line 779
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAccumulatedEventCount()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 780
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 783
    :cond_0
    monitor-exit v1

    .line 784
    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAccumulatedEventCount()I
    .locals 5

    .prologue
    .line 787
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, result:I
    :try_start_0
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 791
    .local v1, state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 792
    goto :goto_0

    .line 793
    .end local v1           #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :cond_0
    monitor-exit v3

    return v0

    .line 794
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 1133
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1134
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1135
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1137
    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1140
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1141
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XZ"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1145
    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1146
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "anonymousAppDeviceGUID"

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1147
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1148
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1151
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    :cond_1
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    return-object v1

    .line 1151
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2

    .prologue
    .line 440
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .locals 7
    .parameter "context"
    .parameter "accessTokenAppId"

    .prologue
    .line 804
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 805
    .local v2, state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    const/4 v1, 0x0

    .line 806
    .local v1, attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v2, :cond_0

    .line 809
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 812
    :cond_0
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 814
    :try_start_0
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-object v2, v0

    .line 815
    if-nez v2, :cond_1

    .line 816
    new-instance v3, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 819
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v4, v6}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    .end local v2           #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .local v3, state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :try_start_1
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 822
    .end local v3           #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .restart local v2       #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :cond_1
    :try_start_2
    monitor-exit v5

    return-object v2

    .line 823
    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2           #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .restart local v3       #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .restart local v2       #state:Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    goto :goto_0
.end method

.method private static getSessionEventsState(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .locals 2
    .parameter "accessTokenAppId"

    .prologue
    .line 827
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 828
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    monitor-exit v1

    return-object v0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getSourceApplication()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1110
    const-string v0, "Unclassified"

    .line 1111
    .local v0, openType:Ljava/lang/String;
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    if-eqz v1, :cond_0

    .line 1112
    const-string v0, "Applink"

    .line 1114
    :cond_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .end local v0           #openType:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V
    .locals 15
    .parameter "accessTokenAppId"
    .parameter "request"
    .parameter "response"
    .parameter "sessionEventsState"
    .parameter "flushState"

    .prologue
    .line 973
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 974
    .local v2, error:Lcom/facebook/FacebookRequestError;
    const-string v8, "Success"

    .line 976
    .local v8, resultDescription:Ljava/lang/String;
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    .line 978
    .local v5, flushResult:Lcom/facebook/appevents/AppEventsLogger$FlushResult;
    if-eqz v2, :cond_0

    .line 979
    const/4 v1, -0x1

    .line 980
    .local v1, NO_CONNECTIVITY_ERROR_CODE:I
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 981
    const-string v8, "Failed: No Connectivity"

    .line 982
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    .line 991
    .end local v1           #NO_CONNECTIVITY_ERROR_CODE:I
    :cond_0
    :goto_0
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v9}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 992
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 996
    .local v3, eventsJsonString:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 997
    .local v6, jsonArray:Lorg/json/JSONArray;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1002
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .local v7, prettyPrintedEvents:Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v10, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v11, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 1004
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    .line 1002
    invoke-static {v9, v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    .end local v3           #eventsJsonString:Ljava/lang/String;
    .end local v7           #prettyPrintedEvents:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_5

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    .line 1011
    sget-object v9, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-ne v5, v9, :cond_2

    .line 1017
    sget-object v9, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v9, p0, v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;)V

    .line 1020
    :cond_2
    sget-object v9, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-eq v5, v9, :cond_3

    .line 1022
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    sget-object v10, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-eq v9, v10, :cond_3

    .line 1023
    move-object/from16 v0, p4

    iput-object v5, v0, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    .line 1026
    :cond_3
    return-void

    .line 984
    .restart local v1       #NO_CONNECTIVITY_ERROR_CODE:I
    :cond_4
    const-string v9, "Failed:\n  Response: %s\n  Error %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 985
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 986
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 984
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 987
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    goto :goto_0

    .line 998
    .end local v1           #NO_CONNECTIVITY_ERROR_CODE:I
    .restart local v3       #eventsJsonString:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 999
    .local v4, exc:Lorg/json/JSONException;
    const-string v7, "<Can\'t encode events for debug logging>"

    .restart local v7       #prettyPrintedEvents:Ljava/lang/String;
    goto :goto_1

    .line 1009
    .end local v3           #eventsJsonString:Ljava/lang/String;
    .end local v4           #exc:Lorg/json/JSONException;
    .end local v7           #prettyPrintedEvents:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private static initializeTimersIfNeeded()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 684
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 685
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 686
    monitor-exit v4

    .line 728
    .local v1, flushRunnable:Ljava/lang/Runnable;
    .local v5, attributionRecheckRunnable:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 688
    .end local v1           #flushRunnable:Ljava/lang/Runnable;
    .end local v5           #attributionRecheckRunnable:Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 689
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLogger$3;-><init>()V

    .line 700
    .restart local v1       #flushRunnable:Ljava/lang/Runnable;
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 707
    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$4;

    invoke-direct {v5}, Lcom/facebook/appevents/AppEventsLogger$4;-><init>()V

    .line 722
    .restart local v5       #attributionRecheckRunnable:Ljava/lang/Runnable;
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v8, 0x15180

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v2

    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 689
    .end local v1           #flushRunnable:Ljava/lang/Runnable;
    .end local v5           #attributionRecheckRunnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logAppSessionResumeEvent(JLjava/lang/String;)V
    .locals 7
    .parameter "eventTime"
    .parameter "sourceApplicationInfo"

    .prologue
    .line 351
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onResume(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 357
    return-void
.end method

.method private logAppSessionSuspendEvent(J)V
    .locals 3
    .parameter "eventTime"

    .prologue
    .line 360
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 361
    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AppEvent;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)V
    .locals 3
    .parameter "context"
    .parameter "event"
    .parameter "accessTokenAppId"

    .prologue
    .line 747
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/appevents/AppEventsLogger$5;-><init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 757
    #getter for: Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->access$800(Lcom/facebook/appevents/AppEventsLogger$AppEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 759
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"
    .parameter "isImplicitlyLogged"

    .prologue
    .line 735
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 741
    .local v0, event:Lcom/facebook/appevents/AppEventsLogger$AppEvent;
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AppEvent;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)V

    .line 742
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 373
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .parameter "context"
    .parameter "accessToken"

    .prologue
    .line 385
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 418
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 1
    .parameter "context"
    .parameter "applicationId"
    .parameter "accessToken"

    .prologue
    .line 404
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1050
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public static onContextStop()V
    .locals 2

    .prologue
    .line 597
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 598
    return-void
.end method

.method static resetSourceApplication()V
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1123
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .locals 2
    .parameter "flushBehavior"

    .prologue
    .line 452
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 454
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setSourceApplication(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x1

    .line 1058
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1059
    .local v3, callingApplication:Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 1060
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1061
    .local v4, callingApplicationPackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1063
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 1101
    .end local v4           #callingApplicationPackage:Ljava/lang/String;
    :goto_0
    return-void

    .line 1066
    .restart local v4       #callingApplicationPackage:Ljava/lang/String;
    :cond_0
    sput-object v4, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1072
    .end local v4           #callingApplicationPackage:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1073
    .local v5, openIntent:Landroid/content/Intent;
    if-eqz v5, :cond_2

    const-string v6, "_fbSourceApplicationHasBeenSet"

    const/4 v7, 0x0

    .line 1074
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1075
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_0

    .line 1079
    :cond_3
    invoke-static {v5}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1081
    .local v0, applinkData:Landroid/os/Bundle;
    if-nez v0, :cond_4

    .line 1082
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_0

    .line 1086
    :cond_4
    sput-boolean v8, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1088
    const-string v6, "referer_app_link"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1090
    .local v1, applinkReferrerData:Landroid/os/Bundle;
    if-nez v1, :cond_5

    .line 1091
    const/4 v6, 0x0

    sput-object v6, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    goto :goto_0

    .line 1095
    :cond_5
    const-string v6, "package"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, applinkReferrerPackage:Ljava/lang/String;
    sput-object v2, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1099
    const-string v6, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static setSourceApplication(Ljava/lang/String;Z)V
    .locals 0
    .parameter "applicationPackage"
    .parameter "openByAppLink"

    .prologue
    .line 1105
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1106
    sput-boolean p1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1107
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 585
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 586
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 2
    .parameter "accessToken"

    .prologue
    .line 606
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 607
    .local v0, other:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "eventName"

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 469
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .locals 2
    .parameter "eventName"
    .parameter "valueToSum"

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 487
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"

    .prologue
    .line 533
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 534
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "eventName"
    .parameter "parameters"

    .prologue
    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 509
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1
    .parameter "purchaseAmount"
    .parameter "currency"

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 547
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 4
    .parameter "purchaseAmount"
    .parameter "currency"
    .parameter "parameters"

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 578
    :goto_0
    return-void

    .line 566
    :cond_0
    if-nez p2, :cond_1

    .line 567
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_1
    if-nez p3, :cond_2

    .line 572
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 574
    .restart local p3
    :cond_2
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 577
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->eagerFlush()V

    goto :goto_0
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 616
    return-void
.end method
