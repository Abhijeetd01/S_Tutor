.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$ExtensionRendererMode;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioStreamType:I

.field private audioVolume:F

.field private final componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private final mainHandler:Landroid/os/Handler;

.field private metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

.field private ownsSurface:Z

.field private playbackParamsHolder:Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 12
    .parameter "context"
    .parameter "trackSelector"
    .parameter "loadControl"
    .parameter
    .parameter "extensionRendererMode"
    .parameter "allowedVideoJoiningTimeMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            "Lcom/google/android/exoplayer2/LoadControl;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p4, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    .line 156
    new-instance v1, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 159
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v8, renderersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V

    .line 162
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 165
    const/4 v10, 0x0

    .line 166
    .local v10, videoRendererCount:I
    const/4 v0, 0x0

    .line 167
    .local v0, audioRendererCount:I
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v9, v2, v1

    .line 168
    .local v9, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 167
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    .line 171
    goto :goto_1

    .line 173
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v9           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iput v10, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    .line 178
    iput v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    .line 181
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 183
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 184
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 187
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    invoke-direct {v1, v2, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 188
    return-void

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method private buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V
    .locals 11
    .parameter "context"
    .parameter "mainHandler"
    .parameter
    .parameter "extensionRendererMode"
    .parameter "allowedVideoJoiningTimeMs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p7, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ILcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 629
    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 630
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v9, p7

    .line 629
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ILcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Ljava/util/ArrayList;)V

    .line 631
    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V

    .line 632
    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V

    .line 633
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 634
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v1, :cond_2

    .line 810
    const-string v0, "SimpleExoPlayer"

    const-string v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 818
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 820
    :cond_1
    return-void

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9
    .parameter "surface"
    .parameter "ownsSurface"

    .prologue
    .line 825
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 826
    .local v2, messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 827
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 828
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 829
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 827
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 832
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eq v4, p1, :cond_2

    .line 834
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v4, :cond_1

    .line 835
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 838
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 842
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 843
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    .line 844
    return-void

    .line 840
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_2

    .restart local v3       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_3
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 467
    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 549
    return-void
.end method

.method protected buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ILcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "context"
    .parameter "mainHandler"
    .parameter
    .parameter "extensionRendererMode"
    .parameter "eventListener"
    .parameter "audioProcessors"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p7, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v4, 0x1

    .line 699
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v7

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 698
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    if-nez p4, :cond_0

    .line 753
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 705
    .local v12, extensionRendererIndex:I
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    .line 706
    add-int/lit8 v12, v12, -0x1

    move v13, v12

    .line 710
    .end local v12           #extensionRendererIndex:I
    .local v13, extensionRendererIndex:I
    :goto_1
    :try_start_0
    const-string v1, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 711
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 712
    .local v9, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 714
    .local v10, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p6, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 716
    .local v14, renderer:Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 717
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Loaded LibopusAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move v13, v12

    .line 725
    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #extensionRendererIndex:I
    .end local v14           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v13       #extensionRendererIndex:I
    :goto_2
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.ext.com.google.android.exoplayer2.demo.flac.LibflacAudioRenderer"

    .line 726
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 727
    .restart local v9       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 729
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p6, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 731
    .restart local v14       #renderer:Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    :try_start_3
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 732
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Loaded LibflacAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move v13, v12

    .line 740
    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #extensionRendererIndex:I
    .end local v14           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v13       #extensionRendererIndex:I
    :goto_3
    :try_start_4
    const-string v1, "com.google.android.exoplayer2.ext.com.google.android.exoplayer2.demo.ffmpeg.FfmpegAudioRenderer"

    .line 741
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 742
    .restart local v9       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 744
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p6, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 746
    .restart local v14       #renderer:Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    :try_start_5
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 747
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Loaded FfmpegAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 748
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 718
    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #extensionRendererIndex:I
    .end local v14           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v13       #extensionRendererIndex:I
    :catch_1
    move-exception v1

    move v12, v13

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    :goto_4
    move v13, v12

    .line 722
    .end local v12           #extensionRendererIndex:I
    .restart local v13       #extensionRendererIndex:I
    goto/16 :goto_2

    .line 720
    :catch_2
    move-exception v11

    move v12, v13

    .line 721
    .end local v13           #extensionRendererIndex:I
    .local v11, e:Ljava/lang/Exception;
    .restart local v12       #extensionRendererIndex:I
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 733
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #extensionRendererIndex:I
    .restart local v13       #extensionRendererIndex:I
    :catch_3
    move-exception v1

    move v12, v13

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    :goto_6
    move v13, v12

    .line 737
    .end local v12           #extensionRendererIndex:I
    .restart local v13       #extensionRendererIndex:I
    goto :goto_3

    .line 735
    :catch_4
    move-exception v11

    move v12, v13

    .line 736
    .end local v13           #extensionRendererIndex:I
    .restart local v11       #e:Ljava/lang/Exception;
    .restart local v12       #extensionRendererIndex:I
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 750
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #extensionRendererIndex:I
    .restart local v13       #extensionRendererIndex:I
    :catch_5
    move-exception v11

    move v12, v13

    .line 751
    .end local v13           #extensionRendererIndex:I
    .restart local v11       #e:Ljava/lang/Exception;
    .restart local v12       #extensionRendererIndex:I
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 750
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v9       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v14       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :catch_6
    move-exception v11

    goto :goto_8

    .line 748
    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #extensionRendererIndex:I
    .end local v14           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v13       #extensionRendererIndex:I
    :catch_7
    move-exception v1

    move v12, v13

    .end local v13           #extensionRendererIndex:I
    .restart local v12       #extensionRendererIndex:I
    goto/16 :goto_0

    .line 735
    .restart local v9       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v14       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :catch_8
    move-exception v11

    goto :goto_7

    .line 733
    :catch_9
    move-exception v1

    goto :goto_6

    .line 720
    :catch_a
    move-exception v11

    goto :goto_5

    .line 718
    :catch_b
    move-exception v1

    goto :goto_4

    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v14           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v13, v12

    .end local v12           #extensionRendererIndex:I
    .restart local v13       #extensionRendererIndex:I
    goto/16 :goto_1
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "mainHandler"
    .parameter "extensionRendererMode"
    .parameter "output"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p5, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter "mainHandler"
    .parameter "extensionRendererMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p4, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "mainHandler"
    .parameter "extensionRendererMode"
    .parameter "output"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lcom/google/android/exoplayer2/text/TextRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p5, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ILcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 20
    .parameter "context"
    .parameter "mainHandler"
    .parameter
    .parameter "extensionRendererMode"
    .parameter "eventListener"
    .parameter "allowedVideoJoiningTimeMs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p8, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v11, 0x0

    const/16 v14, 0x32

    move-object/from16 v6, p1

    move-wide/from16 v8, p6

    move-object/from16 v10, p3

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    if-nez p4, :cond_0

    .line 679
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 661
    .local v17, extensionRendererIndex:I
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_1

    .line 662
    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v17

    .line 666
    .end local v17           #extensionRendererIndex:I
    .local v18, extensionRendererIndex:I
    :goto_1
    :try_start_0
    const-string v5, "com.google.android.exoplayer2.ext.com.google.android.exoplayer2.ext.opus.vp9.LibvpxVideoRenderer"

    .line 667
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 668
    .local v4, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 670
    .local v15, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x32

    .line 671
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 670
    invoke-virtual {v15, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    .local v19, renderer:Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v17, v18, 0x1

    .end local v18           #extensionRendererIndex:I
    .restart local v17       #extensionRendererIndex:I
    :try_start_1
    move-object/from16 v0, p8

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 673
    const-string v5, "SimpleExoPlayer"

    const-string v6, "Loaded LibvpxVideoRenderer."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 674
    :catch_0
    move-exception v5

    goto :goto_0

    .line 676
    .end local v4           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v17           #extensionRendererIndex:I
    .end local v19           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v18       #extensionRendererIndex:I
    :catch_1
    move-exception v16

    move/from16 v17, v18

    .line 677
    .end local v18           #extensionRendererIndex:I
    .local v16, e:Ljava/lang/Exception;
    .restart local v17       #extensionRendererIndex:I
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 676
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v19       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :catch_2
    move-exception v16

    goto :goto_2

    .line 674
    .end local v4           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v17           #extensionRendererIndex:I
    .end local v19           #renderer:Lcom/google/android/exoplayer2/Renderer;
    .restart local v18       #extensionRendererIndex:I
    :catch_3
    move-exception v5

    move/from16 v17, v18

    .end local v18           #extensionRendererIndex:I
    .restart local v17       #extensionRendererIndex:I
    goto/16 :goto_0

    :cond_1
    move/from16 v18, v17

    .end local v17           #extensionRendererIndex:I
    .restart local v18       #extensionRendererIndex:I
    goto :goto_1
.end method

.method public clearVideoSurface()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 224
    return-void
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;->params:Landroid/media/PlaybackParams;

    goto :goto_0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .parameter "mediaSource"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 482
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 1
    .parameter "mediaSource"
    .parameter "resetPosition"
    .parameter "resetState"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 487
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 534
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 537
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 539
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 472
    return-void
.end method

.method public seekTo(IJ)V
    .locals 2
    .parameter "windowIndex"
    .parameter "positionMs"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 522
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .parameter "positionMs"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 517
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 507
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1
    .parameter "windowIndex"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    .line 512
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 544
    return-void
.end method

.method public setAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 442
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 10
    .parameter "audioStreamType"

    .prologue
    .line 304
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 305
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 306
    .local v2, messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 307
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 308
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 309
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 307
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 312
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 313
    return-void

    .restart local v3       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method

.method public setMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .line 460
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .parameter "playWhenReady"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 492
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 9
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 360
    new-instance v4, Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;-><init>(Landroid/media/PlaybackParams;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    .line 364
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 365
    .local v2, messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 366
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 367
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 368
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x3

    invoke-direct {v7, v3, v8, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 366
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1

    .line 362
    .end local v1           #count:I
    .end local v2           #messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lcom/google/android/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    goto :goto_0

    .line 371
    .restart local v1       #count:I
    .restart local v2       #messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 372
    return-void

    .restart local v3       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_2
.end method

.method public setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .line 451
    return-void
.end method

.method public setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 433
    return-void
.end method

.method public setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 424
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10
    .parameter "videoScalingMode"

    .prologue
    .line 199
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 200
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 201
    .local v2, messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 202
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 203
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 204
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x5

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 202
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 208
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 209
    return-void

    .restart local v3       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 242
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "surfaceView"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 269
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 5
    .parameter "textureView"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 279
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 280
    if-nez p1, :cond_0

    .line 281
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 290
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 284
    const-string v2, "SimpleExoPlayer"

    const-string v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 287
    .local v0, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 287
    :cond_2
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 10
    .parameter "audioVolume"

    .prologue
    .line 328
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 329
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 330
    .local v2, messages:[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 331
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 332
    .local v3, renderer:Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 333
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 331
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 336
    .end local v3           #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 337
    return-void

    .restart local v3       #renderer:Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 527
    return-void
.end method
