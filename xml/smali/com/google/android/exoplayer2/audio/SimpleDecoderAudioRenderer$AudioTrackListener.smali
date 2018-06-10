.class final Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1
    .parameter "audioSessionId"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    #getter for: Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    .line 607
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z

    .line 614
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6
    .parameter "bufferSize"
    .parameter "bufferSizeMs"
    .parameter "elapsedSinceLastFeedMs"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    #getter for: Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 620
    return-void
.end method
