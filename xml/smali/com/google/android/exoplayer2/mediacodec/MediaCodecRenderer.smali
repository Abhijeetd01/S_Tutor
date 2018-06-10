.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B = null

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private codec:Landroid/media/MediaCodec;

.field private codecHotswapDeadlineMs:J

.field private codecIsAdaptive:Z

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private format:Lcom/google/android/exoplayer2/Format;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 3
    .parameter "trackType"
    .parameter "mediaCodecSelector"
    .parameter
    .parameter "playClearSamplesWithoutKeys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 225
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 226
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 227
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 228
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 232
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 233
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 234
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 235
    return-void

    :cond_0
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1083
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1084
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "flounder"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flounder_lte"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "grouper"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tilapia"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1083
    :goto_0
    return v0

    .line 1086
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2
    .parameter "name"
    .parameter "format"

    .prologue
    .line 1100
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1100
    :goto_0
    return v0

    .line 1101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1135
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    const-string v0, "hb2000"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1137
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1135
    :goto_0
    return v0

    .line 1138
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1153
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1117
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1118
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1117
    :goto_0
    return v0

    .line 1118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/16 v1, 0x12

    .line 1063
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 1065
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1067
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1063
    :goto_0
    return v0

    .line 1067
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 3
    .parameter "name"
    .parameter "format"

    .prologue
    const/4 v0, 0x1

    .line 1170
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v0, :cond_0

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1171
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    :goto_0
    return v0

    .line 1171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 15
    .parameter "positionUs"
    .parameter "elapsedRealtimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 868
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v1, :cond_5

    .line 869
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_1

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 872
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    .line 871
    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v1, :cond_6

    .line 887
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_2

    .line 888
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 889
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 890
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 891
    const/4 v1, 0x1

    .line 949
    :goto_1
    return v1

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 875
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 879
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 882
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    .line 882
    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    goto :goto_0

    .line 893
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 896
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 897
    const/4 v1, 0x0

    goto :goto_1

    .line 901
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v13, v1, v2

    .line 902
    .local v13, outputBuffer:Ljava/nio/ByteBuffer;
    if-eqz v13, :cond_4

    .line 903
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 904
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 924
    .end local v13           #outputBuffer:Ljava/nio/ByteBuffer;
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_c

    .line 926
    :try_start_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 943
    .local v14, processedOutputBuffer:Z
    :goto_2
    if-eqz v14, :cond_d

    .line 944
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 945
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 946
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 908
    .end local v14           #processedOutputBuffer:Z
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    .line 909
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    .line 910
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 911
    :cond_7
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_8

    .line 912
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    .line 913
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 915
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 917
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 919
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 929
    :catch_1
    move-exception v0

    .line 930
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 931
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_b

    .line 933
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 935
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 938
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_c
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v14

    .restart local v14       #processedOutputBuffer:Z
    goto :goto_2

    .line 949
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private feedInputBuffer()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 553
    :cond_0
    const/4 v2, 0x0

    .line 693
    :goto_0
    return v2

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_3

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2

    .line 559
    const/4 v2, 0x0

    goto :goto_0

    .line 561
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 565
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 568
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_4

    .line 575
    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 576
    const/4 v2, 0x0

    goto :goto_0

    .line 571
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 573
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    goto :goto_1

    .line 579
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v2, :cond_6

    .line 580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    sget-object v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v5, v8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 583
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 584
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 585
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 589
    :cond_6
    const/4 v15, 0x0

    .line 590
    .local v15, adaptiveReconfigurationBytes:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_7

    .line 592
    const/16 v20, -0x4

    .line 607
    .local v20, result:I
    :goto_2
    const/4 v2, -0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 608
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 596
    .end local v20           #result:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 597
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 599
    .local v17, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 597
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 601
    .end local v17           #data:[B
    :cond_8
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 603
    .end local v19           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v20

    .restart local v20       #result:I
    goto :goto_2

    .line 610
    :cond_a
    const/4 v2, -0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 615
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 618
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 622
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 623
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 630
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 631
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v2, :cond_e

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 633
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 636
    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_f

    .line 646
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 639
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 641
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 643
    :catch_0
    move-exception v18

    .line 644
    .local v18, e:Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 648
    .end local v18           #e:Landroid/media/MediaCodec$CryptoException;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v2

    if-nez v2, :cond_12

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 650
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 653
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 655
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 657
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v16

    .line 659
    .local v16, bufferEncrypted:Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 660
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_13

    .line 661
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 663
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v2, :cond_15

    if-nez v16, :cond_15

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_14

    .line 666
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 668
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 671
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 672
    .local v6, presentationTimeUs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 679
    if-eqz v16, :cond_17

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v2, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v5

    .line 682
    .local v5, cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 686
    .end local v5           #cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;
    :goto_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 687
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 688
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 693
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 684
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 690
    .end local v6           #presentationTimeUs:J
    :catch_1
    move-exception v18

    .line 691
    .restart local v18       #e:Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4
    .parameter "buffer"
    .parameter "adaptiveReconfigurationBytes"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 699
    .local v0, cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    .line 709
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 706
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 708
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1028
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 1036
    :goto_0
    return-void

    .line 1033
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    goto :goto_0
.end method

.method private processOutputBuffersChanged()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 976
    return-void
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 956
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 957
    .local v0, format:Landroid/media/MediaFormat;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_0

    const-string v1, "width"

    .line 958
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 959
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 961
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 968
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    .line 965
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_0
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 5
    .parameter "presentationTimeUs"

    .prologue
    .line 1041
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1042
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1045
    const/4 v2, 0x1

    .line 1048
    :goto_1
    return v2

    .line 1042
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .parameter "bufferEncrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    .line 717
    .local v0, drmSessionState:I
    if-nez v0, :cond_2

    .line 718
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 720
    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private throwDecoderInitError(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 1
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .parameter "codec"
    .parameter "codecIsAdaptive"
    .parameter "oldFormat"
    .parameter "newFormat"

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected flushCodec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 516
    const-wide v0, -0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 517
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 518
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 519
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 520
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 521
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 524
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 525
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 527
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 538
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 541
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 543
    :cond_1
    return-void

    .line 528
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 536
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    goto :goto_0
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .parameter "mediaCodecSelector"
    .parameter "format"
    .parameter "requiresSecureDecoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    .prologue
    .line 858
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 847
    :goto_0
    return v0

    .line 849
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final maybeInitCodec()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v15, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 298
    .local v15, mimeType:Ljava/lang/String;
    const/4 v14, 0x0

    .line 299
    .local v14, mediaCrypto:Landroid/media/MediaCrypto;
    const/4 v11, 0x0

    .line 300
    .local v11, drmSessionRequiresSecureDecoder:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v12

    .line 302
    .local v12, drmSessionState:I
    if-nez v12, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v6

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 304
    :cond_2
    const/4 v2, 0x3

    if-eq v12, v2, :cond_3

    const/4 v2, 0x4

    if-ne v12, v2, :cond_0

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v14

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v15}, Lcom/google/android/exoplayer2/drm/DrmSession;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v11

    .line 314
    .end local v12           #drmSessionState:I
    :cond_4
    const/4 v10, 0x0

    .line 316
    .local v10, decoderInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    .line 317
    if-nez v10, :cond_5

    if-eqz v11, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    .line 323
    if-eqz v10, :cond_5

    .line 324
    const-string v2, "MediaCodecRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drm session requires secure decoder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_5
    :goto_1
    if-nez v10, :cond_6

    .line 334
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    const v16, -0xc34f

    move/from16 v0, v16

    invoke-direct {v2, v6, v7, v11, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 339
    :cond_6
    iget-object v3, v10, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 340
    .local v3, codecName:Ljava/lang/String;
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 342
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 343
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 344
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 345
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 346
    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 349
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 350
    .local v8, codecInitializingTimestamp:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCodec:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 351
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 352
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 353
    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2, v6, v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 355
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 356
    const-string v2, "startCodec"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 358
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 360
    .local v4, codecInitializedTimestamp:J
    sub-long v6, v4, v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .end local v4           #codecInitializedTimestamp:J
    .end local v8           #codecInitializingTimestamp:J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    add-long v6, v6, v16

    :goto_3
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 370
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 371
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 372
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v6, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    goto/16 :goto_0

    .line 328
    .end local v3           #codecName:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 329
    .local v13, e:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const v7, -0xc34e

    invoke-direct {v2, v6, v13, v11, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto/16 :goto_1

    .line 364
    .end local v13           #e:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    .restart local v3       #codecName:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 365
    .local v13, e:Ljava/lang/Exception;
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v6, v13, v11, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto :goto_2

    .line 369
    .end local v13           #e:Ljava/lang/Exception;
    :cond_7
    const-wide v6, -0x7fffffffffffffffL

    goto :goto_3
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "name"
    .parameter "initializedTimestampMs"
    .parameter "initializationDurationMs"

    .prologue
    .line 737
    return-void
.end method

.method protected onDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 424
    return-void

    .line 419
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 414
    :catchall_1
    move-exception v0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 409
    :catchall_3
    move-exception v0

    .line 410
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 415
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_4

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 419
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 414
    :catchall_5
    move-exception v0

    .line 415
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_5

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 419
    :cond_5
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .parameter "joining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 392
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 7
    .parameter "newFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 746
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 747
    .local v1, oldFormat:Lcom/google/android/exoplayer2/Format;
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 749
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 751
    .local v0, drmInitDataChanged:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 752
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_4

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-nez v2, :cond_2

    .line 754
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v3

    .line 754
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 749
    .end local v0           #drmInitDataChanged:Z
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    .line 757
    .restart local v0       #drmInitDataChanged:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 758
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_3

    .line 759
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 766
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 767
    invoke-virtual {p0, v2, v3, v1, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 768
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 769
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 770
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_5

    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 782
    :goto_4
    return-void

    .line 762
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_2

    :cond_5
    move v2, v5

    .line 770
    goto :goto_3

    .line 773
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_7

    .line 775
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    goto :goto_4

    .line 778
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_4
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .parameter "codec"
    .parameter "outputFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 796
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .parameter "positionUs"
    .parameter "joining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 397
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 401
    :cond_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0
    .parameter "presentationTimeUs"

    .prologue
    .line 818
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 807
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 428
    const-wide v0, -0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 429
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 430
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 435
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 436
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 437
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 438
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    .line 439
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 440
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 441
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 442
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 443
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 444
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 445
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 446
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 447
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 448
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 449
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_0

    .line 460
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 468
    :cond_0
    return-void

    .line 462
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 457
    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 460
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 457
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    .line 460
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_2
    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 457
    :catchall_5
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_3

    .line 460
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_3
    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method public render(JJ)V
    .locals 5
    .parameter "positionUs"
    .parameter "elapsedRealtimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 482
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 489
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 490
    .local v0, result:I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_6

    .line 491
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 503
    .end local v0           #result:I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 504
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_7

    .line 505
    const-string v1, "drainAndFeed"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 506
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 507
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result v1

    if-nez v1, :cond_4

    .line 508
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 512
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_0

    .line 492
    .restart local v0       #result:I
    :cond_6
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 495
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    goto :goto_0

    .line 509
    .end local v0           #result:I
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_5

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->skipToKeyframeBefore(J)V

    goto :goto_1
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1020
    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected abstract supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x4

    return v0
.end method
