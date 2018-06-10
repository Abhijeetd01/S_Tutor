.class final Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingChildPrepareCount:I

.field public final periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .parameter "periods"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .parameter "positionUs"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .parameter "positionUs"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 134
    .local v0, period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000

    .line 171
    const-wide v0, 0x7fffffffffffffffL

    .line 172
    .local v0, bufferedPositionUs:J
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v9, v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_1

    aget-object v2, v8, v3

    .line 173
    .local v2, period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    .line 174
    .local v4, rendererBufferedPositionUs:J
    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    .line 175
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 172
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v2           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    .end local v4           #rendererBufferedPositionUs:J
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    move-wide v0, v6

    .end local v0           #bufferedPositionUs:J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 58
    .local v0, period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_0
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .parameter "ignored"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 13
    .parameter "ignored"

    .prologue
    const/4 v8, 0x0

    .line 197
    iget v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    if-lez v9, :cond_0

    .line 215
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v4, 0x0

    .line 201
    .local v4, totalTrackGroupCount:I
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v11, v10

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v1, v10, v9

    .line 202
    .local v1, period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v12

    iget v12, v12, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v12

    .line 201
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 204
    .end local v1           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_1
    new-array v5, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 205
    .local v5, trackGroupArray:[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 206
    .local v6, trackGroupIndex:I
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v1, v9, v8

    .line 207
    .restart local v1       #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 208
    .local v3, periodTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget v2, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 209
    .local v2, periodTrackGroupCount:I
    const/4 v0, 0x0

    .local v0, j:I
    move v7, v6

    .end local v6           #trackGroupIndex:I
    .local v7, trackGroupIndex:I
    :goto_3
    if-ge v0, v2, :cond_2

    .line 210
    add-int/lit8 v6, v7, 0x1

    .end local v7           #trackGroupIndex:I
    .restart local v6       #trackGroupIndex:I
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    aput-object v11, v5, v7

    .line 209
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6           #trackGroupIndex:I
    .restart local v7       #trackGroupIndex:I
    goto :goto_3

    .line 206
    :cond_2
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7           #trackGroupIndex:I
    .restart local v6       #trackGroupIndex:I
    goto :goto_2

    .line 213
    .end local v0           #j:I
    .end local v1           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    .end local v2           #periodTrackGroupCount:I
    .end local v3           #periodTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_3
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 214
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v8, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    .line 50
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 51
    .local v0, period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0           #period:Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 10

    .prologue
    const-wide v8, -0x7fffffffffffffffL

    const/4 v5, 0x0

    .line 150
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v5

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 152
    .local v2, positionUs:J
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 154
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Child reported discontinuity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    .line 159
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v0, v6, v4

    .line 160
    .local v0, enabledPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v8, v8, v5

    if-eq v0, v8, :cond_2

    .line 161
    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_2

    .line 162
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Children seeked to different positions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    .end local v0           #enabledPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_3
    return-wide v2
.end method

.method public seekToUs(J)J
    .locals 5
    .parameter "positionUs"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 185
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children seeked to different positions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .parameter "selections"
    .parameter "mayRetainStreamFlags"
    .parameter "streams"
    .parameter "streamResetFlags"
    .parameter "positionUs"

    .prologue
    .line 71
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 72
    .local v17, streamChildIndices:[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 73
    .local v16, selectionChildIndices:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_3

    .line 74
    aget-object v3, p3, v10

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 75
    :goto_1
    aput v3, v17, v10

    .line 76
    const/4 v3, -0x1

    aput v3, v16, v10

    .line 77
    aget-object v3, p1, v10

    if-eqz v3, :cond_0

    .line 78
    aget-object v3, p1, v10

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v18

    .line 79
    .local v18, trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v11, v3, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v11

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 81
    aput v11, v16, v10

    .line 73
    .end local v11           #j:I
    .end local v18           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    .line 75
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 79
    .restart local v11       #j:I
    .restart local v18       #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 87
    .end local v11           #j:I
    .end local v18           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 89
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 90
    .local v12, newStreams:[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 91
    .local v6, childStreams:[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 92
    .local v4, childSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v2, enabledPeriodsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v10, v3, :cond_f

    .line 94
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_6

    .line 95
    aget v3, v17, v11

    if-ne v3, v10, :cond_4

    aget-object v3, p3, v11

    :goto_5
    aput-object v3, v6, v11

    .line 96
    aget v3, v16, v11

    if-ne v3, v10, :cond_5

    aget-object v3, p1, v11

    :goto_6
    aput-object v3, v4, v11

    .line 94
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 95
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 96
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v14

    .line 100
    .local v14, selectPositionUs:J
    if-nez v10, :cond_9

    .line 101
    move-wide/from16 p5, v14

    .line 105
    :cond_7
    const/4 v13, 0x0

    .line 106
    .local v13, periodEnabled:Z
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_d

    .line 107
    aget v3, v16, v11

    if-ne v3, v10, :cond_b

    .line 109
    aget-object v3, v6, v11

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_8
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 110
    aget-object v3, v6, v11

    aput-object v3, v12, v11

    .line 111
    const/4 v13, 0x1

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_8
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 102
    .end local v13           #periodEnabled:Z
    :cond_9
    cmp-long v3, v14, p5

    if-eqz v3, :cond_7

    .line 103
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Children enabled at different positions"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .restart local v13       #periodEnabled:Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    .line 113
    :cond_b
    aget v3, v17, v11

    if-ne v3, v10, :cond_8

    .line 115
    aget-object v3, v6, v11

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_a
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    goto :goto_a

    .line 118
    :cond_d
    if-eqz v13, :cond_e

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 123
    .end local v11           #j:I
    .end local v13           #periodEnabled:Z
    .end local v14           #selectPositionUs:J
    :cond_f
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    new-instance v3, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 128
    return-wide p5
.end method
