.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xa

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x7

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x6

.field private static final MSG_RELEASE:I = 0x5

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x8

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x4

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0x9

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERER_TIMESTAMP_OFFSET_US:I = 0x3938700

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 4
    .parameter "renderers"
    .parameter "trackSelector"
    .parameter "loadControl"
    .parameter "playWhenReady"
    .parameter "eventHandler"
    .parameter "playbackInfo"
    .parameter "player"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 173
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 174
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 175
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 176
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 177
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 178
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 179
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 181
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 183
    aget-object v1, p1, v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v2

    aput-object v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 187
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 188
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 189
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 190
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 194
    new-instance v1, Lcom/google/android/exoplayer2/util/PriorityHandlerThread;

    const-string v2, "ExoPlayerImplInternal:Handler"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 198
    return-void
.end method

.method private doSomeWork()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 447
    .local v8, operationStartTimeMs:J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v14, :cond_0

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 451
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 524
    :goto_0
    return-void

    .line 455
    :cond_0
    const-string v14, "doSomeWork"

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 460
    const/4 v4, 0x1

    .line 461
    .local v4, allRenderersEnded:Z
    const/4 v5, 0x1

    .line 462
    .local v5, allRenderersReadyOrEnded:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    aget-object v12, v15, v14

    .line 466
    .local v12, renderer:Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-interface {v12, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    .line 467
    if-eqz v4, :cond_3

    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v4, 0x1

    .line 470
    :goto_2
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_1
    const/4 v13, 0x1

    .line 471
    .local v13, rendererReadyOrEnded:Z
    :goto_3
    if-nez v13, :cond_2

    .line 472
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 474
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v13, :cond_5

    const/4 v5, 0x1

    .line 462
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 467
    .end local v13           #rendererReadyOrEnded:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 470
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 474
    .restart local v13       #rendererReadyOrEnded:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 477
    .end local v12           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v13           #rendererReadyOrEnded:Z
    :cond_6
    if-nez v5, :cond_7

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 481
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v14

    .line 482
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v10

    .line 483
    .local v10, playingPeriodDurationUs:J
    if-eqz v4, :cond_a

    const-wide v14, -0x7fffffffffffffffL

    cmp-long v14, v10, v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v14, v10, v14

    if-gtz v14, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v14, :cond_a

    .line 487
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 509
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    aget-object v12, v15, v14

    .line 511
    .restart local v12       #renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 510
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 489
    .end local v12           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-lez v14, :cond_c

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 491
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    .line 493
    .local v6, isNewlyReady:Z
    :goto_7
    if-eqz v6, :cond_9

    .line 494
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 495
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v14, :cond_9

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 491
    .end local v6           #isNewlyReady:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 492
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v6

    goto :goto_7

    .line 499
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-lez v14, :cond_e

    move v7, v5

    .line 502
    .local v7, isStillReady:Z
    :goto_8
    if-nez v7, :cond_9

    .line 503
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 504
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    .line 501
    .end local v7           #isStillReady:Z
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    goto :goto_8

    .line 515
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 516
    :cond_11
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 523
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    .line 517
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-eqz v14, :cond_13

    .line 518
    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 520
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderers([ZI)V
    .locals 16
    .parameter "rendererWasEnabledFlags"
    .parameter "enabledRendererCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1353
    move/from16 v0, p2

    new-array v4, v0, [Lcom/google/android/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1354
    const/16 p2, 0x0

    .line 1355
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v11, v4, :cond_7

    .line 1356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v4, v11

    .line 1357
    .local v1, renderer:Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v14

    .line 1358
    .local v14, newSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v14, :cond_6

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    add-int/lit8 v10, p2, 0x1

    .end local p2
    .local v10, enabledRendererCount:I
    aput-object v1, v4, p2

    .line 1360
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v4

    if-nez v4, :cond_5

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v2, v4, v11

    .line 1364
    .local v2, rendererConfiguration:Lcom/google/android/exoplayer2/RendererConfiguration;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v15, 0x1

    .line 1366
    .local v15, playing:Z
    :goto_1
    aget-boolean v4, p1, v11

    if-nez v4, :cond_1

    if-eqz v15, :cond_1

    const/4 v7, 0x1

    .line 1368
    .local v7, joining:Z
    :goto_2
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    new-array v3, v4, [Lcom/google/android/exoplayer2/Format;

    .line 1369
    .local v3, formats:[Lcom/google/android/exoplayer2/Format;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    array-length v4, v3

    if-ge v12, v4, :cond_2

    .line 1370
    invoke-interface {v14, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1369
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1364
    .end local v3           #formats:[Lcom/google/android/exoplayer2/Format;
    .end local v7           #joining:Z
    .end local v12           #j:I
    .end local v15           #playing:Z
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 1366
    .restart local v15       #playing:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 1373
    .restart local v3       #formats:[Lcom/google/android/exoplayer2/Format;
    .restart local v7       #joining:Z
    .restart local v12       #j:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1374
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    .line 1373
    invoke-interface/range {v1 .. v9}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1375
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v13

    .line 1376
    .local v13, mediaClock:Lcom/google/android/exoplayer2/util/MediaClock;
    if-eqz v13, :cond_4

    .line 1377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v4, :cond_3

    .line 1378
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Multiple renderer media clocks enabled."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 1381
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1382
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1385
    :cond_4
    if-eqz v15, :cond_5

    .line 1386
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .end local v2           #rendererConfiguration:Lcom/google/android/exoplayer2/RendererConfiguration;
    .end local v3           #formats:[Lcom/google/android/exoplayer2/Format;
    .end local v7           #joining:Z
    .end local v12           #j:I
    .end local v13           #mediaClock:Lcom/google/android/exoplayer2/util/MediaClock;
    .end local v15           #playing:Z
    :cond_5
    move/from16 p2, v10

    .line 1355
    .end local v10           #enabledRendererCount:I
    .restart local p2
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1391
    .end local v1           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v14           #newSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_7
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .parameter "renderer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 716
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    .line 718
    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 2
    .parameter "windowIndex"
    .parameter "windowPositionUs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 9
    .parameter "timeline"
    .parameter "windowIndex"
    .parameter "windowPositionUs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;
    .locals 13
    .parameter "timeline"
    .parameter "windowIndex"
    .parameter "windowPositionUs"
    .parameter "defaultPositionProjectionUs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1078
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1079
    const-wide v0, -0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p3

    .line 1081
    const-wide v0, -0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1082
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return-object v0

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v8, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1086
    .local v8, periodIndex:I
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v10, v0, p3

    .line 1087
    .local v10, periodPositionUs:J
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    .line 1088
    .local v6, periodDurationUs:J
    :goto_1
    const-wide v0, -0x7fffffffffffffffL

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    cmp-long v0, v10, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v8, v0, :cond_1

    .line 1090
    sub-long/2addr v10, v6

    .line 1091
    add-int/lit8 v8, v8, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    goto :goto_1

    .line 1093
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .parameter "period"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .parameter "period"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1272
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1275
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1276
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1278
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V
    .locals 4
    .parameter "manifest"
    .parameter "processedInitialSeekCount"

    .prologue
    const/4 v1, 0x0

    .line 965
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 968
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 969
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 971
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 972
    return-void
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 849
    .local p1, timelineAndManifest:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 850
    .local v9, oldTimeline:Lcom/google/android/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 851
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 853
    .local v6, manifest:Ljava/lang/Object;
    const/16 v16, 0x0

    .line 854
    .local v16, processedInitialSeekCount:I
    if-nez v9, :cond_1

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v14

    .line 857
    .local v14, periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v16, v0

    .line 858
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 859
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 860
    if-nez v14, :cond_0

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    .line 960
    .end local v14           #periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 866
    .restart local v14       #periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    new-instance v19, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 877
    .end local v14           #periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 879
    .local v12, periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_2
    if-nez v12, :cond_5

    .line 881
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto :goto_0

    .line 867
    .end local v12           #periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    goto :goto_0

    .line 872
    :cond_3
    const/16 v18, 0x0

    const-wide v20, -0x7fffffffffffffffL

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 873
    .local v4, defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v19, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_1

    .line 877
    .end local v4           #defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    .line 885
    .restart local v12       #periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 886
    .local v13, periodIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    .line 889
    iget v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v7

    .line 890
    .local v7, newPeriodIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    .line 892
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 896
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    .line 897
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL

    .line 896
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 898
    .restart local v4       #defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 899
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 900
    .local v10, newPositionUs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 904
    .local v8, newPeriodUid:Ljava/lang/Object;
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 905
    :goto_3
    iget-object v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 906
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 907
    iget-object v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v7

    :goto_4
    move/from16 v0, v18

    iput v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_3

    :cond_7
    const/16 v18, -0x1

    goto :goto_4

    .line 910
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 911
    new-instance v18, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 912
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 917
    .end local v4           #defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v7           #newPeriodIndex:I
    .end local v8           #newPeriodUid:Ljava/lang/Object;
    .end local v10           #newPositionUs:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 919
    invoke-virtual/range {v18 .. v20}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    const/4 v5, 0x1

    .line 920
    .local v5, isLastPeriod:Z
    :goto_5
    invoke-virtual {v12, v13, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_c

    const/16 v17, 0x1

    .line 922
    .local v17, seenReadingPeriod:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 928
    :cond_a
    :goto_7
    iget-object v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 929
    move-object v15, v12

    .line 930
    .local v15, previousPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 931
    add-int/lit8 v13, v13, 0x1

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 934
    invoke-virtual/range {v18 .. v20}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    const/4 v5, 0x1

    .line 935
    :goto_8
    iget-object v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 937
    invoke-virtual {v12, v13, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_e

    const/16 v18, 0x1

    :goto_9
    or-int v17, v17, v18

    goto :goto_7

    .line 919
    .end local v5           #isLastPeriod:Z
    .end local v15           #previousPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v17           #seenReadingPeriod:Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 921
    .restart local v5       #isLastPeriod:Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 934
    .restart local v15       #previousPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .restart local v17       #seenReadingPeriod:Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 938
    :cond_e
    const/16 v18, 0x0

    goto :goto_9

    .line 941
    :cond_f
    if-nez v17, :cond_11

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v13, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 946
    .restart local v10       #newPositionUs:J
    new-instance v18, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 959
    .end local v10           #newPositionUs:J
    .end local v15           #previousPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 950
    .restart local v15       #previousPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_11
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 953
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    goto :goto_a
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 6
    .parameter "rebuffering"

    .prologue
    .line 820
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 823
    .local v0, loadingPeriodBufferedPositionUs:J
    :goto_0
    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 824
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v2, :cond_1

    .line 825
    const/4 v2, 0x1

    .line 830
    :goto_1
    return v2

    .line 820
    .end local v0           #loadingPeriodBufferedPositionUs:J
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 822
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 827
    .restart local v0       #loadingPeriodBufferedPositionUs:J
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 828
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 830
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 831
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 830
    invoke-interface {v2, v4, v5, p1}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v2

    goto :goto_1
.end method

.method private isTimelineReady(J)Z
    .locals 3
    .parameter "playingPeriodDurationUs"

    .prologue
    .line 814
    const-wide v0, -0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1290
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    .line 1292
    .local v6, nextLoadPositionUs:J
    :goto_0
    const-wide/high16 v8, -0x8000

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 1293
    invoke-direct {p0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1306
    :goto_1
    return-void

    .line 1290
    .end local v6           #nextLoadPositionUs:J
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1291
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v6

    goto :goto_0

    .line 1295
    .restart local v6       #nextLoadPositionUs:J
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    .line 1296
    .local v4, loadingPeriodPositionUs:J
    sub-long v0, v6, v4

    .line 1297
    .local v0, bufferedDurationUs:J
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v3, v0, v1}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v2

    .line 1298
    .local v2, continueLoading:Z
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1299
    if-eqz v2, :cond_2

    .line 1300
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v10, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    .line 1301
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    goto :goto_1

    .line 1303
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    goto :goto_1
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v2, :cond_1

    .line 838
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 839
    .local v0, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 845
    .end local v0           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    :goto_1
    return-void

    .line 838
    .restart local v0       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v0           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_1

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v16, v0

    .line 1212
    .local v16, newLoadingPeriodIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_3

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1264
    .end local v16           #newLoadingPeriodIndex:I
    :cond_0
    :goto_1
    return-void

    .line 1197
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v22, v0

    .line 1198
    .local v22, loadingPeriodIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1199
    move/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v8

    const-wide v12, -0x7fffffffffffffffL

    cmp-long v3, v8, v12

    if-eqz v3, :cond_0

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int v3, v22, v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    .line 1209
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v16, v3, 0x1

    .restart local v16       #newLoadingPeriodIndex:I
    goto :goto_0

    .line 1219
    .end local v22           #loadingPeriodIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_5

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v0

    .line 1248
    .local v18, newLoadingPeriodStartPositionUs:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_7

    const-wide/32 v8, 0x3938700

    add-long v10, v18, v8

    .line 1252
    .local v10, rendererPositionOffsetUs:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1254
    invoke-virtual {v3, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v3, :cond_8

    const/16 v17, 0x1

    .line 1255
    .local v17, isLastPeriod:Z
    :goto_4
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v15, v3, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-direct/range {v7 .. v19}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V

    .line 1258
    .local v7, newPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_4

    .line 1259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1261
    :cond_4
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V

    .line 1263
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    .line 1222
    .end local v7           #newPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v10           #rendererPositionOffsetUs:J
    .end local v17           #isLastPeriod:Z
    .end local v18           #newLoadingPeriodStartPositionUs:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v5, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1223
    .local v5, newLoadingWindowIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1224
    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1227
    const-wide/16 v18, 0x0

    .restart local v18       #newLoadingPeriodStartPositionUs:J
    goto/16 :goto_2

    .line 1234
    .end local v18           #newLoadingPeriodStartPositionUs:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1235
    invoke-virtual {v3, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    sub-long v20, v8, v12

    .line 1237
    .local v20, defaultPositionProjectionUs:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const-wide v6, -0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    .line 1238
    move-wide/from16 v0, v20

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v3, p0

    .line 1237
    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 1239
    .local v2, defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 1243
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1244
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18       #newLoadingPeriodStartPositionUs:J
    goto/16 :goto_2

    .line 1248
    .end local v2           #defaultPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v5           #newLoadingWindowIndex:I
    .end local v20           #defaultPositionProjectionUs:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1250
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1251
    invoke-virtual {v3, v4, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long v10, v8, v12

    goto/16 :goto_3

    .line 1254
    .restart local v10       #rendererPositionOffsetUs:J
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 5
    .parameter "manifest"
    .parameter "processedInitialSeekCount"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v2, v3, p1, v4, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 977
    return-void
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 6
    .parameter "mediaSource"
    .parameter "resetPosition"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 374
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 376
    if-eqz p2, :cond_0

    .line 377
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v4, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 381
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 658
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 659
    monitor-enter p0

    .line 660
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit p0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0
    .parameter "periodHolder"

    .prologue
    .line 1309
    :goto_0
    if-eqz p1, :cond_0

    .line 1310
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1311
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 1313
    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v15, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 727
    .local v6, periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    const/4 v13, 0x1

    .line 729
    .local v13, selectionsChangedForReadPeriod:Z
    :goto_1
    if-eqz v6, :cond_0

    iget-boolean v15, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_0

    .line 733
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 744
    if-eqz v13, :cond_e

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_9

    const/4 v7, 0x1

    .line 747
    .local v7, recreateStreams:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 750
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 752
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    new-array v14, v15, [Z

    .line 753
    .local v14, streamResetFlags:[Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v7, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v8

    .line 755
    .local v8, periodPositionUs:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    cmp-long v15, v8, v16

    if-eqz v15, :cond_2

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v8, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 757
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 760
    :cond_2
    const/4 v2, 0x0

    .line 761
    .local v2, enabledRendererCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    new-array v11, v15, [Z

    .line 762
    .local v11, rendererWasEnabledFlags:[Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v15, v15

    if-ge v3, v15, :cond_c

    .line 763
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v10, v15, v3

    .line 764
    .local v10, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    aput-boolean v15, v11, v3

    .line 765
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v12, v15, v3

    .line 766
    .local v12, sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v12, :cond_3

    .line 767
    add-int/lit8 v2, v2, 0x1

    .line 769
    :cond_3
    aget-boolean v15, v11, v3

    if-eqz v15, :cond_6

    .line 770
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v15

    if-eq v12, v15, :cond_b

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v10, v15, :cond_5

    .line 774
    if-nez v12, :cond_4

    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 779
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 780
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 782
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 783
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 762
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 737
    .end local v2           #enabledRendererCount:I
    .end local v3           #i:I
    .end local v7           #recreateStreams:Z
    .end local v8           #periodPositionUs:J
    .end local v10           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v11           #rendererWasEnabledFlags:[Z
    .end local v12           #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    .end local v14           #streamResetFlags:[Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v6, v15, :cond_8

    .line 739
    const/4 v13, 0x0

    .line 741
    :cond_8
    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_1

    .line 746
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 764
    .restart local v2       #enabledRendererCount:I
    .restart local v3       #i:I
    .restart local v7       #recreateStreams:Z
    .restart local v8       #periodPositionUs:J
    .restart local v10       #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v11       #rendererWasEnabledFlags:[Z
    .restart local v14       #streamResetFlags:[Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 784
    .restart local v12       #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_b
    aget-boolean v15, v14, v3

    if-eqz v15, :cond_6

    .line 786
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 790
    .end local v10           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v12           #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 791
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 792
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 808
    .end local v2           #enabledRendererCount:I
    .end local v3           #i:I
    .end local v7           #recreateStreams:Z
    .end local v8           #periodPositionUs:J
    .end local v11           #rendererWasEnabledFlags:[Z
    .end local v14           #streamResetFlags:[Z
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 810
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 795
    :cond_e
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 797
    :goto_7
    if-eqz v6, :cond_f

    .line 798
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 799
    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_7

    .line 801
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_d

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    .line 804
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v18

    .line 803
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 805
    .local v4, loadingPeriodPositionUs:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v5, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    goto :goto_6
.end method

.method private resetInternal(Z)V
    .locals 9
    .parameter "releaseMediaSource"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 666
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 668
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 669
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 670
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 671
    const-wide/32 v4, 0x3938700

    iput-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 672
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 674
    .local v1, renderer:Lcom/google/android/exoplayer2/Renderer;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 675
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 681
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    new-array v2, v3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 682
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 684
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 685
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 686
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 687
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 688
    if-eqz p1, :cond_2

    .line 689
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 691
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 693
    :cond_1
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 695
    :cond_2
    return-void

    .line 682
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    .line 676
    .restart local v1       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 7
    .parameter "periodPositionUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide/32 v2, 0x3938700

    add-long/2addr v2, p1

    .line 642
    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 644
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 645
    .local v0, renderer:Lcom/google/android/exoplayer2/Renderer;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v0           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 642
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v2

    goto :goto_0

    .line 647
    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 10
    .parameter "seekPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1009
    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1010
    .local v3, seekTimeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1013
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1018
    :cond_0
    :try_start_0
    iget v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v6, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1025
    .local v2, periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-ne v4, v3, :cond_1

    .line 1043
    .end local v2           #periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-object v2

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v6, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v8, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v4

    .line 1030
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1031
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1030
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 1032
    .local v1, periodIndex:I
    if-eq v1, v8, :cond_2

    .line 1034
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    .line 1037
    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v1

    .line 1038
    if-eq v1, v8, :cond_3

    .line 1040
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v1, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v6, -0x7fffffffffffffffL

    invoke-direct {p0, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    .line 1043
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I
    .locals 3
    .parameter "oldPeriodIndex"
    .parameter "oldTimeline"
    .parameter "newTimeline"

    .prologue
    .line 991
    const/4 v0, -0x1

    .line 992
    .local v0, newPeriodIndex:I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 993
    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    .line 994
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 993
    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 996
    :cond_0
    return v0
.end method

.method private scheduleNextWork(JJ)V
    .locals 7
    .parameter "thisOperationStartTimeMs"
    .parameter "intervalMs"

    .prologue
    const/4 v6, 0x2

    .line 527
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    add-long v2, p1, p3

    .line 529
    .local v2, nextOperationStartTimeMs:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 530
    .local v0, nextOperationDelayMs:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 531
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 14
    .parameter "seekPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v7, :cond_0

    .line 539
    iget v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 540
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 577
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v3

    .line 545
    .local v3, periodPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_1

    .line 548
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 549
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 552
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL

    invoke-direct {v7, v8, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 553
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 555
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    goto :goto_0

    .line 559
    :cond_1
    iget-wide v8, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    const-wide v10, -0x7fffffffffffffffL

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    const/4 v6, 0x1

    .line 560
    .local v6, seekPositionAdjusted:Z
    :goto_1
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 561
    .local v2, periodIndex:I
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 564
    .local v4, periodPositionUs:J
    :try_start_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne v2, v7, :cond_4

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v10, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 573
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 574
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    :goto_2
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 575
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 559
    .end local v2           #periodIndex:I
    .end local v4           #periodPositionUs:J
    .end local v6           #seekPositionAdjusted:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 574
    .restart local v2       #periodIndex:I
    .restart local v4       #periodPositionUs:J
    .restart local v6       #seekPositionAdjusted:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 569
    :cond_4
    :try_start_1
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 570
    .local v0, newPeriodPositionUs:J
    cmp-long v7, v4, v0

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    or-int/2addr v6, v7

    .line 571
    move-wide v4, v0

    .line 573
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 574
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    :goto_4
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 575
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 570
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 574
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 573
    .end local v0           #newPeriodPositionUs:J
    :catchall_0
    move-exception v7

    move-object v8, v7

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 574
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    if-eqz v6, :cond_7

    const/4 v7, 0x1

    :goto_5
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 575
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    throw v8

    .line 574
    :cond_7
    const/4 v7, 0x0

    goto :goto_5
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 10
    .parameter "periodIndex"
    .parameter "periodPositionUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 581
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 582
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 583
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, newPlayingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_2

    .line 588
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 606
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v5, :cond_5

    .line 608
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 609
    .local v2, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v2           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 594
    .local v1, periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_1
    if-eqz v1, :cond_0

    .line 595
    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v3, p1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_3

    .line 596
    move-object v0, v1

    .line 600
    :goto_2
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    .line 598
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_2

    .line 611
    .end local v1           #periodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_4
    new-array v3, v4, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 612
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 613
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 614
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 618
    :cond_5
    if-eqz v0, :cond_7

    .line 619
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 620
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 621
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 622
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 623
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v3, :cond_6

    .line 624
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 626
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 627
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 635
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    return-wide p2

    .line 629
    :cond_7
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 630
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 631
    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 632
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_3
.end method

.method private sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 6
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 700
    .local v0, message:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v0           #message:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 707
    :cond_1
    monitor-enter p0

    .line 708
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit p0

    .line 712
    return-void

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 707
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 708
    :try_start_2
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setIsLoading(Z)V
    .locals 4
    .parameter "isLoading"

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 369
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 369
    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .parameter "playWhenReady"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 387
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 388
    if-nez p1, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 395
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 9
    .parameter "periodHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1316
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v5, p1, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1320
    :cond_0
    const/4 v0, 0x0

    .line 1321
    .local v0, enabledRendererCount:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    new-array v4, v5, [Z

    .line 1322
    .local v4, rendererWasEnabledFlags:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 1323
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v3, v5, v1

    .line 1324
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    aput-boolean v5, v4, v1

    .line 1325
    iget-object v5, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 1326
    .local v2, newSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v2, :cond_1

    .line 1327
    add-int/lit8 v0, v0, 0x1

    .line 1329
    :cond_1
    aget-boolean v5, v4, v1

    if-eqz v5, :cond_4

    if-eqz v2, :cond_2

    .line 1330
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1331
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v1

    if-ne v5, v6, :cond_4

    .line 1335
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v3, v5, :cond_3

    .line 1337
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 1338
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1339
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1341
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1342
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 1322
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1324
    .end local v2           #newSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1346
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_6
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1347
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1348
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 360
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 361
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 403
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 404
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 405
    .local v0, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 650
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 652
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 653
    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 411
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 412
    .local v0, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v14, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v14}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1190
    :cond_0
    return-void

    .line 1104
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1106
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1111
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_0

    .line 1117
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    .line 1121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1123
    new-instance v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v15, v15, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    move-wide/from16 v16, v0

    invoke-direct/range {v14 .. v17}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1107
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v14, :cond_3

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0

    .line 1129
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v14, :cond_7

    .line 1130
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_0

    .line 1131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1132
    .local v12, renderer:Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v13, v14, v3

    .line 1135
    .local v13, sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v13, :cond_6

    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v14

    if-ne v14, v13, :cond_6

    .line 1136
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1137
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    .line 1130
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1143
    .end local v3           #i:I
    .end local v12           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v13           #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_9

    .line 1144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1145
    .restart local v12       #renderer:Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v13, v14, v3

    .line 1146
    .restart local v13       #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v14

    if-ne v14, v13, :cond_0

    if-eqz v13, :cond_8

    .line 1147
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1143
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1152
    .end local v12           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .end local v13           #sampleStream:Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v14, :cond_0

    .line 1153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v11, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1154
    .local v11, oldTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v8, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1157
    .local v8, newTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1158
    invoke-interface {v14}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b

    const/4 v4, 0x1

    .line 1159
    .local v4, initialDiscontinuity:Z
    :goto_4
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_0

    .line 1160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1161
    .restart local v12       #renderer:Lcom/google/android/exoplayer2/Renderer;
    iget-object v14, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v14, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 1162
    .local v10, oldSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-nez v10, :cond_c

    .line 1159
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1158
    .end local v4           #initialDiscontinuity:Z
    .end local v10           #oldSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v12           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .line 1164
    .restart local v4       #initialDiscontinuity:Z
    .restart local v10       #oldSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v12       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_c
    if-eqz v4, :cond_d

    .line 1167
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6

    .line 1168
    :cond_d
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v14

    if-nez v14, :cond_a

    .line 1169
    iget-object v14, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v14, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    .line 1170
    .local v7, newSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-object v14, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v9, v14, v3

    .line 1171
    .local v9, oldConfig:Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-object v14, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v14, v3

    .line 1172
    .local v6, newConfig:Lcom/google/android/exoplayer2/RendererConfiguration;
    if-eqz v7, :cond_f

    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1175
    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v14

    new-array v2, v14, [Lcom/google/android/exoplayer2/Format;

    .line 1176
    .local v2, formats:[Lcom/google/android/exoplayer2/Format;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_7
    array-length v14, v2

    if-ge v5, v14, :cond_e

    .line 1177
    invoke-interface {v7, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    aput-object v14, v2, v5

    .line 1176
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1179
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v14, v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1180
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v16

    .line 1179
    move-wide/from16 v0, v16

    invoke-interface {v12, v2, v14, v0, v1}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_6

    .line 1185
    .end local v2           #formats:[Lcom/google/android/exoplayer2/Format;
    .end local v5           #j:I
    :cond_f
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6
.end method

.method private updatePlaybackPositions()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, -0x8000

    .line 417
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v6, :cond_0

    .line 443
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 423
    .local v2, periodPositionUs:J
    const-wide v6, -0x7fffffffffffffffL

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 424
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 434
    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v2, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 438
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v6

    if-nez v6, :cond_4

    move-wide v0, v4

    .line 440
    .local v0, bufferedPositionUs:J
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 441
    invoke-virtual {v4, v5, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .end local v0           #bufferedPositionUs:J
    :cond_1
    iput-wide v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    .line 426
    :cond_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 427
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 428
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 432
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    goto :goto_1

    .line 430
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    goto :goto_3

    .line 438
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 439
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_2
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 4
    .parameter "messages"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v2, :cond_1

    .line 229
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Ignoring messages sent after release."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 233
    .local v1, messageNumber:I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v1, :cond_0

    .line 236
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #messageNumber:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 290
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 353
    :goto_0
    return v1

    .line 292
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    move v1, v2

    .line 293
    goto :goto_0

    .line 296
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 297
    goto :goto_0

    .line 300
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 301
    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    move v1, v2

    .line 305
    goto :goto_0

    .line 308
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 309
    goto :goto_0

    .line 312
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 313
    goto :goto_0

    .line 316
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 317
    goto :goto_0

    .line 320
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    move v1, v2

    .line 321
    goto :goto_0

    .line 324
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 325
    goto :goto_0

    .line 328
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v1, v2

    .line 329
    goto :goto_0

    .line 332
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 333
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Lcom/google/android/exoplayer2/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 342
    goto :goto_0

    .line 343
    .end local v0           #e:Lcom/google/android/exoplayer2/ExoPlaybackException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 347
    goto/16 :goto_0

    .line 348
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 352
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 353
    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .parameter "timeline"
    .parameter "manifest"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 263
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 3
    .parameter "mediaSource"
    .parameter "resetPosition"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 256
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 255
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 3
    .parameter "timeline"
    .parameter "windowIndex"
    .parameter "positionUs"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2
    .parameter "messages"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4
    .parameter "playWhenReady"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method
