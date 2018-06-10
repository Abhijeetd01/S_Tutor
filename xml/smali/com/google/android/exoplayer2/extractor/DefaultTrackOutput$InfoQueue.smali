.class final Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private largestDequeuedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    .line 638
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 639
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 640
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 641
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 642
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 643
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 644
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 645
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 646
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 648
    return-void
.end method


# virtual methods
.method public declared-synchronized attemptSplice(J)Z
    .locals 5
    .parameter "timeUs"

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    .line 954
    const/4 v1, 0x0

    .line 962
    :goto_0
    monitor-exit p0

    return v1

    .line 956
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 957
    .local v0, retainCount:I
    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_1

    .line 959
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 961
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    const/4 v1, 0x1

    goto :goto_0

    .line 953
    .end local v0           #retainCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearSampleData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 652
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 653
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 654
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 655
    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 13
    .parameter "timeUs"
    .parameter "sampleFlags"
    .parameter "offset"
    .parameter "size"
    .parameter "encryptionKey"

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    iget-boolean v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 886
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v10, v11

    .line 887
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v10, v11

    .line 888
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p6, v10, v11

    .line 889
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p3, v10, v11

    .line 890
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v10, v11

    .line 891
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget-object v12, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object v12, v10, v11

    .line 892
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v12, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    aput v12, v10, v11

    .line 894
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 895
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_2

    .line 897
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/lit16 v2, v10, 0x3e8

    .line 898
    .local v2, newCapacity:I
    new-array v8, v2, [I

    .line 899
    .local v8, newSourceIds:[I
    new-array v6, v2, [J

    .line 900
    .local v6, newOffsets:[J
    new-array v9, v2, [J

    .line 901
    .local v9, newTimesUs:[J
    new-array v4, v2, [I

    .line 902
    .local v4, newFlags:[I
    new-array v7, v2, [I

    .line 903
    .local v7, newSizes:[I
    new-array v3, v2, [[B

    .line 904
    .local v3, newEncryptionKeys:[[B
    new-array v5, v2, [Lcom/google/android/exoplayer2/Format;

    .line 905
    .local v5, newFormats:[Lcom/google/android/exoplayer2/Format;
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    sub-int v1, v10, v11

    .line 906
    .local v1, beforeWrap:I
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 914
    .local v0, afterWrap:I
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 922
    iput-object v9, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 923
    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 924
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 925
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 926
    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 927
    iput-object v8, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 928
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 929
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 930
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 931
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    .end local v0           #afterWrap:I
    .end local v1           #beforeWrap:I
    .end local v2           #newCapacity:I
    .end local v3           #newEncryptionKeys:[[B
    .end local v4           #newFlags:[I
    .end local v5           #newFormats:[Lcom/google/android/exoplayer2/Format;
    .end local v6           #newOffsets:[J
    .end local v7           #newSizes:[I
    .end local v8           #newSourceIds:[I
    .end local v9           #newTimesUs:[J
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 884
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 933
    :cond_2
    :try_start_1
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 934
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_0

    .line 936
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .locals 3
    .parameter "timeUs"

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 8
    .parameter "discardFromIndex"

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v4

    sub-int v0, v4, p1

    .line 679
    .local v0, discardCount:I
    if-ltz v0, :cond_0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-gt v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 681
    if-nez v0, :cond_3

    .line 682
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    if-nez v4, :cond_1

    .line 684
    const-wide/16 v4, 0x0

    .line 702
    :goto_1
    return-wide v4

    .line 679
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 686
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_2
    add-int/lit8 v2, v4, -0x1

    .line 687
    .local v2, lastWriteIndex:I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v4, v4, v2

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 686
    .end local v2           #lastWriteIndex:I
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_2

    .line 690
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 691
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 694
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 695
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_3
    if-ltz v1, :cond_4

    .line 696
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v3, v4, v5

    .line 697
    .local v3, sampleIndex:I
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 698
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 702
    .end local v3           #sampleIndex:I
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aget-wide v4, v4, v5

    goto :goto_1

    .line 695
    .restart local v3       #sampleIndex:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public declared-synchronized format(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3
    .parameter "format"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 868
    monitor-enter p0

    if-nez p1, :cond_1

    .line 869
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 872
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 873
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 878
    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 4

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .locals 2

    .prologue
    .line 668
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 730
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .locals 2

    .prologue
    .line 723
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public declared-synchronized readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I
    .locals 6
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "formatRequired"
    .parameter "loadingFinished"
    .parameter "downstreamFormat"
    .parameter "extrasHolder"

    .prologue
    const/4 v0, -0x4

    const/4 v1, -0x5

    .line 779
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v2, :cond_3

    .line 780
    if-eqz p4, :cond_0

    .line 781
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :goto_0
    monitor-exit p0

    return v0

    .line 783
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v0, p5, :cond_2

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_2
    const/4 v0, -0x3

    goto :goto_0

    .line 792
    :cond_3
    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v2, v2, v3

    if-eq v2, p5, :cond_5

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    move v0, v1

    .line 794
    goto :goto_0

    .line 797
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 798
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 799
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v1, v1, v2

    iput v1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 800
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 801
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    iput-object v1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    .line 803
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 804
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 805
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 806
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 807
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v1, v2, :cond_6

    .line 809
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 812
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    :goto_1
    iput-wide v2, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 812
    :cond_7
    :try_start_2
    iget-wide v2, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget v1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public resetLargestParsedTimestamps()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000

    .line 660
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 661
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 662
    return-void
.end method

.method public declared-synchronized skipToKeyframeBefore(JZ)J
    .locals 9
    .parameter "timeUs"
    .parameter "allowTimeBeyondBuffer"

    .prologue
    const-wide/16 v4, -0x1

    .line 829
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v6, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    .line 862
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 833
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v6

    if-lez v3, :cond_2

    if-eqz p3, :cond_0

    .line 840
    :cond_2
    const/4 v0, 0x0

    .line 841
    .local v0, sampleCount:I
    const/4 v1, -0x1

    .line 842
    .local v1, sampleCountToKeyframe:I
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 843
    .local v2, searchIndex:I
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-eq v2, v3, :cond_3

    .line 844
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v3, v2

    cmp-long v3, v6, p1

    if-lez v3, :cond_4

    .line 855
    :cond_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 859
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 860
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 861
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 862
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v4, v3, v4

    goto :goto_0

    .line 847
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v3, v3, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 849
    move v1, v0

    .line 851
    :cond_5
    add-int/lit8 v3, v2, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v2, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    .end local v0           #sampleCount:I
    .end local v1           #sampleCountToKeyframe:I
    .end local v2           #searchIndex:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public sourceId(I)V
    .locals 0
    .parameter "sourceId"

    .prologue
    .line 706
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    .line 707
    return-void
.end method
