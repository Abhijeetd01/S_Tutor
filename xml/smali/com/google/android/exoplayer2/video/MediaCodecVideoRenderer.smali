.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I = null

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private consecutiveDroppedFrameCount:I

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private joiningDeadlineMs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedUnappliedRotationDegrees:I

.field private lastReportedWidth:I

.field private final maxDroppedFramesToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private scalingMode:I

.field private streamFormats:[Lcom/google/android/exoplayer2/Format;

.field private surface:Landroid/view/Surface;

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x7t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
        0xa0t 0x5t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2
    .parameter "context"
    .parameter "mediaCodecSelector"

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .locals 9
    .parameter "context"
    .parameter "mediaCodecSelector"
    .parameter "allowedJoiningTimeMs"

    .prologue
    const/4 v6, 0x0

    .line 113
    const/4 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 11
    .parameter "context"
    .parameter "mediaCodecSelector"
    .parameter "allowedJoiningTimeMs"
    .parameter "eventHandler"
    .parameter "eventListener"
    .parameter "maxDroppedFrameCountToNotify"

    .prologue
    .line 130
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 5
    .parameter "context"
    .parameter "mediaCodecSelector"
    .parameter "allowedJoiningTimeMs"
    .parameter
    .parameter "playClearSamplesWithoutKeys"
    .parameter "eventHandler"
    .parameter "eventListener"
    .parameter "maxDroppedFramesToNotify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p5, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v3, -0x1

    const/high16 v2, -0x4080

    .line 156
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 157
    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 158
    iput p9, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 161
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    .line 162
    const-wide v0, -0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 163
    iput v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 164
    iput v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 165
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 166
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 169
    return-void
.end method

.method private static areAdaptationCompatible(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2
    .parameter "first"
    .parameter "second"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 792
    :goto_0
    return v0

    .line 793
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLastReportedVideoSize()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    .line 547
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    .line 548
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 549
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    .line 550
    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 3

    .prologue
    .line 524
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 529
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 532
    .local v0, codec:Landroid/media/MediaCodec;
    if-eqz v0, :cond_0

    .line 533
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 536
    .end local v0           #codec:Landroid/media/MediaCodec;
    :cond_0
    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2
    .parameter "mediaFormat"
    .parameter "tunnelingAudioSessionId"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 604
    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 605
    const-string v0, "audio-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 606
    return-void
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    .prologue
    .line 779
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "foster"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3
    .parameter "codec"
    .parameter "bufferIndex"

    .prologue
    .line 489
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 491
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    .line 493
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 494
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    .line 497
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-ne v0, v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 500
    :cond_0
    return-void
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 20
    .parameter "codecInfo"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 664
    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-le v12, v13, :cond_2

    const/4 v9, 0x1

    .line 665
    .local v9, isVerticalVideo:Z
    :goto_0
    if-eqz v9, :cond_3

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 666
    .local v6, formatLongEdgePx:I
    :goto_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 667
    .local v7, formatShortEdgePx:I
    :goto_2
    int-to-float v12, v7

    int-to-float v13, v6

    div-float v5, v12, v13

    .line 668
    .local v5, aspectRatio:F
    sget-object v15, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v12, 0x0

    move v14, v12

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_c

    aget v10, v15, v14

    .line 669
    .local v10, longEdgePx:I
    int-to-float v12, v10

    mul-float/2addr v12, v5

    float-to-int v11, v12

    .line 670
    .local v11, shortEdgePx:I
    if-le v10, v6, :cond_0

    if-gt v11, v7, :cond_5

    .line 672
    :cond_0
    const/4 v4, 0x0

    .line 690
    .end local v10           #longEdgePx:I
    .end local v11           #shortEdgePx:I
    :cond_1
    :goto_4
    return-object v4

    .line 664
    .end local v5           #aspectRatio:F
    .end local v6           #formatLongEdgePx:I
    .end local v7           #formatShortEdgePx:I
    .end local v9           #isVerticalVideo:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 665
    .restart local v9       #isVerticalVideo:Z
    :cond_3
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_1

    .line 666
    .restart local v6       #formatLongEdgePx:I
    :cond_4
    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_2

    .line 673
    .restart local v5       #aspectRatio:F
    .restart local v7       #formatShortEdgePx:I
    .restart local v10       #longEdgePx:I
    .restart local v11       #shortEdgePx:I
    :cond_5
    sget v12, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_9

    .line 674
    if-eqz v9, :cond_7

    move v13, v11

    :goto_5
    if-eqz v9, :cond_8

    move v12, v10

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v4

    .line 676
    .local v4, alignedSize:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 677
    .local v8, frameRate:F
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v4, Landroid/graphics/Point;->y:I

    float-to-double v0, v8

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v12

    if-nez v12, :cond_1

    .line 668
    .end local v4           #alignedSize:Landroid/graphics/Point;
    .end local v8           #frameRate:F
    :cond_6
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    goto :goto_3

    :cond_7
    move v13, v10

    .line 674
    goto :goto_5

    :cond_8
    move v12, v11

    goto :goto_6

    .line 682
    :cond_9
    const/16 v12, 0x10

    invoke-static {v10, v12}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v12

    mul-int/lit8 v10, v12, 0x10

    .line 683
    const/16 v12, 0x10

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v12

    mul-int/lit8 v11, v12, 0x10

    .line 684
    mul-int v12, v10, v11

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v13

    if-gt v12, v13, :cond_6

    .line 685
    new-instance v4, Landroid/graphics/Point;

    if-eqz v9, :cond_a

    move v12, v11

    :goto_7
    if-eqz v9, :cond_b

    .end local v10           #longEdgePx:I
    :goto_8
    invoke-direct {v4, v12, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .restart local v10       #longEdgePx:I
    :cond_a
    move v12, v10

    goto :goto_7

    :cond_b
    move v10, v11

    goto :goto_8

    .line 690
    .end local v10           #longEdgePx:I
    .end local v11           #shortEdgePx:I
    :cond_c
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private static getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 12
    .parameter "codecInfo"
    .parameter "format"
    .parameter "streamFormats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 620
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 621
    .local v4, maxWidth:I
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 622
    .local v2, maxHeight:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 623
    .local v3, maxInputSize:I
    array-length v6, p2

    if-ne v6, v8, :cond_0

    .line 626
    new-instance v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 649
    :goto_0
    return-object v6

    .line 628
    :cond_0
    const/4 v1, 0x0

    .line 629
    .local v1, haveUnknownDimensions:Z
    array-length v10, p2

    move v9, v7

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v5, p2, v9

    .line 630
    .local v5, streamFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 631
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v6, v11, :cond_1

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v6, v11, :cond_3

    :cond_1
    move v6, v8

    :goto_2
    or-int/2addr v1, v6

    .line 633
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 634
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 635
    invoke-static {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 629
    :cond_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_1

    :cond_3
    move v6, v7

    .line 631
    goto :goto_2

    .line 638
    .end local v5           #streamFormat:Lcom/google/android/exoplayer2/Format;
    :cond_4
    if-eqz v1, :cond_5

    .line 639
    const-string v6, "MediaCodecVideoRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v0

    .line 641
    .local v0, codecMaxSize:Landroid/graphics/Point;
    if-eqz v0, :cond_5

    .line 642
    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 643
    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 644
    iget-object v6, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 645
    invoke-static {v6, v4, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Ljava/lang/String;II)I

    move-result v6

    .line 644
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 646
    const-string v6, "MediaCodecVideoRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Codec max resolution adjusted to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0           #codecMaxSize:Landroid/graphics/Point;
    :cond_5
    new-instance v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    goto/16 :goto_0
.end method

.method private static getMaxInputSize(Lcom/google/android/exoplayer2/Format;)I
    .locals 3
    .parameter "format"

    .prologue
    .line 701
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 703
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 705
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method private static getMaxInputSize(Ljava/lang/String;II)I
    .locals 6
    .parameter "sampleMimeType"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v5, 0x10

    const/4 v2, -0x1

    .line 718
    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v2

    .line 726
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 729
    :pswitch_0
    mul-int v0, p1, p2

    .line 730
    .local v0, maxPixels:I
    const/4 v1, 0x2

    .line 757
    .local v1, minCompressionRatio:I
    :goto_2
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x2

    div-int/2addr v2, v3

    goto :goto_0

    .line 726
    .end local v0           #maxPixels:I
    .end local v1           #minCompressionRatio:I
    :sswitch_0
    const-string v3, "video/3gpp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "video/mp4v-es"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "video/avc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "video/hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "video/x-vnd.on2.com.google.android.exoplayer2.ext.opus.vp9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    .line 733
    :pswitch_1
    const-string v3, "BRAVIA 4K 2015"

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 739
    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-static {p2, v5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v0, v2, 0x10

    .line 740
    .restart local v0       #maxPixels:I
    const/4 v1, 0x2

    .line 741
    .restart local v1       #minCompressionRatio:I
    goto :goto_2

    .line 744
    .end local v0           #maxPixels:I
    .end local v1           #minCompressionRatio:I
    :pswitch_2
    mul-int v0, p1, p2

    .line 745
    .restart local v0       #maxPixels:I
    const/4 v1, 0x2

    .line 746
    .restart local v1       #minCompressionRatio:I
    goto :goto_2

    .line 749
    .end local v0           #maxPixels:I
    .end local v1           #minCompressionRatio:I
    :pswitch_3
    mul-int v0, p1, p2

    .line 750
    .restart local v0       #maxPixels:I
    const/4 v1, 0x4

    .line 751
    .restart local v1       #minCompressionRatio:I
    goto :goto_2

    .line 726
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        -0x10decb4b -> :sswitch_5
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static getMediaFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;ZI)Landroid/media/MediaFormat;
    .locals 3
    .parameter "format"
    .parameter "codecMaxValues"
    .parameter "deviceNeedsAutoFrcWorkaround"
    .parameter "tunnelingAudioSessionId"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    .line 580
    .local v0, frameworkMediaFormat:Landroid/media/MediaFormat;
    const-string v1, "max-width"

    iget v2, p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 581
    const-string v1, "max-height"

    iget v2, p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 583
    iget v1, p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 584
    const-string v1, "max-input-size"

    iget v2, p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 587
    :cond_0
    if-eqz p2, :cond_1

    .line 588
    const-string v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 591
    :cond_1
    if-eqz p3, :cond_2

    .line 592
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    .line 594
    :cond_2
    return-object v0
.end method

.method private static getPixelWidthHeightRatio(Lcom/google/android/exoplayer2/Format;)F
    .locals 2
    .parameter "format"

    .prologue
    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private static getRotationDegrees(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .parameter "format"

    .prologue
    .line 801
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .prologue
    .line 566
    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v4, :cond_0

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 568
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v0, v2, v4

    .line 569
    .local v0, elapsedMs:J
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 570
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 571
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 573
    .end local v0           #elapsedMs:J
    .end local v2           #now:J
    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .prologue
    .line 553
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 558
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    .line 559
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    .line 560
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    .line 561
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 563
    :cond_1
    return-void
.end method

.method private renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2
    .parameter "codec"
    .parameter "bufferIndex"

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 504
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 506
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 509
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 510
    return-void
.end method

.method private renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .parameter "codec"
    .parameter "bufferIndex"
    .parameter "releaseTimeNs"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 515
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 517
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 521
    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .parameter "codec"
    .parameter "surface"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 600
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 4
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v2, p1, :cond_1

    .line 303
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v1

    .line 305
    .local v1, state:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 307
    .local v0, codec:Landroid/media/MediaCodec;
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 308
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 317
    .end local v0           #codec:Landroid/media/MediaCodec;
    .end local v1           #state:I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 319
    return-void

    .line 310
    .restart local v0       #codec:Landroid/media/MediaCodec;
    .restart local v1       #state:I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method private static setVideoScalingMode(Landroid/media/MediaCodec;I)V
    .locals 0
    .parameter "codec"
    .parameter "scalingMode"

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 762
    return-void
.end method

.method private skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2
    .parameter "codec"
    .parameter "bufferIndex"

    .prologue
    .line 482
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 484
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 486
    return-void
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2
    .parameter "codec"
    .parameter "codecIsAdaptive"
    .parameter "oldFormat"
    .parameter "newFormat"

    .prologue
    .line 392
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget v1, p4, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p4, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 4
    .parameter "codecInfo"
    .parameter "codec"
    .parameter "format"
    .parameter "crypto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, p3, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 330
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    invoke-static {p3, v1, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;ZI)Landroid/media/MediaFormat;

    move-result-object v0

    .line 332
    .local v0, mediaFormat:Landroid/media/MediaFormat;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 333
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 336
    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 288
    check-cast p2, Landroid/view/Surface;

    .end local p2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local p2
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 290
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 291
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 292
    .local v0, codec:Landroid/media/MediaCodec;
    if-eqz v0, :cond_0

    .line 293
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    goto :goto_0

    .line 296
    .end local v0           #codec:Landroid/media/MediaCodec;
    .restart local p2
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL

    .line 237
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 250
    :cond_1
    :goto_0
    return v0

    .line 241
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 243
    goto :goto_0

    .line 244
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 249
    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    move v0, v1

    .line 250
    goto :goto_0
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    .line 543
    :cond_0
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "name"
    .parameter "initializedTimestampMs"
    .parameter "initializationDurationMs"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 342
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x4080

    .line 270
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 271
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 272
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 273
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 278
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 283
    return-void

    .line 280
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 281
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .parameter "joining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 215
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    .line 218
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .parameter "newFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 348
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getPixelWidthHeightRatio(Lcom/google/android/exoplayer2/Format;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 349
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    .line 350
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4
    .parameter "codec"
    .parameter "outputFormat"

    .prologue
    .line 361
    const-string v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "crop-left"

    .line 362
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "crop-bottom"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "crop-top"

    .line 363
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 364
    .local v0, hasCrop:Z
    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "crop-right"

    .line 365
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 366
    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 367
    if-eqz v0, :cond_4

    const-string v2, "crop-bottom"

    .line 368
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-top"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 369
    :goto_2
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 370
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 371
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 375
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 376
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 377
    .local v1, rotatedHeight:I
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 378
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 379
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 386
    .end local v1           #rotatedHeight:I
    :cond_1
    :goto_3
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    .line 387
    return-void

    .line 363
    .end local v0           #hasCrop:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    .restart local v0       #hasCrop:Z
    :cond_3
    const-string v2, "width"

    .line 366
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 368
    :cond_4
    const-string v2, "height"

    .line 369
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 383
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    goto :goto_3
.end method

.method protected onPositionReset(JZ)V
    .locals 5
    .parameter "positionUs"
    .parameter "joining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 231
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 233
    return-void

    .line 232
    :cond_0
    const-wide v0, -0x7fffffffffffffffL

    goto :goto_0
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 354
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 357
    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 259
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .prologue
    .line 263
    const-wide v0, -0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 265
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 266
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .parameter "formats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 223
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;)V

    .line 224
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 23
    .parameter "positionUs"
    .parameter "elapsedRealtimeUs"
    .parameter "codec"
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "bufferFlags"
    .parameter "bufferPresentationTimeUs"
    .parameter "shouldSkip"

    .prologue
    .line 403
    if-eqz p11, :cond_0

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 405
    const/4 v9, 0x1

    .line 465
    :goto_0
    return v9

    .line 408
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v9, :cond_2

    .line 409
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_1

    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 414
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 412
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v9

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    .line 418
    const/4 v9, 0x0

    goto :goto_0

    .line 422
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v12, v18, p3

    .line 423
    .local v12, elapsedSinceStartOfLoopUs:J
    sub-long v18, p9, p1

    sub-long v10, v18, v12

    .line 426
    .local v10, earlyUs:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 427
    .local v14, systemTimeNs:J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v10

    add-long v16, v14, v18

    .line 430
    .local v16, unadjustedFrameReleaseTimeNs:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    move-wide/from16 v0, p9

    move-wide/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v6

    .line 432
    .local v6, adjustedReleaseTimeNs:J
    sub-long v18, v6, v14

    const-wide/16 v20, 0x3e8

    div-long v10, v18, v20

    .line 434
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 437
    const/4 v9, 0x1

    goto :goto_0

    .line 440
    :cond_4
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    .line 442
    const-wide/32 v18, 0xc350

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 444
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 448
    :cond_5
    const-wide/16 v18, 0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    .line 449
    const-wide/16 v18, 0x2af8

    cmp-long v9, v10, v18

    if-lez v9, :cond_6

    .line 454
    const-wide/16 v18, 0x2710

    sub-long v18, v10, v18

    const-wide/16 v20, 0x3e8

    :try_start_0
    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 460
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v8

    .line 456
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 465
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 3
    .parameter "earlyUs"
    .parameter "elapsedRealtimeUs"

    .prologue
    .line 478
    const-wide/16 v0, -0x7530

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 16
    .parameter "mediaCodecSelector"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 175
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 176
    const/4 v11, 0x0

    .line 208
    :goto_0
    return v11

    .line 178
    :cond_0
    const/4 v9, 0x0

    .line 179
    .local v9, requiresSecureDecryption:Z
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 180
    .local v5, drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v5, :cond_1

    .line 181
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v11, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v7, v11, :cond_1

    .line 182
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v11

    iget-boolean v11, v11, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v9, v11

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 185
    .end local v7           #i:I
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v4

    .line 187
    .local v4, decoderInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-nez v4, :cond_2

    .line 188
    const/4 v11, 0x1

    goto :goto_0

    .line 191
    :cond_2
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v3

    .line 192
    .local v3, decoderCapable:Z
    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v11, :cond_3

    .line 193
    sget v11, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_4

    .line 194
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    float-to-double v14, v13

    invoke-virtual {v4, v11, v12, v14, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v3

    .line 205
    :cond_3
    :goto_2
    iget-boolean v11, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz v11, :cond_6

    const/16 v2, 0x8

    .line 206
    .local v2, adaptiveSupport:I
    :goto_3
    iget-boolean v11, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    if-eqz v11, :cond_7

    const/16 v10, 0x10

    .line 207
    .local v10, tunnelingSupport:I
    :goto_4
    if-eqz v3, :cond_8

    const/4 v6, 0x3

    .line 208
    .local v6, formatSupport:I
    :goto_5
    or-int v11, v2, v10

    or-int/2addr v11, v6

    goto :goto_0

    .line 197
    .end local v2           #adaptiveSupport:I
    .end local v6           #formatSupport:I
    .end local v10           #tunnelingSupport:I
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int/2addr v11, v12

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v12

    if-gt v11, v12, :cond_5

    const/4 v3, 0x1

    .line 198
    :goto_6
    if-nez v3, :cond_3

    .line 199
    const-string v11, "MediaCodecVideoRenderer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 205
    :cond_6
    const/4 v2, 0x4

    goto :goto_3

    .line 206
    .restart local v2       #adaptiveSupport:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 207
    .restart local v10       #tunnelingSupport:I
    :cond_8
    const/4 v6, 0x2

    goto :goto_5
.end method
