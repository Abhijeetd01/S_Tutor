.class Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioTrack$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    .line 1422
    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide v12, -0x7fffffffffffffffL

    cmp-long v7, v10, v12

    if-eqz v7, :cond_1

    .line 1424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    sub-long v0, v8, v10

    .line 1425
    .local v0, elapsedTimeSinceStopUs:J
    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v8, v7

    mul-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 1426
    .local v2, framesSinceStop:J
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1450
    .end local v0           #elapsedTimeSinceStopUs:J
    .end local v2           #framesSinceStop:J
    :cond_0
    :goto_0
    return-wide v8

    .line 1429
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    .line 1430
    .local v6, state:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1435
    const-wide v10, 0xffffffffL

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    int-to-long v12, v7

    and-long v4, v10, v12

    .line 1436
    .local v4, rawPlaybackHeadPosition:J
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v7, :cond_3

    .line 1440
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 1441
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1443
    :cond_2
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v4, v8

    .line 1445
    :cond_3
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_4

    .line 1447
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1449
    :cond_4
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1450
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    add-long/2addr v8, v4

    goto :goto_0
.end method

.method public getPlaybackHeadPositionUs()J
    .locals 4

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 1519
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getTimestampFramePosition()J
    .locals 1

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .locals 1

    .prologue
    .line 1481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .locals 5
    .parameter "submittedFrames"

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1396
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1397
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1398
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1405
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 4
    .parameter "audioTrack"
    .parameter "needsPassthroughWorkaround"

    .prologue
    const-wide/16 v2, 0x0

    .line 1375
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1376
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    .line 1377
    const-wide v0, -0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1378
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1379
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1380
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1381
    if-eqz p1, :cond_0

    .line 1382
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    .line 1384
    :cond_0
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .parameter "playbackParams"

    .prologue
    .line 1509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateTimestamp()Z
    .locals 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    return v0
.end method
