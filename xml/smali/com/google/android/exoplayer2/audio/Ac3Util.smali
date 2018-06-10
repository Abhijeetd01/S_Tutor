.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 63
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x80t 0xbbt 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    .line 50
    :array_2
    .array-data 0x4
        0xc0t 0x5dt 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    .line 54
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_4
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
    .end array-data

    .line 63
    :array_5
    .array-data 0x4
        0x45t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0xa1t 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0x2dt 0x2t 0x0t 0x0t
        0xb8t 0x2t 0x0t 0x0t
        0x43t 0x3t 0x0t 0x0t
        0xcft 0x3t 0x0t 0x0t
        0x5at 0x4t 0x0t 0x0t
        0xe5t 0x4t 0x0t 0x0t
        0x71t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 5
    .parameter "fscod"
    .parameter "frmsizecod"

    .prologue
    .line 234
    div-int/lit8 v1, p1, 0x2

    .line 235
    .local v1, halfFrmsizecod:I
    if-ltz p0, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v3, v3

    if-ge p0, v3, :cond_0

    if-ltz p1, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 238
    :cond_0
    const/4 v3, -0x1

    .line 248
    :goto_0
    return v3

    .line 240
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v3, p0

    .line 241
    .local v2, sampleRate:I
    const v3, 0xac44

    if-ne v2, v3, :cond_2

    .line 242
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v3, v3, v1

    rem-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 244
    :cond_2
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v0, v3, v1

    .line 245
    .local v0, bitrate:I
    const/16 v3, 0x7d00

    if-ne v2, v3, :cond_3

    .line 246
    mul-int/lit8 v3, v0, 0x6

    goto :goto_0

    .line 248
    :cond_3
    mul-int/lit8 v3, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .parameter "data"
    .parameter "trackId"
    .parameter "language"
    .parameter "drmInitData"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 79
    .local v11, fscod:I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 80
    .local v6, sampleRate:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 81
    .local v12, nextByte:I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v12, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v5, v0, v1

    .line 82
    .local v5, channelCount:I
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_0

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 85
    :cond_0
    const-string v1, "audio/ac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeFormat(Lcom/google/android/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .parameter "data"
    .parameter "trackId"
    .parameter "language"
    .parameter "drmInitData"

    .prologue
    .line 128
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 129
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 130
    .local v12, fscod:I
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 131
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 132
    .local v11, acmod:I
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v11, v0, :cond_0

    .line 133
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 135
    :cond_0
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 138
    :cond_1
    const/4 v0, 0x2

    if-ne v11, v0, :cond_2

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 142
    .local v13, lfeon:Z
    const-string v1, "audio/ac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v5, v0, v11

    if-eqz v13, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v5, v0

    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v12

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x4

    .line 182
    array-length v2, p0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 183
    const/4 v2, -0x1

    .line 187
    :goto_0
    return v2

    .line 185
    :cond_0
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 186
    .local v1, fscod:I
    aget-byte v2, p0, v4

    and-int/lit8 v0, v2, 0x3f

    .line 187
    .local v0, frmsizecod:I
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v2

    goto :goto_0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .parameter "data"
    .parameter "trackId"
    .parameter "language"
    .parameter "drmInitData"

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 106
    .local v11, fscod:I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 107
    .local v6, sampleRate:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 108
    .local v12, nextByte:I
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v12, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v5, v0, v1

    .line 109
    .local v5, channelCount:I
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 112
    :cond_0
    const-string v1, "audio/eac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "buffer"

    .prologue
    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v0, v1, 0x6

    .line 229
    .local v0, fscod:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    .line 230
    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 229
    return v1

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method

.method public static parseEAc3SyncframeAudioSampleCount([B)I
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x4

    .line 215
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static parseEAc3SyncframeSize([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 197
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static parseEac3SyncframeFormat(Lcom/google/android/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .parameter "data"
    .parameter "trackId"
    .parameter "language"
    .parameter "drmInitData"

    .prologue
    .line 159
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 162
    .local v12, fscod:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    aget v6, v0, v1

    .line 168
    .local v6, sampleRate:I
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 169
    .local v11, acmod:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 170
    .local v13, lfeon:Z
    const-string v1, "audio/eac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v5, v0, v11

    if-eqz v13, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v5, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 165
    .end local v6           #sampleRate:I
    .end local v11           #acmod:I
    .end local v13           #lfeon:Z
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 166
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v12

    .restart local v6       #sampleRate:I
    goto :goto_0

    .line 170
    .restart local v11       #acmod:I
    .restart local v13       #lfeon:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
