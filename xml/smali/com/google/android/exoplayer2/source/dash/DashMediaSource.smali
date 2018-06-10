.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_FIXED_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_PREFER_MANIFEST_MS:J = -0x1L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final NOTIFY_MANIFEST_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private elapsedRealtimeOffsetMs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private final livePresentationDelayMs:J

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadEndTimestamp:J

.field private manifestLoadStartTimestamp:J

.field private final manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final minLoadableRetryCount:I

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 11
    .parameter "manifestUri"
    .parameter "manifestDataSourceFactory"
    .parameter "chunkSourceFactory"
    .parameter "minLoadableRetryCount"
    .parameter "livePresentationDelayMs"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 181
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 10
    .parameter "manifestUri"
    .parameter "manifestDataSourceFactory"
    .parameter "chunkSourceFactory"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 156
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12
    .parameter "manifestUri"
    .parameter "manifestDataSourceFactory"
    .parameter "manifestParser"
    .parameter "chunkSourceFactory"
    .parameter "minLoadableRetryCount"
    .parameter "livePresentationDelayMs"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 206
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 5
    .parameter "manifest"
    .parameter "manifestUri"
    .parameter "manifestDataSourceFactory"
    .parameter "manifestParser"
    .parameter "chunkSourceFactory"
    .parameter "minLoadableRetryCount"
    .parameter "livePresentationDelayMs"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 216
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 217
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 218
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    .line 219
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 220
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    .line 221
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    .line 222
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    .line 223
    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p9, p10}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 226
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_2

    .line 227
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 228
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 229
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 230
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 246
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 227
    goto :goto_1

    .line 232
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {v0, p0, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 239
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12
    .parameter "manifest"
    .parameter "chunkSourceFactory"
    .parameter "minLoadableRetryCount"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6
    .parameter "manifest"
    .parameter "chunkSourceFactory"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 122
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 4

    .prologue
    .line 560
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    .line 563
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 445
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 448
    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 1
    .parameter "elapsedRealtimeOffsetMs"

    .prologue
    .line 440
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 442
    return-void
.end method

.method private processManifest(Z)V
    .locals 40
    .parameter "scheduleRefresh"

    .prologue
    .line 452
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 454
    .local v21, id:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move/from16 v0, v21

    if-lt v0, v5, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v9, v21, v9

    invoke-virtual {v5, v6, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 452
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 461
    .end local v21           #id:I
    :cond_1
    const/16 v31, 0x0

    .line 462
    .local v31, windowChangingImplicitly:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    add-int/lit8 v22, v5, -0x1

    .line 463
    .local v22, lastPeriodIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v9, 0x0

    .line 464
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    .line 463
    move-wide/from16 v0, v36

    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v17

    .line 465
    .local v17, firstPeriodSeekInfo:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 466
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    .line 465
    move-wide/from16 v0, v36

    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v23

    .line 468
    .local v23, lastPeriodSeekInfo:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 469
    .local v10, currentStartTimeUs:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    move-wide/from16 v18, v0

    .line 470
    .local v18, currentEndTimeUs:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    if-nez v5, :cond_4

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getNowUnixTimeUs()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v38

    sub-long v24, v36, v38

    .line 474
    .local v24, liveStreamDurationUs:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 475
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v36

    sub-long v26, v24, v36

    .line 476
    .local v26, liveStreamEndPositionInLastPeriodUs:J
    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v36, v0

    const-wide v38, -0x7fffffffffffffffL

    cmp-long v5, v36, v38

    if-eqz v5, :cond_3

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v34

    .line 479
    .local v34, timeShiftBufferDepthUs:J
    sub-long v28, v18, v34

    .line 480
    .local v28, offsetInPeriodUs:J
    move/from16 v30, v22

    .line 481
    .local v30, periodIndex:I
    :goto_1
    const-wide/16 v36, 0x0

    cmp-long v5, v28, v36

    if-gez v5, :cond_2

    if-lez v30, :cond_2

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    add-long v28, v28, v36

    goto :goto_1

    .line 484
    :cond_2
    if-nez v30, :cond_5

    .line 485
    move-wide/from16 v0, v28

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 492
    .end local v28           #offsetInPeriodUs:J
    .end local v30           #periodIndex:I
    .end local v34           #timeShiftBufferDepthUs:J
    :cond_3
    :goto_2
    const/16 v31, 0x1

    .line 494
    .end local v24           #liveStreamDurationUs:J
    .end local v26           #liveStreamEndPositionInLastPeriodUs:J
    :cond_4
    sub-long v12, v18, v10

    .line 495
    .local v12, windowDurationUs:J
    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v20

    if-ge v0, v5, :cond_6

    .line 496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    add-long v12, v12, v36

    .line 495
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 489
    .end local v12           #windowDurationUs:J
    .restart local v24       #liveStreamDurationUs:J
    .restart local v26       #liveStreamEndPositionInLastPeriodUs:J
    .restart local v28       #offsetInPeriodUs:J
    .restart local v30       #periodIndex:I
    .restart local v34       #timeShiftBufferDepthUs:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    goto :goto_2

    .line 498
    .end local v24           #liveStreamDurationUs:J
    .end local v26           #liveStreamEndPositionInLastPeriodUs:J
    .end local v28           #offsetInPeriodUs:J
    .end local v30           #periodIndex:I
    .end local v34           #timeShiftBufferDepthUs:J
    .restart local v12       #windowDurationUs:J
    :cond_6
    const-wide/16 v14, 0x0

    .line 499
    .local v14, windowDefaultStartPositionUs:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_8

    .line 500
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    move-wide/from16 v32, v0

    .line 501
    .local v32, presentationDelayForManifestMs:J
    const-wide/16 v36, -0x1

    cmp-long v5, v32, v36

    if-nez v5, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v36, v0

    const-wide v38, -0x7fffffffffffffffL

    cmp-long v5, v36, v38

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v32, v0

    .line 506
    :cond_7
    :goto_4
    invoke-static/range {v32 .. v33}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v36

    sub-long v14, v12, v36

    .line 507
    const-wide/32 v36, 0x4c4b40

    cmp-long v5, v14, v36

    if-gez v5, :cond_8

    .line 511
    const-wide/32 v36, 0x4c4b40

    const-wide/16 v38, 0x2

    div-long v38, v12, v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 515
    .end local v32           #presentationDelayForManifestMs:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    .line 516
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v38, v0

    add-long v36, v36, v38

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v38

    add-long v7, v36, v38

    .line 517
    .local v7, windowStartTimeMs:J
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 520
    .local v4, timeline:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-interface {v5, v4, v6}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 522
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v5, :cond_a

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    if-eqz v31, :cond_9

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v36, 0x1388

    move-wide/from16 v0, v36

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_9
    if-eqz p1, :cond_a

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    .line 534
    :cond_a
    return-void

    .line 502
    .end local v4           #timeline:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v7           #windowStartTimeMs:J
    .restart local v32       #presentationDelayForManifestMs:J
    :cond_b
    const-wide/16 v32, 0x7530

    goto :goto_4
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 3
    .parameter "timingElement"

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 411
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    .line 415
    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 416
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    .line 420
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 6
    .parameter "timingElement"

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 427
    .local v2, utcTimestamp:J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    sub-long v4, v2, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v2           #utcTimestamp:J
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Lcom/google/android/exoplayer2/ParserException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 4
    .parameter "timingElement"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 437
    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 537
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v6, :cond_0

    .line 551
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    .line 541
    .local v2, minUpdatePeriod:J
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    .line 546
    const-wide/16 v2, 0x1388

    .line 548
    :cond_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    add-long v4, v6, v2

    .line 549
    .local v4, nextLoadTimestamp:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 550
    .local v0, delayUntilNextLoad:J
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .locals 5
    .parameter
    .parameter
    .parameter "minRetryCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
            "<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p2, callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;,"Lcom/google/android/exoplayer2/upstream/Loader$Callback<Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 556
    .local v0, elapsedRealtimeMs:J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    .line 557
    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .prologue
    .line 402
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 404
    .local v0, manifestUri:Landroid/net/Uri;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 407
    return-void

    .line 404
    .end local v0           #manifestUri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 12
    .parameter "periodIndex"
    .parameter "allocator"
    .parameter "positionUs"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 284
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    .line 283
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->copyWithMediaTimeOffsetMs(J)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v7

    .line 285
    .local v7, periodEventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move v4, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 288
    .local v1, mediaPeriod:Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    return-object v1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 279
    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .parameter
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<*>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 395
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 394
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 396
    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 18
    .parameter
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 322
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 326
    .local v4, newManifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    if-nez v5, :cond_0

    const/16 v16, 0x0

    .line 327
    .local v16, periodCount:I
    :goto_0
    const/16 v17, 0x0

    .line 328
    .local v17, removedPeriodCount:I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    .line 329
    .local v14, newFirstPeriodStartTimeMs:J
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 330
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v5, v6, v14

    if-gez v5, :cond_1

    .line 331
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 326
    .end local v14           #newFirstPeriodStartTimeMs:J
    .end local v16           #periodCount:I
    .end local v17           #removedPeriodCount:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v16

    goto :goto_0

    .line 338
    .restart local v14       #newFirstPeriodStartTimeMs:J
    .restart local v16       #periodCount:I
    .restart local v17       #removedPeriodCount:I
    :cond_1
    sub-int v5, v16, v17

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 339
    const-string v5, "DashMediaSource"

    const-string v6, "Out of sync manifest"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    .line 367
    :goto_2
    return-void

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 345
    sub-long v6, p2, p4

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    .line 346
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    .line 347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v6

    .line 351
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v5, v7, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 354
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_4
    if-nez v16, :cond_6

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v5, :cond_5

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 361
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_2

    .line 364
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 365
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_2
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .parameter
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 372
    .local v13, isFatal:Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 373
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 372
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 374
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .parameter
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 380
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 379
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 381
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    .line 382
    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .parameter
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, loadable:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;,"Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    const/4 v13, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 386
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 388
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 389
    const/4 v2, 0x2

    return v2
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .parameter "player"
    .parameter "isTopLevelSource"
    .parameter "listener"

    .prologue
    .line 263
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 264
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 269
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    goto :goto_0
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3
    .parameter "mediaPeriod"

    .prologue
    .line 294
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 295
    .local v0, dashMediaPeriod:Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    .line 296
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 297
    return-void
.end method

.method public releaseSource()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 302
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 305
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 307
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    .line 308
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    .line 309
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 314
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "manifestUri"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
