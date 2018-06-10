.class public Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.super Lcom/google/android/exoplayer2/decoder/Buffer;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$BufferReplacementMode;
    }
.end annotation


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public timeUs:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "bufferReplacementMode"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;-><init>()V

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    .line 74
    return-void
.end method

.method private createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "requiredCapacity"

    .prologue
    .line 137
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 139
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 140
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 143
    .local v0, currentCapacity:I
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v0           #currentCapacity:I
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;->clear()V

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 134
    :cond_0
    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .locals 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 95
    .local v0, capacity:I
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 96
    .local v2, position:I
    add-int v3, v2, p1

    .line 97
    .local v3, requiredCapacity:I
    if-ge v0, v3, :cond_0

    .line 101
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    .local v1, newData:Ljava/nio/ByteBuffer;
    if-lez v2, :cond_2

    .line 104
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final flip()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 126
    return-void
.end method

.method public final isEncrypted()Z
    .locals 1

    .prologue
    .line 116
    const/high16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->getFlag(I)Z

    move-result v0

    return v0
.end method
