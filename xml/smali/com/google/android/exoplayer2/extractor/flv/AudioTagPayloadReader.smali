.class final Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_ULAW:I = 0x8


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 14
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 55
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    if-nez v2, :cond_5

    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 57
    .local v13, header:I
    shr-int/lit8 v2, v13, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 59
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    .line 60
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-ne v2, v6, :cond_2

    const-string v1, "audio/g711-alaw"

    .line 62
    .local v1, type:Ljava/lang/String;
    :goto_0
    and-int/lit8 v2, v13, 0x1

    if-ne v2, v5, :cond_3

    const/4 v7, 0x2

    .line 63
    .local v7, pcmEncoding:I
    :goto_1
    const/16 v6, 0x1f40

    const/4 v10, 0x0

    move-object v2, v0

    move v4, v3

    move-object v8, v0

    move-object v9, v0

    move-object v11, v0

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 65
    .local v12, format:Lcom/google/android/exoplayer2/Format;
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 66
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 70
    .end local v1           #type:Ljava/lang/String;
    .end local v7           #pcmEncoding:I
    .end local v12           #format:Lcom/google/android/exoplayer2/Format;
    :cond_1
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 75
    .end local v13           #header:I
    :goto_2
    return v5

    .line 60
    .restart local v13       #header:I
    :cond_2
    const-string v1, "audio/g711-mlaw"

    goto :goto_0

    .line 62
    .restart local v1       #type:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x3

    goto :goto_1

    .line 67
    .end local v1           #type:Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v13           #header:I
    :cond_5
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 18
    .parameter "data"
    .parameter "timeUs"

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    .line 81
    .local v16, packetType:I
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v2, :cond_1

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v14, v2, [B

    .line 84
    .local v14, audioSpecificConfig:[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 85
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v13

    .line 87
    .local v13, audioParams:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v8, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 89
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 87
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v15

    .line 90
    .local v15, format:Lcom/google/android/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 97
    .end local v13           #audioParams:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14           #audioSpecificConfig:[B
    .end local v15           #format:Lcom/google/android/exoplayer2/Format;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 93
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    .line 94
    .local v7, sampleSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
