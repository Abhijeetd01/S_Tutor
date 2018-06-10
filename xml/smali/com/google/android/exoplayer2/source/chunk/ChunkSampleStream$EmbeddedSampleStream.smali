.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field public final parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter "sampleQueue"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 441
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    .line 442
    iput p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 443
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 447
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

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

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "formatRequired"

    .prologue
    .line 463
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, -0x3

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 471
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    #getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    #getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 473
    return-void
.end method

.method public skipToKeyframeBefore(J)V
    .locals 1
    .parameter "timeUs"

    .prologue
    .line 452
    .local p0, this:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,"Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    .line 453
    return-void
.end method
