.class public final Lcom/google/android/exoplayer2/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1
    .parameter "renderers"
    .parameter "trackSelector"

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1
    .parameter "renderers"
    .parameter "trackSelector"
    .parameter "loadControl"

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)V

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1
    .parameter "context"
    .parameter "trackSelector"
    .parameter "loadControl"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1
    .parameter "context"
    .parameter "trackSelector"
    .parameter "loadControl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            "Lcom/google/android/exoplayer2/LoadControl;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 8
    .parameter "context"
    .parameter "trackSelector"
    .parameter "loadControl"
    .parameter
    .parameter "extensionRendererMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            "Lcom/google/android/exoplayer2/LoadControl;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 9
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
            ">;IJ)",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;,"Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V

    return-object v0
.end method
