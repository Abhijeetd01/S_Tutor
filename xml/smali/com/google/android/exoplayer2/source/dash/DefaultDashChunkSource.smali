.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndex:I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IILcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;JIZZ)V
    .locals 13
    .parameter "manifestLoaderErrorThrower"
    .parameter "manifest"
    .parameter "periodIndex"
    .parameter "adaptationSetIndex"
    .parameter "trackSelection"
    .parameter "dataSource"
    .parameter "elapsedRealtimeOffsetMs"
    .parameter "maxSegmentsPerLoad"
    .parameter "enableEventMessageTrack"
    .parameter "enableCea608Track"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 120
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 121
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    .line 122
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 123
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 124
    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 125
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 126
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 128
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 129
    .local v4, periodDurationUs:J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getAdaptationSet()Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v2

    .line 130
    .local v2, adaptationSet:Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v11, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 131
    .local v11, representations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {p5 .. p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 132
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v3, v3

    if-ge v10, v3, :cond_0

    .line 133
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 134
    .local v6, representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget v9, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZI)V

    aput-object v3, v12, v10

    .line 132
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 137
    .end local v6           #representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    return-void
.end method

.method private getAdaptationSet()Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    return-object v0
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 307
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 310
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 12
    .parameter "representationHolder"
    .parameter "dataSource"
    .parameter "trackFormat"
    .parameter "trackSelectionReason"
    .parameter "trackSelectionData"
    .parameter "initializationUri"
    .parameter "indexUri"

    .prologue
    .line 318
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v10, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 319
    .local v10, baseUrl:Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 322
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v11

    .line 323
    .local v11, requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v11, :cond_0

    .line 324
    move-object/from16 v11, p5

    .line 329
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 330
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 331
    .local v2, dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v3

    .line 327
    .end local v2           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v11           #requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    move-object/from16 v11, p6

    .restart local v11       #requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_0
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 27
    .parameter "representationHolder"
    .parameter "dataSource"
    .parameter "trackFormat"
    .parameter "trackSelectionReason"
    .parameter "trackSelectionData"
    .parameter "firstSegmentNum"
    .parameter "maxSegmentCount"

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v25, v0

    .line 339
    .local v25, representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v12

    .line 340
    .local v12, startTimeUs:J
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v26

    .line 341
    .local v26, segmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 342
    .local v21, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v5, :cond_0

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 344
    .local v14, endTimeUs:J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 345
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 346
    .local v4, dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->trackType:I

    move/from16 v17, v0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, p5

    move-object/from16 v18, p2

    invoke-direct/range {v6 .. v18}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIILcom/google/android/exoplayer2/Format;)V

    .line 365
    :goto_0
    return-object v6

    .line 350
    .end local v4           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v14           #endTimeUs:J
    :cond_0
    const/16 v17, 0x1

    .line 351
    .local v17, segmentCount:I
    const/16 v22, 0x1

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 352
    add-int v5, p5, v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v24

    .line 353
    .local v24, nextSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v23

    .line 354
    .local v23, mergedSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v23, :cond_2

    .line 361
    .end local v23           #mergedSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v24           #nextSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    add-int v5, p5, v17

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 362
    .restart local v14       #endTimeUs:J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 363
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 364
    .restart local v4       #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v0, v6

    move-wide/from16 v18, v0

    .line 365
    .local v18, sampleOffsetUs:J
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, p5

    invoke-direct/range {v6 .. v20}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    goto :goto_0

    .line 358
    .end local v4           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v14           #endTimeUs:J
    .end local v18           #sampleOffsetUs:J
    .restart local v23       #mergedSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v24       #nextSegmentUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    move-object/from16 v26, v23

    .line 359
    add-int/lit8 v17, v17, 0x1

    .line 351
    add-int/lit8 v22, v22, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 32
    .parameter "previous"
    .parameter "playbackPositionUs"
    .parameter "out"

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 178
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v20, v4, p2

    .line 179
    .local v20, bufferedDurationUs:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v20

    invoke-interface {v3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 182
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v4

    aget-object v2, v3, v4

    .line 184
    .local v2, representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v3, :cond_5

    .line 185
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v23, v0

    .line 186
    .local v23, selectedRepresentation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/4 v7, 0x0

    .line 187
    .local v7, pendingInitializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v8, 0x0

    .line 188
    .local v8, pendingIndexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    .line 189
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v7

    .line 191
    :cond_1
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_2

    .line 192
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 194
    :cond_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 197
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 198
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    .line 196
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto :goto_0

    .line 178
    .end local v2           #representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v7           #pendingInitializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v8           #pendingIndexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v20           #bufferedDurationUs:J
    .end local v23           #selectedRepresentation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_1

    .line 203
    .restart local v2       #representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v20       #bufferedDurationUs:J
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v28

    .line 204
    .local v28, nowUs:J
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v16

    .line 205
    .local v16, availableSegmentCount:I
    if-nez v16, :cond_8

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    :cond_6
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p4

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 211
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v17

    .line 213
    .local v17, firstAvailableSegmentNum:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sub-long v26, v28, v4

    .line 217
    .local v26, liveEdgeTimeUs:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide/16 v10, 0x3e8

    mul-long v30, v4, v10

    .line 218
    .local v30, periodStartUs:J
    sub-long v24, v26, v30

    .line 219
    .local v24, liveEdgeTimeInPeriodUs:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide v10, -0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-eqz v3, :cond_9

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide/16 v10, 0x3e8

    mul-long v18, v4, v10

    .line 221
    .local v18, bufferDepthUs:J
    sub-long v4, v24, v18

    .line 222
    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    .line 221
    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 226
    .end local v18           #bufferDepthUs:J
    :cond_9
    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .line 232
    .end local v24           #liveEdgeTimeInPeriodUs:J
    .end local v26           #liveEdgeTimeUs:J
    .end local v30           #periodStartUs:J
    .local v22, lastAvailableSegmentNum:I
    :goto_3
    if-nez p1, :cond_e

    .line 233
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v14

    .line 244
    .local v14, segmentNum:I
    :cond_a
    move/from16 v0, v22

    if-gt v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v3, :cond_10

    move/from16 v0, v22

    if-lt v14, v0, :cond_10

    .line 247
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_f

    :cond_c
    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p4

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 228
    .end local v14           #segmentNum:I
    .end local v22           #lastAvailableSegmentNum:I
    :cond_d
    add-int v3, v17, v16

    add-int/lit8 v22, v3, -0x1

    .restart local v22       #lastAvailableSegmentNum:I
    goto :goto_3

    .line 236
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v14

    .line 237
    .restart local v14       #segmentNum:I
    move/from16 v0, v17

    if-ge v14, v0, :cond_a

    .line 239
    new-instance v3, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 247
    :cond_f
    const/4 v3, 0x0

    goto :goto_4

    .line 251
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    sub-int v4, v22, v14

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 252
    .local v15, maxSegmentCount:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 253
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v13

    move-object v9, v2

    .line 252
    invoke-static/range {v9 .. v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 3
    .parameter "playbackPositionUs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, queue:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 167
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 162
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 6
    .parameter "chunk"

    .prologue
    .line 259
    instance-of v3, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 261
    .local v0, initializationChunk:Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 262
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    aget-object v1, v3, v4

    .line 266
    .local v1, representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_0

    .line 267
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 268
    .local v2, seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;
    if-eqz v2, :cond_0

    .line 269
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .end local v2           #seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 273
    .end local v0           #initializationChunk:Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    .end local v1           #representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    :cond_0
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 7
    .parameter "chunk"
    .parameter "cancelable"
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 277
    if-nez p2, :cond_0

    .line 278
    const/4 v3, 0x0

    .line 296
    :goto_0
    return v3

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz v3, :cond_1

    instance-of v3, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v5, 0x194

    if-ne v3, v5, :cond_1

    .line 284
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 285
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    aget-object v1, v3, v5

    .line 286
    .local v1, representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v2

    .line 287
    .local v2, segmentCount:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 288
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, lastAvailableSegmentNum:I
    move-object v3, p1

    .line 289
    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 290
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    move v3, v4

    .line 291
    goto :goto_0

    .line 296
    .end local v0           #lastAvailableSegmentNum:I
    .end local v1           #representationHolder:Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v2           #segmentCount:I
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 297
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 296
    invoke-static {v3, v4, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v3

    goto :goto_0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 8
    .parameter "newManifest"
    .parameter "newPeriodIndex"

    .prologue
    .line 142
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 143
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 144
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 145
    .local v2, periodDurationUs:J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getAdaptationSet()Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v6

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 146
    .local v5, representations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 148
    .local v4, representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->updateRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1           #i:I
    .end local v2           #periodDurationUs:J
    .end local v4           #representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v5           #representations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 153
    .end local v0           #e:Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    :cond_0
    return-void
.end method
