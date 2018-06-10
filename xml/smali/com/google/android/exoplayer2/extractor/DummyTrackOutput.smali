.class public final Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 32
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 2
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
    const/4 v1, -0x1

    .line 37
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result v0

    .line 38
    .local v0, bytesSkipped:I
    if-ne v0, v1, :cond_0

    .line 39
    if-eqz p3, :cond_1

    move v0, v1

    .line 44
    .end local v0           #bytesSkipped:I
    :cond_0
    return v0

    .line 42
    .restart local v0       #bytesSkipped:I
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0
    .parameter "data"
    .parameter "length"

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 0
    .parameter "timeUs"
    .parameter "flags"
    .parameter "size"
    .parameter "offset"
    .parameter "encryptionKey"

    .prologue
    .line 56
    return-void
.end method
