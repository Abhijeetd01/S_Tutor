.class public Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;
    }
.end annotation


# instance fields
.field private allowPositionDiscontinuity:Z

.field private final audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

.field private channelCount:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private currentPositionUs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2
    .parameter "mediaCodecSelector"

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 6
    .parameter "mediaCodecSelector"
    .parameter "eventHandler"
    .parameter "eventListener"

    .prologue
    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 6
    .parameter "mediaCodecSelector"
    .parameter
    .parameter "playClearSamplesWithoutKeys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v4, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 8
    .parameter "mediaCodecSelector"
    .parameter
    .parameter "playClearSamplesWithoutKeys"
    .parameter "eventHandler"
    .parameter "eventListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v6, 0x0

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 3
    .parameter "mediaCodecSelector"
    .parameter
    .parameter "playClearSamplesWithoutKeys"
    .parameter "eventHandler"
    .parameter "eventListener"
    .parameter "audioCapabilities"
    .parameter "audioProcessors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            "[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack;

    new-instance v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V

    invoke-direct {v0, p6, p7, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    .line 136
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .locals 2
    .parameter "codecName"

    .prologue
    .line 413
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "samsung"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5
    .parameter "codecInfo"
    .parameter "codec"
    .parameter "format"
    .parameter "crypto"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 193
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    iget-object v2, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 2
    .parameter "mediaCodecSelector"
    .parameter "format"
    .parameter "requiresSecureDecoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 169
    .local v0, passthroughDecoderInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 175
    .end local v0           #passthroughDecoderInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 340
    .local v0, newCurrentPositionUs:J
    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 341
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .line 342
    .end local v0           #newCurrentPositionUs:J
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 343
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 345
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 341
    .restart local v0       #newCurrentPositionUs:J
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 342
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3
    .parameter "messageType"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 400
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 403
    .end local p2
    :goto_0
    return-void

    .line 390
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 393
    .restart local p2
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 396
    .restart local p2
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    .local v0, streamType:I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setStreamType(I)V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .parameter "audioSessionId"

    .prologue
    .line 264
    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0
    .parameter "bufferSize"
    .parameter "bufferSizeMs"
    .parameter "elapsedSinceLastFeedMs"

    .prologue
    .line 279
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "name"
    .parameter "initializedTimestampMs"
    .parameter "initializationDurationMs"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 215
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 325
    return-void

    .line 321
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 321
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 3
    .parameter "joining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 284
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v1

    iget v0, v1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 286
    .local v0, tunnelingAudioSessionId:I
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->enableTunnelingV21(I)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->disableTunneling()V

    goto :goto_0
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .parameter "newFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 223
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 225
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    .line 226
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 11
    .parameter "codec"
    .parameter "outputFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v10, 0x0

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 232
    .local v10, passthrough:Z
    :cond_0
    if-eqz v10, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, mimeType:Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_2

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 235
    .local v8, format:Landroid/media/MediaFormat;
    :goto_1
    const-string v0, "channel-count"

    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, channelCount:I
    const-string v0, "sample-rate"

    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, sampleRate:I
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz v0, :cond_3

    if-ne v2, v5, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge v0, v5, :cond_3

    .line 239
    iget v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    new-array v6, v0, [I

    .line 240
    .local v6, channelMap:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge v9, v0, :cond_4

    .line 241
    aput v9, v6, v9

    .line 240
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 232
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v2           #channelCount:I
    .end local v3           #sampleRate:I
    .end local v6           #channelMap:[I
    .end local v8           #format:Landroid/media/MediaFormat;
    .end local v9           #i:I
    :cond_1
    const-string v1, "audio/raw"

    goto :goto_0

    .restart local v1       #mimeType:Ljava/lang/String;
    :cond_2
    move-object v8, p2

    .line 234
    goto :goto_1

    .line 244
    .restart local v2       #channelCount:I
    .restart local v3       #sampleRate:I
    .restart local v8       #format:Landroid/media/MediaFormat;
    :cond_3
    const/4 v6, 0x0

    .line 248
    .restart local v6       #channelMap:[I
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v7

    .line 250
    .local v7, e:Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
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
    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 297
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 299
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 305
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->pause()V

    .line 310
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 311
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 5
    .parameter "positionUs"
    .parameter "elapsedRealtimeUs"
    .parameter "codec"
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "bufferFlags"
    .parameter "bufferPresentationTimeUs"
    .parameter "shouldSkip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v3, :cond_0

    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 374
    :goto_0
    return v1

    .line 358
    :cond_0
    if-eqz p11, :cond_1

    .line 359
    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 360
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 361
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleDiscontinuity()V

    goto :goto_0

    .line 366
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v3, p6, p9, p10}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const/4 v2, 0x0

    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 368
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 374
    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected renderToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 10
    .parameter "mediaCodecSelector"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x15

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 142
    iget-object v3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 143
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 161
    :goto_0
    return v5

    .line 146
    :cond_0
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v7, v9, :cond_1

    const/16 v4, 0x10

    .line 147
    .local v4, tunnelingSupport:I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 148
    or-int/lit8 v5, v4, 0x4

    or-int/lit8 v5, v5, 0x3

    goto :goto_0

    .end local v4           #tunnelingSupport:I
    :cond_1
    move v4, v5

    .line 146
    goto :goto_1

    .line 150
    .restart local v4       #tunnelingSupport:I
    :cond_2
    invoke-interface {p1, v3, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 151
    .local v1, decoderInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-nez v1, :cond_3

    move v5, v6

    .line 152
    goto :goto_0

    .line 155
    :cond_3
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v7, v9, :cond_5

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v7, v8, :cond_4

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 157
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    iget v7, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v7, v8, :cond_5

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 159
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v0, v6

    .line 160
    .local v0, decoderCapable:Z
    :goto_2
    if-eqz v0, :cond_7

    const/4 v2, 0x3

    .line 161
    .local v2, formatSupport:I
    :goto_3
    or-int/lit8 v5, v4, 0x4

    or-int/2addr v5, v2

    goto :goto_0

    .end local v0           #decoderCapable:Z
    .end local v2           #formatSupport:I
    :cond_6
    move v0, v5

    .line 159
    goto :goto_2

    .line 160
    .restart local v0       #decoderCapable:Z
    :cond_7
    const/4 v2, 0x2

    goto :goto_3
.end method
