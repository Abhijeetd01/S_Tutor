.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.super Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$PlaylistType;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    }
.end annotation


# static fields
.field public static final PLAYLIST_TYPE_EVENT:I = 0x2

.field public static final PLAYLIST_TYPE_UNKNOWN:I = 0x0

.field public static final PLAYLIST_TYPE_VOD:I = 0x1


# instance fields
.field public final discontinuitySequence:I

.field public final durationUs:J

.field public final hasDiscontinuitySequence:Z

.field public final hasEndTag:Z

.field public final hasProgramDateTime:Z

.field public final initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

.field public final mediaSequence:I

.field public final playlistType:I

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final startOffsetUs:J

.field public final startTimeUs:J

.field public final targetDurationUs:J

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V
    .locals 9
    .parameter "playlistType"
    .parameter "baseUri"
    .parameter "startOffsetUs"
    .parameter "startTimeUs"
    .parameter "hasDiscontinuitySequence"
    .parameter "discontinuitySequence"
    .parameter "mediaSequence"
    .parameter "version"
    .parameter "targetDurationUs"
    .parameter "hasEndTag"
    .parameter "hasProgramDateTime"
    .parameter "initializationSegment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JJZIIIJZZ",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p16, segments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    .line 101
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 102
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    .line 103
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    .line 104
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    .line 105
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    .line 106
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 107
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 108
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    .line 109
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 110
    invoke-static/range {p16 .. p16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 111
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 113
    .local v2, last:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 117
    .end local v2           #last:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :goto_0
    const-wide v4, -0x7fffffffffffffffL

    cmp-long v3, p3, v4

    if-nez v3, :cond_2

    const-wide p3, -0x7fffffffffffffffL

    .end local p3
    :cond_0
    :goto_1
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 119
    return-void

    .line 115
    .restart local p3
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0

    .line 117
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-gez v3, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr p3, v4

    goto :goto_1
.end method


# virtual methods
.method public copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 21
    .parameter "startTimeUs"
    .parameter "discontinuitySequence"

    .prologue
    .line 155
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v19, v0

    move-wide/from16 v8, p1

    move/from16 v11, p3

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    return-object v3
.end method

.method public copyWithEndTag()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 20

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_0

    .line 170
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    move-object/from16 p0, v3

    goto :goto_0
.end method

.method public getEndTimeUs()J
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isNewerThan(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    if-eqz p1, :cond_0

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-le v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 137
    :cond_1
    :goto_0
    return v2

    .line 131
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-lt v4, v5, :cond_1

    .line 135
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 136
    .local v1, segmentCount:I
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    .local v0, otherSegmentCount:I
    if-gt v1, v0, :cond_3

    if-ne v1, v0, :cond_1

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method
