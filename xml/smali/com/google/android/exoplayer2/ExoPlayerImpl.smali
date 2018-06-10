.class final Lcom/google/android/exoplayer2/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final emptyTrackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private final eventHandler:Landroid/os/Handler;

.field private final internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field private isLoading:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer2/ExoPlayer$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private pendingSeekAcks:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackState:I

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private tracksSelected:Z

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 8
    .parameter "renderers"
    .parameter "trackSelector"
    .parameter "loadControl"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init 2.3.1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 79
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 80
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 81
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 82
    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 85
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 88
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayer;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 218
    return-void
.end method

.method public getBufferedPercentage()I
    .locals 10

    .prologue
    const-wide/16 v4, 0x64

    const-wide v8, -0x7fffffffffffffffL

    const/4 v6, 0x0

    .line 265
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    :goto_0
    return v6

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .line 269
    .local v0, bufferedPosition:J
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    .line 270
    .local v2, duration:J
    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    :cond_1
    move v4, v6

    :goto_1
    move v6, v4

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    :goto_2
    long-to-int v4, v4

    goto :goto_1

    :cond_3
    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    goto :goto_2
.end method

.method public getBufferedPosition()J
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 256
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 259
    :goto_0
    return-wide v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 245
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 248
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 228
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 230
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-wide v0, -0x7fffffffffffffffL

    .line 239
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 322
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 387
    :cond_0
    return-void

    .line 324
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 325
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 326
    .local v1, listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 331
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading:Z

    .line 332
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 333
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading:Z

    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onLoadingChanged(Z)V

    goto :goto_2

    .line 331
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 338
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 339
    .local v3, trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 340
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->groups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 341
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 342
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 343
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 344
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_3

    .line 349
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    .end local v3           #trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    :pswitch_3
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    .line 350
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 351
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 353
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_4

    .line 360
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :pswitch_4
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    .line 361
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 362
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 363
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_5

    .line 369
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    .line 370
    .local v2, sourceInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    iget-object v4, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 371
    iget-object v4, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 372
    iget-object v4, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 373
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 374
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 375
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_6

    .line 380
    .end local v1           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    .end local v2           #sourceInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 381
    .local v0, exception:Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 382
    .restart local v1       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_7

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isCurrentWindowDynamic()Z
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    goto :goto_0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading:Z

    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .parameter "mediaSource"

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 119
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 5
    .parameter "mediaSource"
    .parameter "resetPosition"
    .parameter "resetState"

    .prologue
    const/4 v4, 0x0

    .line 123
    if-eqz p3, :cond_2

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 126
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 128
    .local v0, listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    .end local v0           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 133
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 137
    .restart local v0       #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_1

    .line 141
    .end local v0           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 142
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->release()V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public seekTo(IJ)V
    .locals 6
    .parameter "windowIndex"
    .parameter "positionMs"

    .prologue
    const-wide v4, -0x7fffffffffffffffL

    .line 182
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 183
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v1

    .line 185
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 186
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 187
    cmp-long v1, p2, v4

    if-nez v1, :cond_3

    .line 188
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, v2, p1, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 197
    :cond_2
    return-void

    .line 191
    :cond_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, p1, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 194
    .local v0, listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1
    .parameter "positionMs"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 178
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekToDefaultPosition(I)V

    .line 168
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .parameter "windowIndex"

    .prologue
    .line 172
    const-wide v0, -0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 173
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 213
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3
    .parameter "playWhenReady"

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_0

    .line 147
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 150
    .local v0, listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 153
    .end local v0           #listener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stop()V

    .line 202
    return-void
.end method
