.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public volatile bufferedPositionUs:J

.field public final periodIndex:I

.field public volatile positionUs:J

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .parameter "periodIndex"
    .parameter "startPositionUs"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    .line 60
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    .line 61
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 62
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    .line 63
    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .locals 4
    .parameter "periodIndex"

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    .line 67
    .local v0, playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 68
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    .line 69
    return-object v0
.end method
