.class public abstract Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndices:[I

.field private output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 0
    .parameter "dataSource"
    .parameter "dataSpec"
    .parameter "trackFormat"
    .parameter "trackSelectionReason"
    .parameter "trackSelectionData"
    .parameter "startTimeUs"
    .parameter "endTimeUs"
    .parameter "chunkIndex"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 46
    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex(I)I
    .locals 1
    .parameter "trackIndex"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->getWriteIndices()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    .line 57
    return-void
.end method
