.class public final Lcom/snappy/appypie/AnalyticsTrackers;
.super Ljava/lang/Object;
.source "AnalyticsTrackers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snappy/appypie/AnalyticsTrackers$Target;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/snappy/appypie/AnalyticsTrackers;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snappy/appypie/AnalyticsTrackers$Target;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/snappy/appypie/AnalyticsTrackers;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lcom/snappy/appypie/AnalyticsTrackers;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snappy/appypie/AnalyticsTrackers;->sInstance:Lcom/snappy/appypie/AnalyticsTrackers;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Call initialize() before getInstance()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 32
    :cond_0
    :try_start_1
    sget-object v0, Lcom/snappy/appypie/AnalyticsTrackers;->sInstance:Lcom/snappy/appypie/AnalyticsTrackers;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    const-class v1, Lcom/snappy/appypie/AnalyticsTrackers;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snappy/appypie/AnalyticsTrackers;->sInstance:Lcom/snappy/appypie/AnalyticsTrackers;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Extra call to initialize analytics trackers"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 24
    :cond_0
    :try_start_1
    new-instance v0, Lcom/snappy/appypie/AnalyticsTrackers;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/AnalyticsTrackers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snappy/appypie/AnalyticsTrackers;->sInstance:Lcom/snappy/appypie/AnalyticsTrackers;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/snappy/appypie/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .parameter "target"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/snappy/appypie/AnalyticsTrackers$1;->$SwitchMap$com$snappy$appypie$AnalyticsTrackers$Target:[I

    invoke-virtual {p1}, Lcom/snappy/appypie/AnalyticsTrackers$Target;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled analytics target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 48
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 53
    .local v0, tracker:Lcom/google/android/gms/analytics/Tracker;
    iget-object v1, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v0           #tracker:Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/Tracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
