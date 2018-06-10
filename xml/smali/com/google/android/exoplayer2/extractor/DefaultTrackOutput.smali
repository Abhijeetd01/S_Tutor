.class public final Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;,
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;,
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20

.field private static final STATE_DISABLED:I = 0x2

.field private static final STATE_ENABLED:I = 0x0

.field private static final STATE_ENABLED_WRITING:I = 0x1


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer2/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

.field private final infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

.field private lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

.field private lastAllocationOffset:I

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private needKeyframe:Z

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalBytesDropped:J

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 2
    .parameter "allocator"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 88
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    .line 90
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;-><init>(Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 96
    return-void
.end method

.method private clearSampleData()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->clearSampleData()V

    .line 568
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    .line 571
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    .line 572
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 574
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 576
    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 9
    .parameter "absolutePosition"

    .prologue
    .line 432
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 433
    .local v2, relativePosition:I
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int v0, v2, v3

    .line 434
    .local v0, allocationIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 436
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 9
    .parameter "absolutePosition"

    .prologue
    .line 155
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v6, p1, v6

    long-to-int v4, v6

    .line 157
    .local v4, relativePosition:I
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int v1, v4, v5

    .line 158
    .local v1, allocationIndex:I
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    rem-int v2, v4, v5

    .line 160
    .local v2, allocationOffset:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 161
    .local v0, allocationDiscardCount:I
    if-nez v2, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 167
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 171
    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    .end local v2           #allocationOffset:I
    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 172
    return-void
.end method

.method private endWriteOperation()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 564
    :cond_0
    return-void
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5
    .parameter "format"
    .parameter "sampleOffsetUs"

    .prologue
    .line 599
    if-nez p0, :cond_1

    .line 600
    const/4 p0, 0x0

    .line 605
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 602
    .restart local p0
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 603
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    goto :goto_0
.end method

.method private prepareForAppend(I)I
    .locals 2
    .parameter "length"

    .prologue
    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    if-ne v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 7
    .parameter "absolutePosition"
    .parameter "target"
    .parameter "length"

    .prologue
    .line 392
    move v2, p4

    .line 393
    .local v2, remaining:I
    :goto_0
    if-lez v2, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 395
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v1, v4

    .line 396
    .local v1, positionInAllocation:I
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 397
    .local v3, toCopy:I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 398
    .local v0, allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-virtual {p3, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 399
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 400
    sub-int/2addr v2, v3

    .line 401
    goto :goto_0

    .line 402
    .end local v0           #allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v1           #positionInAllocation:I
    .end local v3           #toCopy:I
    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7
    .parameter "absolutePosition"
    .parameter "target"
    .parameter "length"

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, bytesRead:I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 415
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 416
    .local v2, positionInAllocation:I
    sub-int v4, p4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 417
    .local v3, toCopy:I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 418
    .local v0, allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-static {v4, v5, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 421
    add-int/2addr v1, v3

    .line 422
    goto :goto_0

    .line 423
    .end local v0           #allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v2           #positionInAllocation:I
    .end local v3           #toCopy:I
    :cond_0
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V
    .locals 20
    .parameter "buffer"
    .parameter "extrasHolder"

    .prologue
    .line 322
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 325
    .local v12, offset:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 327
    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v14, v2, v6

    .line 329
    .local v14, signalByte:B
    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_5

    const/16 v16, 0x1

    .line 330
    .local v16, subsampleEncryption:Z
    :goto_0
    and-int/lit8 v11, v14, 0x7f

    .line 333
    .local v11, ivSize:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v2, :cond_0

    .line 334
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/16 v6, 0x10

    new-array v6, v6, [B

    iput-object v6, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 336
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v11}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 337
    int-to-long v6, v11

    add-long/2addr v12, v6

    .line 341
    if-eqz v16, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 344
    const-wide/16 v6, 0x2

    add-long/2addr v12, v6

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 351
    .local v3, subsampleCount:I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v4, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 352
    .local v4, clearDataSizes:[I
    if-eqz v4, :cond_1

    array-length v2, v4

    if-ge v2, v3, :cond_2

    .line 353
    :cond_1
    new-array v4, v3, [I

    .line 355
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 356
    .local v5, encryptedDataSizes:[I
    if-eqz v5, :cond_3

    array-length v2, v5

    if-ge v2, v3, :cond_4

    .line 357
    :cond_3
    new-array v5, v3, [I

    .line 359
    :cond_4
    if-eqz v16, :cond_7

    .line 360
    mul-int/lit8 v15, v3, 0x6

    .line 361
    .local v15, subsampleDataLength:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v15}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 363
    int-to-long v6, v15

    add-long/2addr v12, v6

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 365
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_8

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    aput v2, v4, v10

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    aput v2, v5, v10

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 329
    .end local v3           #subsampleCount:I
    .end local v4           #clearDataSizes:[I
    .end local v5           #encryptedDataSizes:[I
    .end local v10           #i:I
    .end local v11           #ivSize:I
    .end local v15           #subsampleDataLength:I
    .end local v16           #subsampleEncryption:Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 347
    .restart local v11       #ivSize:I
    .restart local v16       #subsampleEncryption:Z
    :cond_6
    const/4 v3, 0x1

    .restart local v3       #subsampleCount:I
    goto :goto_1

    .line 370
    .restart local v4       #clearDataSizes:[I
    .restart local v5       #encryptedDataSizes:[I
    :cond_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v4, v2

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    sub-int/2addr v6, v7

    aput v6, v5, v2

    .line 375
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BI)V

    .line 379
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    sub-long v6, v12, v6

    long-to-int v9, v6

    .line 380
    .local v9, bytesRead:I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 381
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    sub-int/2addr v2, v9

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 382
    return-void
.end method

.method private startWriteOperation()Z
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 183
    :cond_0
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2
    .parameter "discardFromIndex"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 145
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropUpstreamFrom(J)V

    .line 146
    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 4
    .parameter "format"

    .prologue
    .line 466
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 467
    .local v0, adjustedFormat:Lcom/google/android/exoplayer2/Format;
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 468
    .local v1, formatChanged:Z
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    .line 469
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    .line 470
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 471
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 473
    :cond_0
    return-void
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 9
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "formatRequired"
    .parameter "loadingFinished"
    .parameter "decodeOnlyUntilUs"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I

    move-result v7

    .line 284
    .local v7, result:I
    packed-switch v7, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 286
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 287
    const/4 v0, -0x5

    .line 305
    :goto_0
    return v0

    .line 289
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_0

    .line 291
    const/high16 v0, -0x8000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget-object v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(JLjava/nio/ByteBuffer;I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 303
    :cond_2
    const/4 v0, -0x4

    goto :goto_0

    .line 305
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x2

    .line 106
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 107
    .local v0, previousState:I
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 108
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->resetLargestParsedTimestamps()V

    .line 109
    if-ne v0, v2, :cond_0

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 112
    :cond_0
    return-void

    .end local v0           #previousState:I
    :cond_1
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 6
    .parameter "input"
    .parameter "length"
    .parameter "allowEndOfInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 479
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result v1

    .line 480
    .local v1, bytesSkipped:I
    if-ne v1, v2, :cond_0

    .line 481
    if-eqz p3, :cond_1

    move v1, v2

    .line 500
    .end local v1           #bytesSkipped:I
    :cond_0
    :goto_0
    return v1

    .line 484
    .restart local v1       #bytesSkipped:I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 489
    .end local v1           #bytesSkipped:I
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result p2

    .line 490
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 491
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v4

    .line 490
    invoke-interface {p1, v3, v4, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 492
    .local v0, bytesAppended:I
    if-ne v0, v2, :cond_4

    .line 493
    if-eqz p3, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    move v1, v2

    .line 494
    goto :goto_0

    .line 496
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v0           #bytesAppended:I
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw v2

    .line 498
    .restart local v0       #bytesAppended:I
    :cond_4
    :try_start_2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 499
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    move v1, v0

    .line 500
    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 521
    :goto_0
    return-void

    .line 512
    :cond_0
    :goto_1
    if-lez p2, :cond_1

    .line 513
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result v0

    .line 514
    .local v0, thisAppendLength:I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 516
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 517
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 518
    sub-int/2addr p2, v0

    .line 519
    goto :goto_1

    .line 520
    .end local v0           #thisAppendLength:I
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .parameter "timeUs"
    .parameter "flags"
    .parameter "size"
    .parameter "offset"
    .parameter "encryptionKey"

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 552
    :goto_0
    return-void

    .line 534
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    if-eqz v0, :cond_4

    .line 535
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->attemptSplice(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 550
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .line 538
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    .line 540
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 541
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .line 544
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 546
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    add-long/2addr p1, v0

    .line 547
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    int-to-long v2, p5

    sub-long v4, v0, v2

    .line 548
    .local v4, absoluteOffset:J
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSample(JIJI[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .end local v4           #absoluteOffset:J
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw v0
.end method

.method public setSampleOffsetUs(J)V
    .locals 3
    .parameter "sampleOffsetUs"

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 459
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    .line 462
    :cond_0
    return-void
.end method

.method public setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    .line 449
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 1
    .parameter "timeUs"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    move-result v0

    return v0
.end method

.method public skipToKeyframeBefore(JZ)Z
    .locals 5
    .parameter "timeUs"
    .parameter "allowTimeBeyondBuffer"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->skipToKeyframeBefore(JZ)J

    move-result-wide v0

    .line 257
    .local v0, nextOffset:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 258
    const/4 v2, 0x0

    .line 261
    :goto_0
    return v2

    .line 260
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 261
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sourceId(I)V
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceId(I)V

    .line 121
    return-void
.end method

.method public splice()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    .line 129
    return-void
.end method
