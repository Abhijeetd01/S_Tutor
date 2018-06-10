.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextRenderer$Output;
.implements Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "decoderName"
    .parameter "initializedTimestampMs"
    .parameter "initializationDurationMs"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 941
    :cond_0
    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .parameter "counters"

    .prologue
    const/4 v1, 0x0

    .line 961
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    .line 967
    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .parameter "counters"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 924
    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 949
    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    .line 932
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6
    .parameter "bufferSize"
    .parameter "bufferSizeMs"
    .parameter "elapsedSinceLastFeedMs"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    .line 957
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, cues:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 976
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .parameter "count"
    .parameter "elapsed"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 882
    :cond_0
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .parameter "metadata"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 985
    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;->onRenderedFirstFrame()V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 905
    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    #calls: Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1009
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    const/4 v2, 0x1

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    #calls: Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1019
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1014
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"

    .prologue
    .line 1025
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "decoderName"
    .parameter "initializedTimestampMs"
    .parameter "initializationDurationMs"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 867
    :cond_0
    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .parameter "counters"

    .prologue
    const/4 v1, 0x0

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 914
    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .parameter "counters"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 858
    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #setter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 875
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "unappliedRotationDegrees"
    .parameter "pixelWidthHeightRatio"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;->onVideoSizeChanged(IIIF)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    #getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 895
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 997
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 992
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1002
    return-void
.end method
