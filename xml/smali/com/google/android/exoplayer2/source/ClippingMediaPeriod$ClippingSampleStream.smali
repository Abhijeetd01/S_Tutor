.class final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field private final endUs:J

.field private final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingDiscontinuity:Z

.field private sentEos:Z

.field private final startUs:J

.field private final stream:Lcom/google/android/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V
    .locals 1
    .parameter "mediaPeriod"
    .parameter "stream"
    .parameter "startUs"
    .parameter "endUs"
    .parameter "pendingDiscontinuity"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 214
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 215
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    .line 216
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    .line 217
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method


# virtual methods
.method public clearPendingDiscontinuity()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    .line 222
    return-void
.end method

.method public clearSentEos()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 226
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 236
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 12
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "requireFormat"

    .prologue
    const-wide/high16 v10, -0x8000

    const/4 v8, 0x4

    const/4 v1, -0x3

    const/4 v2, -0x4

    .line 241
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    move v0, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 250
    .local v0, result:I
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_5

    if-ne v0, v2, :cond_3

    iget-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    :cond_3
    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 252
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-nez v1, :cond_5

    .line 253
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 254
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    move v0, v2

    .line 256
    goto :goto_0

    .line 258
    :cond_5
    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    goto :goto_0
.end method

.method public skipToKeyframeBefore(J)V
    .locals 5
    .parameter "timeUs"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/SampleStream;->skipToKeyframeBefore(J)V

    .line 267
    return-void
.end method
