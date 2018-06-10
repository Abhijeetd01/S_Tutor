.class public Lcom/tune/Tune;
.super Ljava/lang/Object;
.source "Tune.java"


# static fields
.field private static volatile tune:Lcom/tune/Tune;


# instance fields
.field private final IV:Ljava/lang/String;

.field protected collectLocation:Z

.field private debugMode:Z

.field private dplinkr:Lcom/tune/TuneDeferredDplinkr;

.field private encryption:Lcom/tune/TuneEncryption;

.field protected eventQueue:Lcom/tune/TuneEventQueue;

.field private fbLogging:Z

.field private firstSession:Z

.field gotGaid:Z

.field gotReferrer:Z

.field private initTime:J

.field protected initialized:Z

.field protected isRegistered:Z

.field protected locationListener:Lcom/tune/location/TuneLocationListener;

.field protected mContext:Landroid/content/Context;

.field private mPreloadData:Lcom/tune/TunePreloadData;

.field protected networkStateReceiver:Landroid/content/BroadcastReceiver;

.field notifiedPool:Z

.field protected params:Lcom/tune/TuneParameters;

.field pool:Ljava/util/concurrent/ExecutorService;

.field protected pubQueue:Ljava/util/concurrent/ExecutorService;

.field private referrerTime:J

.field private tuneListener:Lcom/tune/TuneListener;

.field protected tuneRequest:Lcom/tune/TuneTestRequest;

.field private urlRequester:Lcom/tune/http/UrlRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "heF9BATUfWuISyO8"

    iput-object v0, p0, Lcom/tune/Tune;->IV:Ljava/lang/String;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/tune/Tune;Lcom/tune/TuneEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/tune/Tune;->measure(Lcom/tune/TuneEvent;)V

    return-void
.end method

.method static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 202
    const-class v0, Lcom/tune/Tune;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/tune/Tune;->tune:Lcom/tune/Tune;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v0

    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private firstInstall()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2065
    iget-object v3, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    const-string v4, "com.mobileapptracking"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2066
    .local v0, installed:Landroid/content/SharedPreferences;
    const-string v3, "mat_installed"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2071
    :goto_0
    return v1

    .line 2070
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "mat_installed"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v2

    .line 2071
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/tune/Tune;
    .locals 2

    .prologue
    .line 127
    const-class v0, Lcom/tune/Tune;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tune/Tune;->tune:Lcom/tune/Tune;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tune/Tune;
    .locals 2
    .parameter "context"
    .parameter "advertiserId"
    .parameter "conversionKey"

    .prologue
    .line 138
    const-class v0, Lcom/tune/Tune;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tune/Tune;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tune/Tune;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tune/Tune;
    .locals 2
    .parameter "context"
    .parameter "advertiserId"
    .parameter "conversionKey"
    .parameter "turnOnTMA"

    .prologue
    .line 150
    const-class v0, Lcom/tune/Tune;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/tune/Tune;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/tune/ma/configuration/TuneConfiguration;)Lcom/tune/Tune;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/tune/ma/configuration/TuneConfiguration;)Lcom/tune/Tune;
    .locals 3
    .parameter "context"
    .parameter "advertiserId"
    .parameter "conversionKey"
    .parameter "turnOnTMA"
    .parameter "configuration"

    .prologue
    .line 163
    const-class v1, Lcom/tune/Tune;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/tune/Tune;

    invoke-direct {v0}, Lcom/tune/Tune;-><init>()V

    sput-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    .line 165
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    .line 166
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    .line 168
    if-eqz p3, :cond_1

    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tune/TuneUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/tune/ma/eventbus/TuneEventBus;->enable()V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/tune/ma/TuneManager;->init(Landroid/content/Context;Lcom/tune/ma/configuration/TuneConfiguration;)Lcom/tune/ma/TuneManager;

    .line 178
    :goto_0
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    invoke-virtual {v0, p1, p2}, Lcom/tune/Tune;->initAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    new-instance v2, Lcom/tune/location/TuneLocationListener;

    invoke-direct {v2, p0}, Lcom/tune/location/TuneLocationListener;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tune/Tune;->locationListener:Lcom/tune/location/TuneLocationListener;

    .line 183
    if-eqz p4, :cond_0

    .line 184
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    invoke-virtual {p4}, Lcom/tune/ma/configuration/TuneConfiguration;->shouldAutoCollectDeviceLocation()Z

    move-result v2

    iput-boolean v2, v0, Lcom/tune/Tune;->collectLocation:Z

    .line 185
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    iget-boolean v0, v0, Lcom/tune/Tune;->collectLocation:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    iget-object v0, v0, Lcom/tune/Tune;->locationListener:Lcom/tune/location/TuneLocationListener;

    invoke-virtual {v0}, Lcom/tune/location/TuneLocationListener;->startListening()V

    .line 191
    :cond_0
    sget-object v0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 175
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tune/ma/eventbus/TuneEventBus;->disable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initLocalVariables(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    .line 254
    new-instance v0, Lcom/tune/http/TuneUrlRequester;

    invoke-direct {v0}, Lcom/tune/http/TuneUrlRequester;-><init>()V

    iput-object v0, p0, Lcom/tune/Tune;->urlRequester:Lcom/tune/http/UrlRequester;

    .line 255
    new-instance v0, Lcom/tune/TuneEncryption;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "heF9BATUfWuISyO8"

    invoke-direct {v0, v3, v4}, Lcom/tune/TuneEncryption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tune/Tune;->encryption:Lcom/tune/TuneEncryption;

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tune/Tune;->initTime:J

    .line 258
    iget-object v0, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    const-string v3, "com.mobileapptracking"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "mat_referrer"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tune/Tune;->gotReferrer:Z

    .line 259
    iput-boolean v1, p0, Lcom/tune/Tune;->firstSession:Z

    .line 260
    iput-boolean v2, p0, Lcom/tune/Tune;->initialized:Z

    .line 261
    iput-boolean v2, p0, Lcom/tune/Tune;->isRegistered:Z

    .line 262
    iput-boolean v2, p0, Lcom/tune/Tune;->debugMode:Z

    .line 263
    iput-boolean v2, p0, Lcom/tune/Tune;->fbLogging:Z

    .line 264
    iput-boolean v1, p0, Lcom/tune/Tune;->collectLocation:Z

    .line 265
    return-void

    :cond_0
    move v0, v2

    .line 258
    goto :goto_0
.end method

.method public static declared-synchronized isOnline(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 273
    const-class v3, Lcom/tune/Tune;

    monitor-enter v3

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 274
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 275
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private declared-synchronized measure(Lcom/tune/TuneEvent;)V
    .locals 10
    .parameter "eventData"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/tune/Tune;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 402
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/tune/Tune;->dumpQueue()V

    .line 360
    iget-object v6, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    const-string v7, "conversion"

    invoke-virtual {v6, v7}, Lcom/tune/TuneParameters;->setAction(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, eventName:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/tune/Tune;->fbLogging:Z

    if-eqz v6, :cond_2

    .line 364
    invoke-static {p1}, Lcom/tune/TuneFBBridge;->logEvent(Lcom/tune/TuneEvent;)V

    .line 366
    :cond_2
    const-string v6, "close"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    const-string v6, "open"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "install"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "update"

    .line 369
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "session"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    :cond_3
    iget-object v6, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    const-string v7, "session"

    invoke-virtual {v6, v7}, Lcom/tune/TuneParameters;->setAction(Ljava/lang/String;)V

    .line 374
    .end local v2           #eventName:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getRevenue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    .line 375
    iget-object v6, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/tune/TuneParameters;->setIsPayingUser(Ljava/lang/String;)V

    .line 378
    :cond_5
    iget-object v6, p0, Lcom/tune/Tune;->mPreloadData:Lcom/tune/TunePreloadData;

    iget-boolean v7, p0, Lcom/tune/Tune;->debugMode:Z

    invoke-static {p1, v6, v7}, Lcom/tune/TuneUrlBuilder;->buildLink(Lcom/tune/TuneEvent;Lcom/tune/TunePreloadData;Z)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, link:Ljava/lang/String;
    invoke-static {p1}, Lcom/tune/TuneUrlBuilder;->buildDataUnencrypted(Lcom/tune/TuneEvent;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, data:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 381
    .local v1, eventItemsJson:Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventItems()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 382
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 383
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tune/TuneEventItem;

    invoke-virtual {v6}, Lcom/tune/TuneEventItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 386
    .end local v3           #i:I
    :cond_6
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getReceiptData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getReceiptSignature()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v8}, Lcom/tune/TuneParameters;->getUserEmails()Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v1, v6, v7, v8}, Lcom/tune/TuneUrlBuilder;->buildBody(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v5

    .line 388
    .local v5, postBody:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/tune/Tune;->tuneRequest:Lcom/tune/TuneTestRequest;

    if-eqz v6, :cond_7

    .line 389
    iget-object v6, p0, Lcom/tune/Tune;->tuneRequest:Lcom/tune/TuneTestRequest;

    invoke-interface {v6, v4, v0, v5}, Lcom/tune/TuneTestRequest;->constructedRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 392
    :cond_7
    iget-boolean v6, p0, Lcom/tune/Tune;->firstSession:Z

    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/tune/Tune;->addEventToQueue(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 394
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tune/Tune;->firstSession:Z

    .line 395
    invoke-virtual {p0}, Lcom/tune/Tune;->dumpQueue()V

    .line 397
    iget-object v6, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    if-eqz v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getRefId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/tune/TuneListener;->enqueuedActionWithRefId(Ljava/lang/String;)V

    .line 399
    iget-object v6, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/tune/TuneListener;->enqueuedRequest(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 356
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #eventItemsJson:Lorg/json/JSONArray;
    .end local v4           #link:Ljava/lang/String;
    .end local v5           #postBody:Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V
    .locals 7
    .parameter "actionId"
    .parameter "friendlyName"
    .parameter "description"
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tune/ma/model/TuneDeepActionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1722
    .local p4, defaultData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "registerDeepAction"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManagerForUser(Ljava/lang/String;)Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1726
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManager()Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tune/ma/deepactions/TuneDeepActionManager;->registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V

    goto :goto_0
.end method

.method private registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V
    .locals 7
    .parameter "actionId"
    .parameter "friendlyName"
    .parameter "description"
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/tune/ma/model/TuneDeepActionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1743
    .local p4, defaultData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, approvedValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "registerDeepAction"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManagerForUser(Ljava/lang/String;)Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManager()Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tune/ma/deepactions/TuneDeepActionManager;->registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V

    goto :goto_0
.end method

.method private registerPowerHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "hookId"
    .parameter "friendlyName"
    .parameter "defaultValue"
    .parameter "description"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1612
    .local p5, approvedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "registerPowerHook"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManagerForUser(Ljava/lang/String;)Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1617
    :goto_0
    return-void

    .line 1616
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManager()Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tune/ma/powerhooks/TunePowerHookManager;->registerPowerHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private requestDeeplink()V
    .locals 3

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0}, Lcom/tune/TuneDeferredDplinkr;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    iget-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v1}, Lcom/tune/TuneParameters;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tune/TuneDeferredDplinkr;->setUserAgent(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    iget-object v1, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tune/Tune;->urlRequester:Lcom/tune/http/UrlRequester;

    invoke-virtual {v0, v1, v2}, Lcom/tune/TuneDeferredDplinkr;->checkForDeferredDeeplink(Landroid/content/Context;Lcom/tune/http/UrlRequester;)V

    .line 2061
    :cond_0
    return-void
.end method

.method static setInstance(Lcom/tune/Tune;)V
    .locals 0
    .parameter "newTune"

    .prologue
    .line 195
    sput-object p0, Lcom/tune/Tune;->tune:Lcom/tune/Tune;

    .line 196
    return-void
.end method


# virtual methods
.method protected addEventToQueue(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 7
    .parameter "link"
    .parameter "data"
    .parameter "postBody"
    .parameter "firstSession"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v6, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tune/TuneEventQueue$Add;

    iget-object v1, p0, Lcom/tune/Tune;->eventQueue:Lcom/tune/TuneEventQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tune/TuneEventQueue$Add;-><init>(Lcom/tune/TuneEventQueue;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkForDeferredDeeplink(Lcom/tune/TuneDeeplinkListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2041
    invoke-virtual {p0, p1}, Lcom/tune/Tune;->setDeeplinkListener(Lcom/tune/TuneDeeplinkListener;)V

    .line 2042
    invoke-direct {p0}, Lcom/tune/Tune;->firstInstall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2043
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tune/TuneDeferredDplinkr;->enable(Z)V

    .line 2050
    :goto_0
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0}, Lcom/tune/TuneDeferredDplinkr;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0}, Lcom/tune/TuneDeferredDplinkr;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2051
    :cond_0
    invoke-direct {p0}, Lcom/tune/Tune;->requestDeeplink()V

    .line 2053
    :cond_1
    return-void

    .line 2045
    :cond_2
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tune/TuneDeferredDplinkr;->enable(Z)V

    .line 2046
    const-string v0, "Not first install, not checking for deferred deeplink"

    invoke-interface {p1, v0}, Lcom/tune/TuneDeeplinkListener;->didFailDeeplink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearAllCustomProfileVariables()V
    .locals 1

    .prologue
    .line 2628
    const-string v0, "clearAllCustomProfileVariables"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2633
    :goto_0
    return-void

    .line 2632
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/profile/TuneUserProfile;->clearAllCustomProfileVariables()V

    goto :goto_0
.end method

.method public clearCustomProfileVariable(Ljava/lang/String;)V
    .locals 1
    .parameter "variableName"

    .prologue
    .line 2610
    const-string v0, "clearCustomProfileVariable"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2615
    :goto_0
    return-void

    .line 2614
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/profile/TuneUserProfile;->clearCertainCustomProfileVariable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didSessionStartFromTunePush()Z
    .locals 1

    .prologue
    .line 1981
    const-string v0, "didSessionStartFromTunePush"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1982
    const/4 v0, 0x0

    .line 1985
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/push/TunePushManager;->didOpenFromTunePushThisSession()Z

    move-result v0

    goto :goto_0
.end method

.method public didUserManuallyDisablePush()Z
    .locals 1

    .prologue
    .line 1964
    const-string v0, "didUserManuallyDisablePush"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1965
    const/4 v0, 0x0

    .line 1968
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/push/TunePushManager;->didUserManuallyDisablePush()Z

    move-result v0

    goto :goto_0
.end method

.method protected dumpQueue()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tune/Tune;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/TuneEventQueue$Dump;

    iget-object v2, p0, Lcom/tune/Tune;->eventQueue:Lcom/tune/TuneEventQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/tune/TuneEventQueue$Dump;-><init>(Lcom/tune/TuneEventQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public executeDeepAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "activity"
    .parameter "actionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1702
    .local p3, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "executeDeepAction"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManagerForUser(Ljava/lang/String;)Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1706
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManager()Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tune/ma/deepactions/TuneDeepActionManager;->executeDeepAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 6

    .prologue
    .line 515
    iget-object v3, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v3}, Lcom/tune/TuneParameters;->getAge()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, ageString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 517
    .local v0, age:I
    if-eqz v1, :cond_0

    .line 519
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v3, "TUNE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing age value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAltitude()D
    .locals 7

    .prologue
    .line 536
    iget-object v4, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v4}, Lcom/tune/TuneParameters;->getAltitude()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, altitudeString:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 538
    .local v0, altitude:D
    if-eqz v2, :cond_0

    .line 540
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 545
    :cond_0
    :goto_0
    return-wide v0

    .line 541
    :catch_0
    move-exception v3

    .line 542
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v4, "TUNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing altitude value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppAdTrackingEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 561
    iget-object v4, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v4}, Lcom/tune/TuneParameters;->getAppAdTrackingEnabled()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, appAdTrackingEnabledString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 563
    .local v0, adTrackingEnabled:I
    if-eqz v1, :cond_0

    .line 565
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 571
    :cond_0
    :goto_0
    if-ne v0, v3, :cond_1

    :goto_1
    return v3

    .line 566
    :catch_0
    move-exception v2

    .line 567
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "TUNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing adTrackingEnabled value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 571
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2590
    const-string v0, "getAppId"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2591
    const/4 v0, 0x0

    .line 2594
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/profile/TuneUserProfile;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()I
    .locals 6

    .prologue
    .line 587
    iget-object v3, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v3}, Lcom/tune/TuneParameters;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, appVersionString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 589
    .local v0, appVersion:I
    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 592
    :catch_0
    move-exception v2

    .line 593
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v3, "TUNE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing appVersion value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProfileDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "variableName"

    .prologue
    const/4 v1, 0x0

    .line 2527
    const-string v2, "getCustomProfileDate"

    invoke-static {v2}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2535
    :cond_0
    :goto_0
    return-object v1

    .line 2531
    :cond_1
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tune/ma/profile/TuneUserProfile;->getCustomProfileVariable(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v0

    .line 2532
    .local v0, var:Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;
    if-eqz v0, :cond_0

    .line 2535
    invoke-virtual {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomProfileGeolocation(Ljava/lang/String;)Lcom/tune/TuneLocation;
    .locals 3
    .parameter "variableName"

    .prologue
    const/4 v1, 0x0

    .line 2573
    const-string v2, "getCustomProfileGeolocation"

    invoke-static {v2}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2581
    :cond_0
    :goto_0
    return-object v1

    .line 2577
    :cond_1
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tune/ma/profile/TuneUserProfile;->getCustomProfileVariable(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v0

    .line 2578
    .local v0, var:Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;
    if-eqz v0, :cond_0

    .line 2581
    invoke-virtual {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->stringToGeolocation(Ljava/lang/String;)Lcom/tune/TuneLocation;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomProfileNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .parameter "variableName"

    .prologue
    const/4 v1, 0x0

    .line 2550
    const-string v2, "getCustomProfileNumber"

    invoke-static {v2}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-object v1

    .line 2554
    :cond_1
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tune/ma/profile/TuneUserProfile;->getCustomProfileVariable(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v0

    .line 2555
    .local v0, var:Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2558
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCustomProfileString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "variableName"

    .prologue
    const/4 v1, 0x0

    .line 2504
    const-string v2, "getCustomProfileString"

    invoke-static {v2}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2512
    :cond_0
    :goto_0
    return-object v1

    .line 2508
    :cond_1
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tune/ma/profile/TuneUserProfile;->getCustomProfileVariable(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v0

    .line 2509
    .local v0, var:Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;
    if-eqz v0, :cond_0

    .line 2512
    invoke-virtual {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1948
    const-string v0, "getDeviceToken"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1949
    const/4 v0, 0x0

    .line 1952
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/push/TunePushManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExistingUser()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-object v2, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v2}, Lcom/tune/TuneParameters;->getExistingUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 662
    .local v0, intExisting:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFacebookUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getFacebookUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/tune/TuneGender;
    .locals 2

    .prologue
    .line 678
    iget-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v1}, Lcom/tune/TuneParameters;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, gender:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    sget-object v1, Lcom/tune/TuneGender;->MALE:Lcom/tune/TuneGender;

    .line 684
    :goto_0
    return-object v1

    .line 681
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    sget-object v1, Lcom/tune/TuneGender;->FEMALE:Lcom/tune/TuneGender;

    goto :goto_0

    .line 684
    :cond_1
    sget-object v1, Lcom/tune/TuneGender;->UNKNOWN:Lcom/tune/TuneGender;

    goto :goto_0
.end method

.method public getGoogleAdTrackingLimited()Z
    .locals 6

    .prologue
    .line 701
    iget-object v3, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v3}, Lcom/tune/TuneParameters;->getGoogleAdTrackingLimited()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, googleAdTrackingLimitedString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 704
    .local v1, googleAdTrackingLimited:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 709
    :goto_0
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "TUNE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing googleAdTrackingLimited value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 709
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getGoogleAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getGoogleUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppMessageExperimentDetails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tune/ma/experiments/model/TuneInAppMessageExperimentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    const-string v0, "getInAppMessageExperimentDetails"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getExperimentManagerForUser(Ljava/lang/String;)Lcom/tune/ma/experiments/TuneExperimentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1784
    const/4 v0, 0x0

    .line 1787
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getExperimentManager()Lcom/tune/ma/experiments/TuneExperimentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/experiments/TuneExperimentManager;->getInAppExperimentDetails()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallDate()J
    .locals 7

    .prologue
    .line 725
    iget-object v4, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v4}, Lcom/tune/TuneParameters;->getInstallDate()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, installDateString:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 727
    .local v2, installDate:J
    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 734
    :cond_0
    :goto_0
    return-wide v2

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TUNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing installDate value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInstallReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsPayingUser()Z
    .locals 2

    .prologue
    .line 750
    iget-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v1}, Lcom/tune/TuneParameters;->getIsPayingUser()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, isPayingUser:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastOpenLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getLastOpenLogId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 7

    .prologue
    .line 777
    iget-object v4, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v4}, Lcom/tune/TuneParameters;->getLatitude()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, latitudeString:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 779
    .local v2, latitude:D
    if-eqz v1, :cond_0

    .line 781
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 787
    :cond_0
    :goto_0
    return-wide v2

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TUNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing latitude value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 7

    .prologue
    .line 797
    iget-object v4, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v4}, Lcom/tune/TuneParameters;->getLongitude()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, longitudeString:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 799
    .local v2, longitude:D
    if-eqz v1, :cond_0

    .line 801
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 807
    :cond_0
    :goto_0
    return-wide v2

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TUNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing longitude value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getMCC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getMNC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getMatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getOpenLogId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerHookExperimentDetails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tune/ma/experiments/model/TunePowerHookExperimentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1765
    const-string v0, "getPowerHookExperimentDetails"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getExperimentManagerForUser(Ljava/lang/String;)Lcom/tune/ma/experiments/TuneExperimentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1766
    const/4 v0, 0x0

    .line 1769
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getExperimentManager()Lcom/tune/ma/experiments/TuneExperimentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/experiments/TuneExperimentManager;->getPhookExperimentDetails()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferralSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getReferralSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferralUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getReferralUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getScreenDensity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getScreenHeight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getScreenWidth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTRUSTeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getTRUSTeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTunePushInfoForSession()Lcom/tune/ma/push/TunePushInfo;
    .locals 1

    .prologue
    .line 1998
    const-string v0, "getTunePushInfoForSession"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1999
    const/4 v0, 0x0

    .line 2002
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/push/TunePushManager;->getLastOpenedPushInfo()Lcom/tune/ma/push/TunePushInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getTwitterUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getTwitterUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0}, Lcom/tune/TuneParameters;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueForHookById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hookId"

    .prologue
    .line 1629
    const-string v0, "getValueForHookById"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManagerForUser(Ljava/lang/String;)Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1630
    const/4 v0, 0x0

    .line 1633
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManager()Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/powerhooks/TunePowerHookManager;->getValueForHookById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "advertiserId"
    .parameter "conversionKey"

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v1, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/tune/TuneDeferredDplinkr;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tune/TuneDeferredDplinkr;

    move-result-object v1

    iput-object v1, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    .line 214
    iget-object v1, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, p2}, Lcom/tune/TuneParameters;->init(Lcom/tune/Tune;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tune/TuneParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    .line 216
    invoke-direct {p0, p2}, Lcom/tune/Tune;->initLocalVariables(Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/tune/TuneEventQueue;

    iget-object v2, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/tune/TuneEventQueue;-><init>(Landroid/content/Context;Lcom/tune/Tune;)V

    iput-object v1, p0, Lcom/tune/Tune;->eventQueue:Lcom/tune/TuneEventQueue;

    .line 220
    invoke-virtual {p0}, Lcom/tune/Tune;->dumpQueue()V

    .line 223
    new-instance v1, Lcom/tune/Tune$1;

    invoke-direct {v1, p0}, Lcom/tune/Tune$1;-><init>(Lcom/tune/Tune;)V

    iput-object v1, p0, Lcom/tune/Tune;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    iget-boolean v1, p0, Lcom/tune/Tune;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tune/Tune;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tune/Tune;->isRegistered:Z

    .line 241
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tune/Tune;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tune/Tune;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iput-boolean v3, p0, Lcom/tune/Tune;->isRegistered:Z

    .line 245
    iput-boolean v3, p0, Lcom/tune/Tune;->initialized:Z

    .line 246
    return-void

    .line 236
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isInDebugMode()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/tune/Tune;->debugMode:Z

    return v0
.end method

.method public isUserInAnySegmentIds(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2028
    .local p1, segmentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "isUserInAnySegmentIds"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManagerForUser(Ljava/lang/String;)Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2029
    const/4 v0, 0x0

    .line 2032
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManager()Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/playlist/TunePlaylistManager;->isUserInAnySegmentIds(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUserInSegmentId(Ljava/lang/String;)Z
    .locals 1
    .parameter "segmentId"

    .prologue
    .line 2015
    const-string v0, "isUserInSegmentId"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManagerForUser(Ljava/lang/String;)Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2016
    const/4 v0, 0x0

    .line 2019
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManager()Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/playlist/TunePlaylistManager;->isUserInSegmentId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 11
    .parameter "link"
    .parameter "data"
    .parameter "postBody"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 410
    iget-boolean v9, p0, Lcom/tune/Tune;->debugMode:Z

    if-eqz v9, :cond_0

    const-string v9, "Sending event to server..."

    invoke-static {v9}, Lcom/tune/TuneUtils;->log(Ljava/lang/String;)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/tune/Tune;->updateLocation()V

    .line 415
    iget-object v9, p0, Lcom/tune/Tune;->encryption:Lcom/tune/TuneEncryption;

    invoke-static {p2, v9}, Lcom/tune/TuneUrlBuilder;->updateAndEncryptData(Ljava/lang/String;Lcom/tune/TuneEncryption;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, encData:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, fullLink:Ljava/lang/String;
    iget-object v9, p0, Lcom/tune/Tune;->urlRequester:Lcom/tune/http/UrlRequester;

    iget-boolean v10, p0, Lcom/tune/Tune;->debugMode:Z

    invoke-interface {v9, v3, p3, v10}, Lcom/tune/http/UrlRequester;->requestUrl(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 422
    .local v5, response:Lorg/json/JSONObject;
    if-nez v5, :cond_2

    .line 423
    iget-object v8, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    if-eqz v8, :cond_1

    .line 425
    iget-object v8, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    invoke-interface {v8, v5}, Lcom/tune/TuneListener;->didFailWithError(Lorg/json/JSONObject;)V

    .line 468
    :cond_1
    :goto_0
    return v7

    .line 431
    :cond_2
    const-string v9, "success"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 432
    iget-boolean v7, p0, Lcom/tune/Tune;->debugMode:Z

    if-eqz v7, :cond_3

    const-string v7, "Request failed, event will remain in queue"

    invoke-static {v7}, Lcom/tune/TuneUtils;->log(Ljava/lang/String;)V

    :cond_3
    move v7, v8

    .line 433
    goto :goto_0

    .line 437
    :cond_4
    iget-object v9, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    if-eqz v9, :cond_6

    .line 438
    const/4 v6, 0x0

    .line 440
    .local v6, success:Z
    :try_start_0
    const-string v9, "success"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_5

    .line 441
    const/4 v6, 0x1

    .line 448
    :cond_5
    if-eqz v6, :cond_8

    .line 449
    iget-object v8, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    invoke-interface {v8, v5}, Lcom/tune/TuneListener;->didSucceedWithData(Lorg/json/JSONObject;)V

    .line 457
    .end local v6           #success:Z
    :cond_6
    :goto_1
    :try_start_1
    const-string v8, "site_event_type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, eventType:Ljava/lang/String;
    const-string v8, "open"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    const-string v8, "log_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, logId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tune/Tune;->getOpenLogId()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 461
    iget-object v8, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v8, v4}, Lcom/tune/TuneParameters;->setOpenLogId(Ljava/lang/String;)V

    .line 463
    :cond_7
    iget-object v8, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v8, v4}, Lcom/tune/TuneParameters;->setLastOpenLogId(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 465
    .end local v2           #eventType:Ljava/lang/String;
    .end local v4           #logId:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 443
    .restart local v6       #success:Z
    :catch_1
    move-exception v0

    .line 444
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v7, v8

    .line 445
    goto :goto_0

    .line 451
    .end local v0           #e:Lorg/json/JSONException;
    :cond_8
    iget-object v8, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    invoke-interface {v8, v5}, Lcom/tune/TuneListener;->didFailWithError(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public measureEvent(I)V
    .locals 1
    .parameter "eventId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/tune/TuneEvent;

    invoke-direct {v0, p1}, Lcom/tune/TuneEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tune/Tune;->measureEvent(Lcom/tune/TuneEvent;)V

    .line 329
    return-void
.end method

.method public measureEvent(Lcom/tune/TuneEvent;)V
    .locals 2
    .parameter "eventData"

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tune/TuneEvent;->getEventId()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const-string v0, "TUNE"

    const-string v1, "Event name or ID cannot be null, empty, or zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v0, Lcom/tune/ma/eventbus/event/TuneEventOccurred;

    invoke-direct {v0, p1}, Lcom/tune/ma/eventbus/event/TuneEventOccurred;-><init>(Lcom/tune/TuneEvent;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p0}, Lcom/tune/Tune;->updateLocation()V

    .line 348
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$3;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$3;-><init>(Lcom/tune/Tune;Lcom/tune/TuneEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public measureEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "eventName"

    .prologue
    .line 319
    new-instance v0, Lcom/tune/TuneEvent;

    invoke-direct {v0, p1}, Lcom/tune/TuneEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tune/Tune;->measureEvent(Lcom/tune/TuneEvent;)V

    .line 320
    return-void
.end method

.method public measureSession()V
    .locals 3

    .prologue
    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tune/Tune;->notifiedPool:Z

    .line 303
    new-instance v1, Lcom/tune/TuneEvent;

    const-string v2, "session"

    invoke-direct {v1, v2}, Lcom/tune/TuneEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tune/Tune;->measureEvent(Lcom/tune/TuneEvent;)V

    .line 304
    iget-boolean v1, p0, Lcom/tune/Tune;->debugMode:Z

    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/tune/Tune$2;

    invoke-direct {v1, p0}, Lcom/tune/Tune$2;-><init>(Lcom/tune/Tune;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onFirstPlaylistDownloaded(Lcom/tune/ma/model/TuneCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1819
    const-string v0, "onFirstPlaylistDownloaded"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManagerForUser(Ljava/lang/String;)Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1824
    :goto_0
    return-void

    .line 1823
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManager()Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    sget-object v1, Lcom/tune/TuneConstants;->DEFAULT_FIRST_PLAYLIST_DOWNLOADED_TIMEOUT:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/tune/ma/playlist/TunePlaylistManager;->onFirstPlaylistDownloaded(Lcom/tune/ma/model/TuneCallback;J)V

    goto :goto_0
.end method

.method public onFirstPlaylistDownloaded(Lcom/tune/ma/model/TuneCallback;J)V
    .locals 2
    .parameter "callback"
    .parameter "timeout"

    .prologue
    .line 1855
    const-string v0, "onFirstPlaylistDownloaded"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManagerForUser(Ljava/lang/String;)Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1859
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPlaylistManager()Lcom/tune/ma/playlist/TunePlaylistManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tune/ma/playlist/TunePlaylistManager;->onFirstPlaylistDownloaded(Lcom/tune/ma/model/TuneCallback;J)V

    goto :goto_0
.end method

.method public onPowerHooksChanged(Lcom/tune/ma/model/TuneCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1665
    const-string v0, "onPowerHooksChanged"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManagerForUser(Ljava/lang/String;)Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1670
    :goto_0
    return-void

    .line 1669
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManager()Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/powerhooks/TunePowerHookManager;->onPowerHooksChanged(Lcom/tune/ma/model/TuneCallback;)V

    goto :goto_0
.end method

.method public registerCustomProfileDate(Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"

    .prologue
    .line 2189
    const-string v0, "registerCustomProfileDate"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2197
    :goto_0
    return-void

    .line 2193
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    .line 2194
    invoke-static {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->Builder(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    sget-object v2, Lcom/tune/ma/analytics/model/TuneVariableType;->DATETIME:Lcom/tune/ma/analytics/model/TuneVariableType;

    .line 2195
    invoke-virtual {v1, v2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withType(Lcom/tune/ma/analytics/model/TuneVariableType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    .line 2196
    invoke-virtual {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->build()Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v1

    .line 2193
    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2281
    const-string v0, "registerCustomProfileDate"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2286
    :goto_0
    return-void

    .line 2285
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileGeolocation(Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"

    .prologue
    .line 2236
    const-string v0, "registerCustomProfileGeolocation"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2244
    :goto_0
    return-void

    .line 2240
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    .line 2241
    invoke-static {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->Builder(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    sget-object v2, Lcom/tune/ma/analytics/model/TuneVariableType;->GEOLOCATION:Lcom/tune/ma/analytics/model/TuneVariableType;

    .line 2242
    invoke-virtual {v1, v2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withType(Lcom/tune/ma/analytics/model/TuneVariableType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    .line 2243
    invoke-virtual {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->build()Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v1

    .line 2240
    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileGeolocation(Ljava/lang/String;Lcom/tune/TuneLocation;)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2368
    const-string v0, "registerCustomProfileGeolocation"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2373
    :goto_0
    return-void

    .line 2372
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Lcom/tune/TuneLocation;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"

    .prologue
    .line 2213
    const-string v0, "registerCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2221
    :goto_0
    return-void

    .line 2217
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    .line 2218
    invoke-static {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->Builder(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    sget-object v2, Lcom/tune/ma/analytics/model/TuneVariableType;->FLOAT:Lcom/tune/ma/analytics/model/TuneVariableType;

    .line 2219
    invoke-virtual {v1, v2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withType(Lcom/tune/ma/analytics/model/TuneVariableType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    .line 2220
    invoke-virtual {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->build()Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v1

    .line 2217
    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileNumber(Ljava/lang/String;D)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2325
    const-string v0, "registerCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2330
    :goto_0
    return-void

    .line 2329
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2, p3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileNumber(Ljava/lang/String;F)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2347
    const-string v0, "registerCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2352
    :goto_0
    return-void

    .line 2351
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileNumber(Ljava/lang/String;I)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2303
    const-string v0, "registerCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2307
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileString(Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"

    .prologue
    .line 2166
    const-string v0, "registerCustomProfileString"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2174
    :goto_0
    return-void

    .line 2170
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    .line 2171
    invoke-static {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->Builder(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    sget-object v2, Lcom/tune/ma/analytics/model/TuneVariableType;->STRING:Lcom/tune/ma/analytics/model/TuneVariableType;

    .line 2172
    invoke-virtual {v1, v2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withType(Lcom/tune/ma/analytics/model/TuneVariableType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v1

    .line 2173
    invoke-virtual {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->build()Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v1

    .line 2170
    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerCustomProfileString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "variableName"
    .parameter "defaultValue"

    .prologue
    .line 2260
    const-string v0, "registerCustomProfileString"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2265
    :goto_0
    return-void

    .line 2264
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->registerCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V
    .locals 7
    .parameter "actionId"
    .parameter "friendlyName"
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tune/ma/model/TuneDeepActionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, defaultData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1687
    const-string v0, "registerDeepAction"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManagerForUser(Ljava/lang/String;)Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1692
    :goto_0
    return-void

    .line 1691
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getDeepActionManager()Lcom/tune/ma/deepactions/TuneDeepActionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tune/ma/deepactions/TuneDeepActionManager;->registerDeepAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tune/ma/model/TuneDeepActionCallback;)V

    goto :goto_0
.end method

.method public registerPowerHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "hookId"
    .parameter "friendlyName"
    .parameter "defaultValue"

    .prologue
    const/4 v4, 0x0

    .line 1591
    const-string v0, "registerPowerHook"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManagerForUser(Ljava/lang/String;)Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1596
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManager()Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tune/ma/powerhooks/TunePowerHookManager;->registerPowerHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 2
    .parameter "advertiserId"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$4;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$4;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method

.method public setAge(I)V
    .locals 2
    .parameter "age"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$5;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$5;-><init>(Lcom/tune/Tune;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 994
    return-void
.end method

.method public setAltitude(D)V
    .locals 3
    .parameter "altitude"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tune/Tune$6;-><init>(Lcom/tune/Tune;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 1
    .parameter "androidId"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0, p1}, Lcom/tune/TuneDeferredDplinkr;->setAndroidId(Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0}, Lcom/tune/Tune;->requestDeeplink()V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v0, p1}, Lcom/tune/TuneParameters;->setAndroidId(Ljava/lang/String;)V

    .line 1019
    :cond_1
    return-void
.end method

.method public setAndroidIdMd5(Ljava/lang/String;)V
    .locals 2
    .parameter "androidIdMd5"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$7;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$7;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public setAndroidIdSha1(Ljava/lang/String;)V
    .locals 2
    .parameter "androidIdSha1"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$8;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$8;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1039
    return-void
.end method

.method public setAndroidIdSha256(Ljava/lang/String;)V
    .locals 2
    .parameter "androidIdSha256"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$9;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$9;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1049
    return-void
.end method

.method public setAppAdTrackingEnabled(Z)V
    .locals 2
    .parameter "adTrackingEnabled"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$10;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$10;-><init>(Lcom/tune/Tune;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method public setConversionKey(Ljava/lang/String;)V
    .locals 2
    .parameter "conversionKey"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$11;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$11;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .parameter "currencyCode"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$12;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$12;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method public setCustomProfileDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2408
    const-string v0, "setCustomProfileDate"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2413
    :goto_0
    return-void

    .line 2412
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setCustomProfileGeolocation(Ljava/lang/String;Lcom/tune/TuneLocation;)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2484
    const-string v0, "setCustomProfileGeolocation"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2489
    :goto_0
    return-void

    .line 2488
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Lcom/tune/TuneLocation;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setCustomProfileNumber(Ljava/lang/String;D)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2446
    const-string v0, "setCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2451
    :goto_0
    return-void

    .line 2450
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2, p3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setCustomProfileNumber(Ljava/lang/String;F)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2465
    const-string v0, "setCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2470
    :goto_0
    return-void

    .line 2469
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setCustomProfileNumber(Ljava/lang/String;I)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2427
    const-string v0, "setCustomProfileNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2431
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setCustomProfileStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 2389
    const-string v0, "setCustomProfileStringValue"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2394
    :goto_0
    return-void

    .line 2393
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getProfileManager()Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v1, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tune/ma/profile/TuneUserProfile;->setCustomProfileVariable(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    goto :goto_0
.end method

.method public setDebugMode(Z)V
    .locals 3
    .parameter "debug"

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/tune/Tune;->debugMode:Z

    .line 1493
    iget-object v1, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tune/Tune$38;

    invoke-direct {v2, p0, p1}, Lcom/tune/Tune$38;-><init>(Lcom/tune/Tune;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1496
    if-eqz p1, :cond_0

    .line 1497
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tune/ma/utils/TuneDebugLog;->setLogLevel(I)V

    .line 1498
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1499
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/tune/Tune$39;

    invoke-direct {v1, p0}, Lcom/tune/Tune$39;-><init>(Lcom/tune/Tune;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1507
    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 1505
    :cond_0
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/tune/ma/utils/TuneDebugLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public setDeeplinkListener(Lcom/tune/TuneDeeplinkListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0, p1}, Lcom/tune/TuneDeferredDplinkr;->setListener(Lcom/tune/TuneDeeplinkListener;)V

    .line 1097
    return-void
.end method

.method public setDeviceBrand(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceBrand"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$13;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$13;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$14;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$14;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1121
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceModel"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$15;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$15;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1133
    return-void
.end method

.method public setEmailCollection(Z)V
    .locals 2
    .parameter "collectEmail"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$40;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$40;-><init>(Lcom/tune/Tune;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1550
    return-void
.end method

.method public setExistingUser(Z)V
    .locals 2
    .parameter "existing"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$16;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$16;-><init>(Lcom/tune/Tune;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1147
    return-void
.end method

.method public setFacebookEventLogging(ZLandroid/content/Context;Z)V
    .locals 0
    .parameter "logging"
    .parameter "context"
    .parameter "limitEventAndDataUsage"

    .prologue
    .line 1559
    iput-boolean p1, p0, Lcom/tune/Tune;->fbLogging:Z

    .line 1560
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1561
    invoke-static {p2, p3}, Lcom/tune/TuneFBBridge;->startLogger(Landroid/content/Context;Z)V

    .line 1563
    :cond_0
    return-void
.end method

.method public setFacebookUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$17;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$17;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1157
    return-void
.end method

.method public setGender(Lcom/tune/TuneGender;)V
    .locals 2
    .parameter "gender"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$18;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$18;-><init>(Lcom/tune/Tune;Lcom/tune/TuneGender;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1167
    return-void
.end method

.method public setGoogleAdvertisingId(Ljava/lang/String;Z)V
    .locals 4
    .parameter "adId"
    .parameter "isLATEnabled"

    .prologue
    const/4 v1, 0x1

    .line 1175
    if-eqz p2, :cond_3

    move v0, v1

    .line 1177
    .local v0, intLimit:I
    :goto_0
    iget-object v2, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    if-eqz v2, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v2, p1, v0}, Lcom/tune/TuneDeferredDplinkr;->setGoogleAdvertisingId(Ljava/lang/String;I)V

    .line 1179
    invoke-direct {p0}, Lcom/tune/Tune;->requestDeeplink()V

    .line 1181
    :cond_0
    iget-object v2, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    if-eqz v2, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v2, p1}, Lcom/tune/TuneParameters;->setGoogleAdvertisingId(Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tune/TuneParameters;->setGoogleAdTrackingLimited(Ljava/lang/String;)V

    .line 1185
    :cond_1
    iput-boolean v1, p0, Lcom/tune/Tune;->gotGaid:Z

    .line 1186
    iget-boolean v1, p0, Lcom/tune/Tune;->gotReferrer:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/tune/Tune;->notifiedPool:Z

    if-nez v1, :cond_2

    .line 1187
    iget-object v2, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/tune/Tune;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tune/Tune;->notifiedPool:Z

    .line 1190
    monitor-exit v2

    .line 1192
    :cond_2
    return-void

    .line 1175
    .end local v0           #intLimit:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1190
    .restart local v0       #intLimit:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGoogleUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$19;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$19;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method public setInstallReferrer(Ljava/lang/String;)V
    .locals 6
    .parameter "referrer"

    .prologue
    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tune/Tune;->gotReferrer:Z

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tune/Tune;->referrerTime:J

    .line 1212
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    iget-wide v2, p0, Lcom/tune/Tune;->referrerTime:J

    iget-wide v4, p0, Lcom/tune/Tune;->initTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/tune/TuneParameters;->setReferrerDelay(J)V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$20;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$20;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1218
    return-void
.end method

.method public setIsPayingUser(Z)V
    .locals 2
    .parameter "isPayingUser"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$21;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$21;-><init>(Lcom/tune/Tune;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1232
    return-void
.end method

.method public setLatitude(D)V
    .locals 3
    .parameter "latitude"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/tune/Tune$22;-><init>(Lcom/tune/Tune;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method public setListener(Lcom/tune/TuneListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/tune/Tune;->tuneListener:Lcom/tune/TuneListener;

    .line 1294
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 1249
    if-nez p1, :cond_0

    .line 1250
    const-string v0, "TUNE"

    const-string v1, "Location may not be null"

    invoke-static {v0, v1}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$23;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$23;-><init>(Lcom/tune/Tune;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLocation(Lcom/tune/TuneLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 1263
    if-nez p1, :cond_0

    .line 1264
    const-string v0, "TUNE"

    const-string v1, "Location may not be null"

    invoke-static {v0, v1}, Lcom/tune/ma/utils/TuneDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :goto_0
    return-void

    .line 1268
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tune/Tune;->setShouldAutoCollectDeviceLocation(Z)V

    .line 1270
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$24;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$24;-><init>(Lcom/tune/Tune;Lcom/tune/TuneLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLongitude(D)V
    .locals 3
    .parameter "longitude"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/tune/Tune$25;-><init>(Lcom/tune/Tune;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1286
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "macAddress"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$26;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$26;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1304
    return-void
.end method

.method public setOptedOutOfPush(Z)V
    .locals 1
    .parameter "optedOutOfPush"

    .prologue
    .line 1934
    const-string v0, "setOptedOutOfPush"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1939
    :goto_0
    return-void

    .line 1938
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/push/TunePushManager;->setOptedOutOfPush(Z)V

    goto :goto_0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "osVersion"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$27;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$27;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1314
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/tune/Tune;->dplinkr:Lcom/tune/TuneDeferredDplinkr;

    invoke-virtual {v0, p1}, Lcom/tune/TuneDeferredDplinkr;->setPackageName(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$28;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$28;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1329
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$29;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$29;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1351
    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 2
    .parameter "pluginName"

    .prologue
    .line 1468
    sget-object v0, Lcom/tune/TuneConstants;->PLUGIN_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$37;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$37;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1477
    :cond_0
    return-void

    .line 1473
    :cond_1
    iget-boolean v0, p0, Lcom/tune/Tune;->debugMode:Z

    if-eqz v0, :cond_0

    .line 1474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plugin name not acceptable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreloadedApp(Lcom/tune/TunePreloadData;)V
    .locals 4
    .parameter "preloadData"

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/tune/Tune;->mPreloadData:Lcom/tune/TunePreloadData;

    .line 1360
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_id"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1361
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "offer_id"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->offerId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1362
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "agency_id"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->agencyId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1363
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_ref_id"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherReferenceId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1364
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_publisher"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubPublisher:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1365
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_site"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubSite:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1366
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_campaign"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubCampaign:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1367
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_adgroup"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubAdgroup:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1368
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_ad"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubAd:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1369
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub_keyword"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSubKeyword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1370
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub1"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSub1:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1371
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub2"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSub2:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1372
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub3"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSub3:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1373
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub4"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSub4:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1374
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "publisher_sub5"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->publisherSub5:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1375
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_publisher"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubPublisher:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1376
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_site"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubSite:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1377
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_campaign"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubCampaign:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1378
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_adgroup"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubAdgroup:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1379
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_ad"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubAd:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1380
    new-instance v0, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;

    new-instance v1, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    const-string v2, "advertiser_sub_keyword"

    iget-object v3, p1, Lcom/tune/TunePreloadData;->advertiserSubKeyword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tune/ma/eventbus/event/userprofile/TuneUpdateUserProfile;-><init>(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)V

    invoke-static {v0}, Lcom/tune/ma/eventbus/TuneEventBus;->post(Ljava/lang/Object;)V

    .line 1381
    return-void
.end method

.method public setPushNotificationBuilder(Lcom/tune/ma/push/settings/TuneNotificationBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 1913
    const-string v0, "setPushNotificationBuilder"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1917
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/push/TunePushManager;->setTuneNotificationBuilder(Lcom/tune/ma/push/settings/TuneNotificationBuilder;)V

    goto :goto_0
.end method

.method public setPushNotificationRegistrationId(Ljava/lang/String;)V
    .locals 1
    .parameter "registrationId"

    .prologue
    .line 1897
    const-string v0, "setPushNotificationRegistrationId"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1901
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/push/TunePushManager;->setPushNotificationRegistrationId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPushNotificationSenderId(Ljava/lang/String;)V
    .locals 1
    .parameter "pushSenderId"

    .prologue
    .line 1879
    const-string v0, "setPushNotificationSenderId"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPushManagerForUser(Ljava/lang/String;)Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1883
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPushManager()Lcom/tune/ma/push/TunePushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tune/ma/push/TunePushManager;->setPushNotificationSenderId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReferralSources(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$30;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$30;-><init>(Lcom/tune/Tune;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1400
    return-void
.end method

.method public setReferralUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$31;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$31;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1410
    return-void
.end method

.method public setShouldAutoCollectDeviceLocation(Z)V
    .locals 1
    .parameter "autoCollect"

    .prologue
    .line 1570
    iput-boolean p1, p0, Lcom/tune/Tune;->collectLocation:Z

    .line 1571
    iget-boolean v0, p0, Lcom/tune/Tune;->collectLocation:Z

    if-nez v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/tune/Tune;->locationListener:Lcom/tune/location/TuneLocationListener;

    invoke-virtual {v0}, Lcom/tune/location/TuneLocationListener;->stopListening()V

    .line 1574
    :cond_0
    return-void
.end method

.method public setTRUSTeId(Ljava/lang/String;)V
    .locals 2
    .parameter "tpid"

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$32;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$32;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1420
    return-void
.end method

.method public setTwitterUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$33;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$33;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1430
    return-void
.end method

.method protected setUrlRequester(Lcom/tune/http/UrlRequester;)V
    .locals 0
    .parameter "urlRequester"

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/tune/Tune;->urlRequester:Lcom/tune/http/UrlRequester;

    .line 2144
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "userEmail"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$34;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$34;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1440
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$35;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$35;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1450
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "userName"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/tune/Tune;->pubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tune/Tune$36;

    invoke-direct {v1, p0, p1}, Lcom/tune/Tune$36;-><init>(Lcom/tune/Tune;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1460
    return-void
.end method

.method public setValueForHookById(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "hookId"
    .parameter "value"

    .prologue
    .line 1647
    const-string v0, "setValueForHookById"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManagerForUser(Ljava/lang/String;)Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1651
    :cond_0
    invoke-static {}, Lcom/tune/ma/TuneManager;->getInstance()Lcom/tune/ma/TuneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tune/ma/TuneManager;->getPowerHookManager()Lcom/tune/ma/powerhooks/TunePowerHookManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tune/ma/powerhooks/TunePowerHookManager;->setValueForHookById(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateLocation()V
    .locals 3

    .prologue
    .line 476
    iget-boolean v1, p0, Lcom/tune/Tune;->collectLocation:Z

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    invoke-virtual {v1}, Lcom/tune/TuneParameters;->getLocation()Lcom/tune/TuneLocation;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tune/Tune;->locationListener:Lcom/tune/location/TuneLocationListener;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/tune/Tune;->locationListener:Lcom/tune/location/TuneLocationListener;

    invoke-virtual {v1}, Lcom/tune/location/TuneLocationListener;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 480
    .local v0, lastLocation:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/tune/Tune;->params:Lcom/tune/TuneParameters;

    new-instance v2, Lcom/tune/TuneLocation;

    invoke-direct {v2, v0}, Lcom/tune/TuneLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Lcom/tune/TuneParameters;->setLocation(Lcom/tune/TuneLocation;)V

    .line 485
    .end local v0           #lastLocation:Landroid/location/Location;
    :cond_0
    return-void
.end method
