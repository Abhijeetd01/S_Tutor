.class final Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;
.super Ljava/lang/Object;
.source "ChannelMappingAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private active:Z

.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputChannels:[I

.field private pendingOutputChannels:[I

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 7
    .parameter "sampleRateHz"
    .parameter "channelCount"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 62
    .local v2, outputChannelsChanged:Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 63
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v5, :cond_1

    .line 64
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    .line 85
    .end local v2           #outputChannelsChanged:Z
    :goto_1
    return v2

    :cond_0
    move v2, v4

    .line 61
    goto :goto_0

    .line 67
    .restart local v2       #outputChannelsChanged:Z
    :cond_1
    const/4 v5, 0x2

    if-eq p3, v5, :cond_2

    .line 68
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v3

    .line 70
    :cond_2
    if-nez v2, :cond_3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    if-ne v5, p1, :cond_3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    if-ne v5, p2, :cond_3

    move v2, v4

    .line 72
    goto :goto_1

    .line 74
    :cond_3
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    .line 75
    iput p2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    .line 77
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v5, v5

    if-eq p2, v5, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 79
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    aget v0, v5, v1

    .line 80
    .local v0, channelIndex:I
    if-lt v0, p2, :cond_5

    .line 81
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v3

    .end local v0           #channelIndex:I
    .end local v1           #i:I
    :cond_4
    move v5, v4

    .line 77
    goto :goto_2

    .line 83
    .restart local v0       #channelIndex:I
    .restart local v1       #i:I
    :cond_5
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    if-eq v0, v1, :cond_6

    move v5, v3

    :goto_4
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v5, v4

    .line 83
    goto :goto_4

    .end local v0           #channelIndex:I
    :cond_7
    move v2, v3

    .line 85
    goto :goto_1
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    .line 147
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 133
    .local v0, outputBuffer:Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 134
    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getOutputEncoding()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x2

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return v0
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queueEndOfStream()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    .line 128
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 10
    .parameter "inputBuffer"

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 106
    .local v4, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 107
    .local v2, limit:I
    sub-int v5, v2, v4

    iget v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v6, v6, 0x2

    div-int v1, v5, v6

    .line 108
    .local v1, frameCount:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v5, v5

    mul-int/2addr v5, v1

    mul-int/lit8 v3, v5, 0x2

    .line 109
    .local v3, outputSize:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 110
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 114
    :goto_0
    if-ge v4, v2, :cond_2

    .line 115
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget v0, v6, v5

    .line 116
    .local v0, channelIndex:I
    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v4

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    .end local v0           #channelIndex:I
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 118
    :cond_1
    iget v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 122
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 123
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->flush()V

    .line 152
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method

.method public setChannelMap([I)V
    .locals 0
    .parameter "outputChannels"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 56
    return-void
.end method
