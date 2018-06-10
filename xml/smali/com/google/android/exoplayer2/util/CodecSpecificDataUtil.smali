.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I = null

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x0t 0x77t 0x1t 0x0t
        0x88t 0x58t 0x1t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x11t 0x2bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0xb6t 0x1ct 0x0t 0x0t
    .end array-data

    .line 50
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .locals 4
    .parameter "audioObjectType"
    .parameter "sampleRateIndex"
    .parameter "channelConfig"

    .prologue
    .line 160
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 161
    .local v0, specificConfig:[B
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    return-object v0
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6
    .parameter "sampleRate"
    .parameter "numChannels"

    .prologue
    const/4 v4, -0x1

    .line 131
    const/4 v2, -0x1

    .line 132
    .local v2, sampleRateIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 133
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v3, v3, v1

    if-ne p0, v3, :cond_0

    .line 134
    move v2, v1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, -0x1

    .line 138
    .local v0, channelConfig:I
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 139
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_2

    .line 140
    move v0, v1

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    if-eq p0, v4, :cond_4

    if-ne v0, v4, :cond_5

    .line 144
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid sample rate or number of channels: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_5
    const/4 v3, 0x2

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v3

    return-object v3
.end method

.method public static buildNalUnit([BII)[B
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    add-int/2addr v1, p2

    new-array v0, v1, [B

    .line 176
    .local v0, nalUnit:[B
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .locals 4
    .parameter "data"
    .parameter "index"

    .prologue
    .line 222
    array-length v2, p0

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    sub-int v0, v2, v3

    .line 223
    .local v0, endIndex:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 224
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    .end local v1           #i:I
    :goto_1
    return v1

    .line 223
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .parameter "data"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 239
    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 243
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 12
    .parameter "audioSpecificConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 88
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 89
    .local v1, bitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 90
    .local v0, audioObjectType:I
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 92
    .local v4, frequencyIndex:I
    const/16 v6, 0xf

    if-ne v4, v6, :cond_2

    .line 93
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 98
    .local v5, sampleRate:I
    :goto_0
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 99
    .local v2, channelConfiguration:I
    if-eq v0, v10, :cond_0

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 106
    const/16 v6, 0xf

    if-ne v4, v6, :cond_4

    .line 107
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 112
    :goto_1
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 113
    const/16 v6, 0x16

    if-ne v0, v6, :cond_1

    .line 115
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 118
    :cond_1
    sget-object v6, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v6, v2

    .line 119
    .local v3, channelCount:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    :goto_2
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 95
    .end local v2           #channelConfiguration:I
    .end local v3           #channelCount:I
    .end local v5           #sampleRate:I
    :cond_2
    if-ge v4, v11, :cond_3

    move v6, v7

    :goto_3
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 96
    sget-object v6, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    .restart local v5       #sampleRate:I
    goto :goto_0

    .end local v5           #sampleRate:I
    :cond_3
    move v6, v8

    .line 95
    goto :goto_3

    .line 109
    .restart local v2       #channelConfiguration:I
    .restart local v5       #sampleRate:I
    :cond_4
    if-ge v4, v11, :cond_5

    move v6, v7

    :goto_4
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 110
    sget-object v6, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v5, v6, v4

    goto :goto_1

    :cond_5
    move v6, v8

    .line 109
    goto :goto_4

    .restart local v3       #channelCount:I
    :cond_6
    move v7, v8

    .line 119
    goto :goto_2
.end method

.method public static splitNalUnits([B)[[B
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 193
    invoke-static {p0, v8}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 195
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 211
    :goto_0
    return-object v7

    .line 197
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v6, starts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 200
    .local v3, nalUnitIndex:I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v7, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v7, v7

    add-int/2addr v7, v3

    invoke-static {p0, v7}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v3

    .line 202
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 203
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [[B

    .line 204
    .local v4, split:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 205
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 206
    .local v5, startIndex:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, endIndex:I
    :goto_2
    sub-int v7, v0, v5

    new-array v2, v7, [B

    .line 208
    .local v2, nal:[B
    array-length v7, v2

    invoke-static {p0, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    aput-object v2, v4, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    .end local v0           #endIndex:I
    .end local v2           #nal:[B
    :cond_2
    array-length v0, p0

    goto :goto_2

    .end local v5           #startIndex:I
    :cond_3
    move-object v7, v4

    .line 211
    goto :goto_0
.end method
