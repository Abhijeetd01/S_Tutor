.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private enabledTrackCount:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private groupEnabledStates:[Z

.field private final handler:Landroid/os/Handler;

.field private lastSeekPositionUs:J

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private primaryTrackGroupIndex:I

.field private released:Z

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private sampleQueuesBuilt:Z

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private upstreamChunkUid:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 3
    .parameter "trackType"
    .parameter "callback"
    .parameter "chunkSource"
    .parameter "allocator"
    .parameter "positionUs"
    .parameter "muxedAudioFormat"
    .parameter "minLoadableRetryCount"
    .parameter "eventDispatcher"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 123
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 124
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 125
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 126
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 127
    iput p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    .line 128
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 140
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 141
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private buildTracks()V
    .locals 18

    .prologue
    .line 544
    const/4 v8, 0x0

    .line 545
    .local v8, primaryExtractorTrackType:I
    const/4 v7, -0x1

    .line 546
    .local v7, primaryExtractorTrackIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 547
    .local v3, extractorTrackCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    iget-object v10, v14, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 550
    .local v10, sampleMimeType:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 551
    const/4 v13, 0x3

    .line 559
    .local v13, trackType:I
    :goto_1
    if-le v13, v8, :cond_4

    .line 560
    move v8, v13

    .line 561
    move v7, v5

    .line 547
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v13           #trackType:I
    :cond_1
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 553
    const/4 v13, 0x2

    .restart local v13       #trackType:I
    goto :goto_1

    .line 554
    .end local v13           #trackType:I
    :cond_2
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 555
    const/4 v13, 0x1

    .restart local v13       #trackType:I
    goto :goto_1

    .line 557
    .end local v13           #trackType:I
    :cond_3
    const/4 v13, 0x0

    .restart local v13       #trackType:I
    goto :goto_1

    .line 562
    :cond_4
    if-ne v13, v8, :cond_0

    const/4 v14, -0x1

    if-eq v7, v14, :cond_0

    .line 566
    const/4 v7, -0x1

    goto :goto_2

    .line 570
    .end local v10           #sampleMimeType:Ljava/lang/String;
    .end local v13           #trackType:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 571
    .local v2, chunkSourceTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v1, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 574
    .local v1, chunkSourceTrackCount:I
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 575
    new-array v14, v3, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    .line 578
    new-array v12, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 579
    .local v12, trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_9

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 581
    .local v9, sampleFormat:Lcom/google/android/exoplayer2/Format;
    if-ne v5, v7, :cond_7

    .line 582
    new-array v4, v1, [Lcom/google/android/exoplayer2/Format;

    .line 583
    .local v4, formats:[Lcom/google/android/exoplayer2/Format;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 584
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    aput-object v14, v4, v6

    .line 583
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 586
    :cond_6
    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v14, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v14, v12, v5

    .line 587
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 579
    .end local v4           #formats:[Lcom/google/android/exoplayer2/Format;
    .end local v6           #j:I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 589
    :cond_7
    const/4 v14, 0x3

    if-ne v8, v14, :cond_8

    iget-object v14, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 590
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 591
    .local v11, trackFormat:Lcom/google/android/exoplayer2/Format;
    :goto_6
    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/google/android/exoplayer2/Format;

    const/16 v16, 0x0

    invoke-static {v11, v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v14, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v14, v12, v5

    goto :goto_5

    .line 590
    .end local v11           #trackFormat:Lcom/google/android/exoplayer2/Format;
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 594
    .end local v9           #sampleFormat:Lcom/google/android/exoplayer2/Format;
    :cond_9
    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v14, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 595
    return-void
.end method

.method private static deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 9
    .parameter "containerFormat"
    .parameter "sampleFormat"

    .prologue
    .line 618
    if-nez p0, :cond_0

    .line 628
    .end local p1
    :goto_0
    return-object p1

    .line 621
    .restart local p1
    :cond_0
    const/4 v2, 0x0

    .line 622
    .local v2, codecs:Ljava/lang/String;
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    .line 623
    .local v8, sampleTrackType:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    goto :goto_0

    .line 625
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 3
    .parameter "chunk"

    .prologue
    .line 320
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 321
    .local v0, chunkUid:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->peekSourceId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 323
    const/4 v2, 0x0

    .line 326
    :goto_1
    return v2

    .line 321
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "codecs"

    .prologue
    .line 642
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "codecs"
    .parameter "trackType"

    .prologue
    const/4 v3, 0x0

    .line 650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v3

    .line 653
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, codecArray:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v0, builder:Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v2, v4

    .line 656
    .local v1, codec:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 658
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 663
    .end local v1           #codec:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "codecs"

    .prologue
    .line 646
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .parameter "chunk"

    .prologue
    .line 634
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeFinishPrepare()V
    .locals 3

    .prologue
    .line 498
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 502
    .local v1, sampleQueueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 503
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracks()V

    .line 508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 509
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    goto :goto_0
.end method

.method private setTrackGroupEnabledState(IZ)V
    .locals 2
    .parameter "group"
    .parameter "enabledState"

    .prologue
    const/4 v1, 0x1

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aput-boolean p2, v0, p1

    .line 606
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-eqz p2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    .line 607
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 19
    .parameter "positionUs"

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    :cond_0
    const/4 v3, 0x0

    .line 367
    .end local p1
    :goto_0
    return v3

    .line 337
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v8, -0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    move-wide/from16 p1, v0

    .end local p1
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v2, v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 341
    .local v2, endOfStream:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object/from16 v16, v0

    .line 342
    .local v16, loadable:Lcom/google/android/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v18, v0

    .line 343
    .local v18, playlistToLoad:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 345
    if-eqz v2, :cond_4

    .line 346
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 347
    const/4 v3, 0x1

    goto :goto_0

    .line 337
    .end local v2           #endOfStream:Z
    .end local v16           #loadable:Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .end local v18           #playlistToLoad:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .restart local p1
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_1

    .line 350
    .end local p1
    .restart local v2       #endOfStream:Z
    .restart local v16       #loadable:Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .restart local v18       #playlistToLoad:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_4
    if-nez v16, :cond_6

    .line 351
    if-eqz v18, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 354
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 357
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 358
    const-wide v4, -0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    move-object/from16 v17, v16

    .line 359
    check-cast v17, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 360
    .local v17, mediaChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v17           #mediaChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v14

    .line 364
    .local v14, elapsedRealtimeMs:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v16

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public continuePreparing()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 148
    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .prologue
    .line 243
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v6, :cond_1

    .line 244
    const-wide/high16 v0, -0x8000

    .line 260
    :cond_0
    :goto_0
    return-wide v0

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_0

    .line 248
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 249
    .local v0, bufferedPositionUs:J
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 250
    .local v4, lastMediaChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v4

    .line 252
    .local v3, lastCompletedMediaChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :goto_1
    if-eqz v3, :cond_3

    .line 253
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 255
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 256
    .local v5, sampleQueueCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 257
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 257
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 250
    .end local v2           #i:I
    .end local v3           #lastCompletedMediaChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .end local v5           #sampleQueueCount:I
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 251
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v3, v6

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 375
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZ)V
    .locals 2
    .parameter "chunkUid"
    .parameter "shouldSpliceIn"

    .prologue
    .line 452
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamChunkUid:I

    .line 453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sourceId(I)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    if-eqz p2, :cond_1

    .line 457
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->splice()V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    :cond_1
    return-void
.end method

.method isReady(I)Z
    .locals 1
    .parameter "group"

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    .line 291
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 162
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 22
    .parameter "loadable"
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .parameter "released"

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 397
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 400
    if-nez p6, :cond_1

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 402
    .local v20, sampleQueueCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 407
    .end local v2           #i:I
    .end local v20           #sampleQueueCount:I
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .parameter "loadable"
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 384
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 26
    .parameter "loadable"
    .parameter "elapsedRealtimeMs"
    .parameter "loadDurationMs"
    .parameter "error"

    .prologue
    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v22

    .line 413
    .local v22, bytesLoaded:J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v24

    .line 414
    .local v24, isMediaChunk:Z
    if-eqz v24, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 415
    .local v2, cancelable:Z
    :goto_0
    const/16 v21, 0x0

    .line 416
    .local v21, canceled:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    if-eqz v24, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 419
    .local v25, removed:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 424
    .end local v25           #removed:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_1
    const/16 v21, 0x1

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 426
    invoke-virtual/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 430
    if-eqz v21, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v3, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 436
    :goto_2
    const/4 v3, 0x2

    .line 438
    :goto_3
    return v3

    .line 414
    .end local v2           #cancelable:Z
    .end local v21           #canceled:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 419
    .restart local v2       #cancelable:Z
    .restart local v21       #canceled:Z
    .restart local v25       #removed:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 434
    .end local v25           #removed:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_2

    .line 438
    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 2
    .parameter "url"
    .parameter "blacklistMs"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 280
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method public prepareSingleTrack(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 155
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(II)Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    .line 158
    return-void
.end method

.method readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 12
    .parameter "group"
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "requireFormat"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, -0x3

    .line 311
    :goto_0
    return v1

    .line 299
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 303
    .local v0, currentChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 304
    .local v3, trackFormat:Lcom/google/android/exoplayer2/Format;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 309
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 311
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 266
    .local v1, sampleQueueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 267
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 270
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 272
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .parameter "seekMap"

    .prologue
    .line 486
    return-void
.end method

.method public seekTo(J)V
    .locals 5
    .parameter "positionUs"

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 229
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 232
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 236
    .local v1, sampleQueueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZZ)Z
    .locals 10
    .parameter "selections"
    .parameter "mayRetainStreamFlags"
    .parameter "streams"
    .parameter "streamResetFlags"
    .parameter "isFirstTrackSelection"

    .prologue
    .line 170
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 172
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_2

    .line 173
    aget-object v7, p3, v2

    if-eqz v7, :cond_1

    aget-object v7, p1, v2

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v2

    if-nez v7, :cond_1

    .line 174
    :cond_0
    aget-object v7, p3, v2

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    iget v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->group:I

    .line 175
    .local v1, group:I
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 176
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 177
    const/4 v7, 0x0

    aput-object v7, p3, v2

    .line 172
    .end local v1           #group:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_2
    const/4 v3, 0x0

    .line 182
    .local v3, primaryTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v5, 0x0

    .line 183
    .local v5, selectedNewTracks:Z
    const/4 v2, 0x0

    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_5

    .line 184
    aget-object v7, p3, v2

    if-nez v7, :cond_4

    aget-object v7, p1, v2

    if-eqz v7, :cond_4

    .line 185
    aget-object v6, p1, v2

    .line 186
    .local v6, selection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 187
    .restart local v1       #group:I
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 188
    iget v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v1, v7, :cond_3

    .line 189
    move-object v3, v6

    .line 190
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    .line 192
    :cond_3
    new-instance v7, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v7, p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v7, p3, v2

    .line 193
    const/4 v7, 0x1

    aput-boolean v7, p4, v2

    .line 194
    const/4 v5, 0x1

    .line 183
    .end local v1           #group:I
    .end local v6           #selection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_5
    if-eqz p5, :cond_8

    .line 200
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 201
    .local v4, sampleQueueCount:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_7

    .line 202
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v7, v7, v2

    if-nez v7, :cond_6

    .line 203
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 201
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    :cond_7
    if-eqz v3, :cond_8

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 207
    const-wide/16 v8, 0x0

    invoke-interface {v3, v8, v9}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 208
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 209
    .local v0, chunkIndex:I
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v7

    if-eq v7, v0, :cond_8

    .line 211
    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v8, v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekTo(J)V

    .line 216
    .end local v0           #chunkIndex:I
    .end local v4           #sampleQueueCount:I
    :cond_8
    iget v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-nez v7, :cond_9

    .line 217
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->reset()V

    .line 218
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 219
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 220
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 221
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 224
    :cond_9
    return v5
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1
    .parameter "isTimestampMaster"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    .line 276
    return-void
.end method

.method skipToKeyframeBefore(IJ)V
    .locals 2
    .parameter "group"
    .parameter "timeUs"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    .line 317
    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    .line 474
    :goto_0
    return-object v1

    .line 470
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 471
    .local v0, trackOutput:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V

    .line 472
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamChunkUid:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sourceId(I)V

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 474
    goto :goto_0
.end method

.method public bridge synthetic track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(II)Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v0

    return-object v0
.end method
