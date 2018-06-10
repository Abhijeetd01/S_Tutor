.class final Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1
    .parameter "audioSessionId"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    #getter for: Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    .line 425
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z

    .line 432
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6
    .parameter "bufferSize"
    .parameter "bufferSizeMs"
    .parameter "elapsedSinceLastFeedMs"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    #getter for: Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 438
    return-void
.end method
