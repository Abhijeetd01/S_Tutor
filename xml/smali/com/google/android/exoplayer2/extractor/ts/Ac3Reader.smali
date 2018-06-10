.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private isEac3:Z

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J

.field private trackFormatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .parameter "source"
    .parameter "target"
    .parameter "targetLength"

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 148
    .local v0, bytesToRead:I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 149
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 150
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x2d

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 186
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEac3SyncframeFormat(Lcom/google/android/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 188
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 191
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeSize([B)I

    move-result v1

    .line 192
    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    .line 193
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 194
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount([B)I

    move-result v0

    .line 198
    .local v0, audioSamplesPerSyncframe:I
    :goto_3
    const-wide/32 v2, 0xf4240

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 200
    return-void

    .line 184
    .end local v0           #audioSamplesPerSyncframe:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 188
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3SyncframeFormat(Lcom/google/android/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 192
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v1

    goto :goto_2

    .line 195
    :cond_4
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_3
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 5
    .parameter "pesBuffer"

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 162
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 167
    .local v0, secondByte:I
    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 168
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 174
    .end local v0           #secondByte:I
    :goto_2
    return v2

    .line 171
    .restart local v0       #secondByte:I
    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    .end local v0           #secondByte:I
    :cond_4
    move v2, v3

    .line 174
    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 12
    .parameter "data"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0xb

    aput-byte v2, v1, v6

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x77

    aput-byte v2, v1, v4

    .line 107
    iput v10, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v11}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->parseHeader()V

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 115
    iput v10, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    .local v0, bytesToRead:I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 121
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 122
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 124
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 125
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 130
    .end local v0           #bytesToRead:I
    :cond_1
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .parameter "extractorOutput"
    .parameter "generator"

    .prologue
    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 89
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 91
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .parameter "pesTimeUs"
    .parameter "dataAlignmentIndicator"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 96
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 82
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 83
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 84
    return-void
.end method
