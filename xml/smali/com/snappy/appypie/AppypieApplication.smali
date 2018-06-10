.class public Lcom/snappy/appypie/AppypieApplication;
.super Landroid/app/Application;
.source "AppypieApplication.java"


# static fields
.field private static appInstance:Lcom/snappy/appypie/AppypieApplication;

.field private static mInstance:Lcom/snappy/appypie/AppypieApplication;

.field public static relativeSOPath:Ljava/lang/String;

.field public static tracker:Lcom/google/android/gms/analytics/Tracker;


# instance fields
.field public bis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skytree/epub/BookInformation;",
            ">;"
        }
    .end annotation
.end field

.field public customFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snappy/appypie/eReader/epub/CustomFont;",
            ">;"
        }
    .end annotation
.end field

.field private issueDownloadingImage:Ljava/lang/String;

.field private okMcom:Ljava/lang/String;

.field public sd:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

.field public sortType:I

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->sd:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/snappy/appypie/AppypieApplication;->sortType:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->customFonts:Ljava/util/ArrayList;

    .line 46
    const-string v0, "OK"

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->okMcom:Ljava/lang/String;

    .line 47
    const-string v0, "There is some issue in downloading image11"

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->issueDownloadingImage:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getAppInstance()Lcom/snappy/appypie/AppypieApplication;
    .locals 2

    .prologue
    .line 133
    const-class v0, Lcom/snappy/appypie/AppypieApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snappy/appypie/AppypieApplication;->appInstance:Lcom/snappy/appypie/AppypieApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/snappy/appypie/AppypieApplication;
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/snappy/appypie/AppypieApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snappy/appypie/AppypieApplication;->mInstance:Lcom/snappy/appypie/AppypieApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInternalAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/snappy/appypie/AppypieApplication;->relativeSOPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 172
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2
    .parameter "bandwidthMeter"

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0, p1}, Lcom/snappy/appypie/AppypieApplication;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2
    .parameter "bandwidthMeter"

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/snappy/appypie/AppypieApplication;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public declared-synchronized getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/snappy/appypie/AnalyticsTrackers;->getInstance()Lcom/snappy/appypie/AnalyticsTrackers;

    move-result-object v0

    .line 138
    .local v0, analyticsTrackers:Lcom/snappy/appypie/AnalyticsTrackers;
    sget-object v1, Lcom/snappy/appypie/AnalyticsTrackers$Target;->APP:Lcom/snappy/appypie/AnalyticsTrackers$Target;

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/AnalyticsTrackers;->get(Lcom/snappy/appypie/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 137
    .end local v0           #analyticsTrackers:Lcom/snappy/appypie/AnalyticsTrackers;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIssueDownloadingImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->issueDownloadingImage:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->okMcom:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 59
    .local v1, builder:Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 60
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 62
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 64
    :try_start_0
    const-class v6, Landroid/os/StrictMode;

    const-string v7, "disableDeathOnFileUriExposure"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 65
    .local v4, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v4           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snappy/appypie/AppypieApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/snappy/appypie/AppypieApplication;

    sput-object v6, Lcom/snappy/appypie/AppypieApplication;->appInstance:Lcom/snappy/appypie/AppypieApplication;

    .line 73
    const v6, 0x7f0800af

    invoke-virtual {p0, v6}, Lcom/snappy/appypie/AppypieApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, applicationId:Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 75
    .local v5, manufacturer:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snappy/appypie/AppypieApplication;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/snappy/appypie/AppypieApplication;->relativeSOPath:Ljava/lang/String;

    .line 77
    const-string v6, "AppypieExoPlayer"

    invoke-static {p0, v6}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/snappy/appypie/AppypieApplication;->userAgent:Ljava/lang/String;

    .line 78
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "krishna device manufacturer==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const-string v6, "amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    invoke-static {p0}, Lcom/snappy/appypie/AnalyticsTrackers;->initialize(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/snappy/appypie/AnalyticsTrackers;->getInstance()Lcom/snappy/appypie/AnalyticsTrackers;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/AnalyticsTrackers$Target;->APP:Lcom/snappy/appypie/AnalyticsTrackers$Target;

    invoke-virtual {v6, v7}, Lcom/snappy/appypie/AnalyticsTrackers;->get(Lcom/snappy/appypie/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v6

    sput-object v6, Lcom/snappy/appypie/AppypieApplication;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 84
    sget-object v6, Lcom/snappy/appypie/AppypieApplication;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 91
    :cond_1
    :try_start_1
    new-instance v6, Lcom/tune/ma/application/TuneActivityLifecycleCallbacks;

    invoke-direct {v6}, Lcom/tune/ma/application/TuneActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v6}, Lcom/snappy/appypie/AppypieApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/snappy/appypie/ReportHandler;->install(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :goto_2
    return-void

    .line 66
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v5           #manufacturer:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v5       #manufacturer:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 95
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 104
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public reloadBookInformations()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->sd:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

    iget v1, p0, Lcom/snappy/appypie/AppypieApplication;->sortType:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->fetchBookInformations(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->bis:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public reloadBookInformations(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->sd:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

    iget v1, p0, Lcom/snappy/appypie/AppypieApplication;->sortType:I

    invoke-virtual {v0, v1, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->fetchBookInformations(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/AppypieApplication;->bis:Ljava/util/ArrayList;

    .line 121
    return-void
.end method

.method public setIssueDownloadingImage(Ljava/lang/String;)V
    .locals 0
    .parameter "issueDownloadingImage"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snappy/appypie/AppypieApplication;->issueDownloadingImage:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setOk(Ljava/lang/String;)V
    .locals 0
    .parameter "okMcom"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/snappy/appypie/AppypieApplication;->okMcom:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/snappy/appypie/AppypieApplication;->getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 166
    .local v0, t:Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method public trackException(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/snappy/appypie/AppypieApplication;->getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 153
    .local v0, t:Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    new-instance v2, Lcom/google/android/gms/analytics/StandardExceptionParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 161
    .end local v0           #t:Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    return-void
.end method

.method public trackScreenView(Ljava/lang/String;)V
    .locals 2
    .parameter "screenName"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/snappy/appypie/AppypieApplication;->getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 143
    .local v0, t:Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 146
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 147
    return-void
.end method

.method public useExtensionRenderers()Z
    .locals 2

    .prologue
    .line 110
    const-string v0, ""

    const-string v1, "withExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
