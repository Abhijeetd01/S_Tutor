.class Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;
.super Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtilV23"
.end annotation


# instance fields
.field private playbackParams:Landroid/media/PlaybackParams;

.field private playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    .line 1580
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1581
    return-void
.end method

.method private maybeApplyPlaybackParams()V
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1608
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    return v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 0
    .parameter "audioTrack"
    .parameter "needsPassthroughWorkaround"

    .prologue
    .line 1586
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1587
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1588
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .parameter "playbackParams"

    .prologue
    .line 1592
    if-eqz p1, :cond_0

    .line 1593
    .end local p1
    :goto_0
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1594
    .restart local p1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    .line 1595
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1596
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1597
    return-void

    .line 1592
    :cond_0
    new-instance p1, Landroid/media/PlaybackParams;

    .end local p1
    invoke-direct {p1}, Landroid/media/PlaybackParams;-><init>()V

    goto :goto_0
.end method
