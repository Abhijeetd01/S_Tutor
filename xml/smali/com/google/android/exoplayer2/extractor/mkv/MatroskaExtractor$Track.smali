.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DISPLAY_UNIT_PIXELS:I


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public encryptionKeyId:[B

.field public flagDefault:Z

.field public flagForced:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public type:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1320
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1321
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1322
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1323
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1325
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1329
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1330
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 1331
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1332
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1333
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1337
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1338
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private static parseFourCcVc1Private(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;
    .locals 10
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1522
    const/16 v7, 0x10

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 1524
    .local v2, compression:J
    const-wide/32 v8, 0x31435657

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 1525
    const/4 v7, 0x0

    .line 1537
    :goto_0
    return-object v7

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    add-int/lit8 v6, v7, 0x14

    .line 1531
    .local v6, startOffset:I
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1532
    .local v0, bufferData:[B
    move v5, v6

    .local v5, offset:I
    :goto_1
    array-length v7, v0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_2

    .line 1533
    aget-byte v7, v0, v5

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v0, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v0, v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_1

    .line 1536
    array-length v7, v0

    invoke-static {v0, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1537
    .local v4, initializationData:[B
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 1532
    .end local v4           #initializationData:[B
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1541
    :cond_2
    new-instance v7, Lcom/google/android/exoplayer2/ParserException;

    const-string v8, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    .end local v0           #bufferData:[B
    .end local v2           #compression:J
    .end local v5           #offset:I
    .end local v6           #startOffset:I
    :catch_0
    move-exception v1

    .line 1543
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/google/android/exoplayer2/ParserException;

    const-string v8, "Error parsing FourCC VC1 codec private"

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1606
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    .line 1607
    .local v1, formatTag:I
    if-ne v1, v2, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return v2

    .line 1609
    :cond_1
    const v4, 0xfffe

    if-ne v1, v4, :cond_3

    .line 1610
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1614
    goto :goto_0

    .line 1616
    .end local v1           #formatTag:I
    :catch_0
    move-exception v0

    .line 1617
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Error parsing MS/ACM codec private"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 11
    .parameter "codecPrivate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 1556
    const/4 v8, 0x0

    :try_start_0
    aget-byte v8, p0, v8

    if-eq v8, v10, :cond_0

    .line 1557
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1559
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    const/4 v2, 0x1

    .line 1560
    .local v2, offset:I
    const/4 v6, 0x0

    .local v6, vorbisInfoLength:I
    move v3, v2

    .line 1561
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    :try_start_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_1

    .line 1562
    add-int/lit16 v6, v6, 0xff

    .line 1563
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    move v3, v2

    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0

    .line 1565
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    aget-byte v8, p0, v3

    add-int/2addr v6, v8

    .line 1567
    const/4 v7, 0x0

    .local v7, vorbisSkipLength:I
    move v3, v2

    .line 1568
    .end local v2           #offset:I
    .restart local v3       #offset:I
    :goto_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_2

    .line 1569
    add-int/lit16 v7, v7, 0xff

    .line 1570
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    move v3, v2

    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 1572
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    aget-byte v8, p0, v3

    add-int/2addr v7, v8

    .line 1574
    aget-byte v8, p0, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 1575
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1577
    :cond_3
    new-array v5, v6, [B

    .line 1578
    .local v5, vorbisInfo:[B
    const/4 v8, 0x0

    invoke-static {p0, v2, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1579
    add-int/2addr v2, v6

    .line 1580
    aget-byte v8, p0, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 1581
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1583
    :cond_4
    add-int/2addr v2, v7

    .line 1584
    aget-byte v8, p0, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    .line 1585
    new-instance v8, Lcom/google/android/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1587
    :cond_5
    array-length v8, p0

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    .line 1588
    .local v4, vorbisBooks:[B
    const/4 v8, 0x0

    array-length v9, p0

    sub-int/2addr v9, v2

    invoke-static {p0, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1589
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1590
    .local v1, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1592
    return-object v1
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 31
    .parameter "output"
    .parameter "trackId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1349
    const/4 v6, -0x1

    .line 1350
    .local v6, maxInputSize:I
    const/4 v9, -0x1

    .line 1351
    .local v9, pcmEncoding:I
    const/4 v10, 0x0

    .line 1352
    .local v10, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1465
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "Unrecognized codec identifier."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1352
    :sswitch_0
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "V_MPEG2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "V_THEORA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string v5, "A_OPUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "A_MPEG/L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "A_EAC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "A_TRUEHD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "A_DTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "A_FLAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "A_MS/ACM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "S_VOBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 1354
    :pswitch_0
    const-string v3, "video/x-vnd.on2.vp8"

    .line 1470
    .local v3, mimeType:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 1471
    .local v12, selectionFlags:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v12, v2

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    :goto_3
    or-int/2addr v12, v2

    .line 1475
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1476
    const/16 v30, 0x1

    .line 1477
    .local v30, type:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v28

    .line 1506
    .local v28, format:Lcom/google/android/exoplayer2/Format;
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 1508
    return-void

    .line 1357
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v12           #selectionFlags:I
    .end local v28           #format:Lcom/google/android/exoplayer2/Format;
    .end local v30           #type:I
    :pswitch_1
    const-string v3, "video/x-vnd.on2.com.google.android.exoplayer2.ext.opus.vp9"

    .line 1358
    .restart local v3       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 1360
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_2
    const-string v3, "video/mpeg2"

    .line 1361
    .restart local v3       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 1365
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_3
    const-string v3, "video/mp4v-es"

    .line 1366
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v2, :cond_2

    const/4 v10, 0x0

    .line 1368
    :goto_5
    goto :goto_1

    .line 1366
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1367
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_5

    .line 1370
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_4
    const-string v3, "video/avc"

    .line 1371
    .restart local v3       #mimeType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v27

    .line 1372
    .local v27, avcConfig:Lcom/google/android/exoplayer2/video/AvcConfig;
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1373
    move-object/from16 v0, v27

    iget v2, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto/16 :goto_1

    .line 1376
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v27           #avcConfig:Lcom/google/android/exoplayer2/video/AvcConfig;
    :pswitch_5
    const-string v3, "video/hevc"

    .line 1377
    .restart local v3       #mimeType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v29

    .line 1378
    .local v29, hevcConfig:Lcom/google/android/exoplayer2/video/HevcConfig;
    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1379
    move-object/from16 v0, v29

    iget v2, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto/16 :goto_1

    .line 1382
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v29           #hevcConfig:Lcom/google/android/exoplayer2/video/HevcConfig;
    :pswitch_6
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcVc1Private(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v10

    .line 1383
    if-nez v10, :cond_3

    const-string v3, "video/x-unknown"

    .line 1384
    .restart local v3       #mimeType:Ljava/lang/String;
    :goto_6
    goto/16 :goto_1

    .line 1383
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_3
    const-string v3, "video/wvc1"

    goto :goto_6

    .line 1388
    :pswitch_7
    const-string v3, "video/x-unknown"

    .line 1389
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1391
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_8
    const-string v3, "audio/vorbis"

    .line 1392
    .restart local v3       #mimeType:Ljava/lang/String;
    const/16 v6, 0x2000

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v10

    .line 1394
    goto/16 :goto_1

    .line 1396
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_9
    const-string v3, "audio/opus"

    .line 1397
    .restart local v3       #mimeType:Ljava/lang/String;
    const/16 v6, 0x1680

    .line 1398
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v2, 0x3

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1399
    .restart local v10       #initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    const/16 v2, 0x8

    .line 1401
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1400
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    const/16 v2, 0x8

    .line 1403
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1402
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1406
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_a
    const-string v3, "audio/mp4a-latm"

    .line 1407
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1408
    goto/16 :goto_1

    .line 1410
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_b
    const-string v3, "audio/mpeg-L2"

    .line 1411
    .restart local v3       #mimeType:Ljava/lang/String;
    const/16 v6, 0x1000

    .line 1412
    goto/16 :goto_1

    .line 1414
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_c
    const-string v3, "audio/mpeg"

    .line 1415
    .restart local v3       #mimeType:Ljava/lang/String;
    const/16 v6, 0x1000

    .line 1416
    goto/16 :goto_1

    .line 1418
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_d
    const-string v3, "audio/ac3"

    .line 1419
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1421
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_e
    const-string v3, "audio/eac3"

    .line 1422
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1424
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_f
    const-string v3, "audio/true-hd"

    .line 1425
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1428
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_10
    const-string v3, "audio/vnd.dts"

    .line 1429
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1431
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_11
    const-string v3, "audio/vnd.dts.hd"

    .line 1432
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1434
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_12
    const-string v3, "audio/x-com.google.android.exoplayer2.demo.flac"

    .line 1435
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1436
    goto/16 :goto_1

    .line 1438
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_13
    const-string v3, "audio/raw"

    .line 1439
    .restart local v3       #mimeType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1440
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1442
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v9

    .line 1443
    if-nez v9, :cond_1

    .line 1444
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_14
    const-string v3, "audio/raw"

    .line 1449
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v9

    .line 1450
    if-nez v9, :cond_1

    .line 1451
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1455
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_15
    const-string v3, "application/x-subrip"

    .line 1456
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1458
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_16
    const-string v3, "application/vobsub"

    .line 1459
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1460
    goto/16 :goto_1

    .line 1462
    .end local v3           #mimeType:Ljava/lang/String;
    :pswitch_17
    const-string v3, "application/pgs"

    .line 1463
    .restart local v3       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1471
    .restart local v12       #selectionFlags:I
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1472
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1480
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1481
    const/16 v30, 0x2

    .line 1482
    .restart local v30       #type:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_8

    .line 1483
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :goto_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1486
    :cond_8
    const/high16 v23, -0x4080

    .line 1487
    .local v23, pixelWidthHeightRatio:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 1488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float v23, v2, v4

    .line 1490
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    move/from16 v19, v0

    const/high16 v20, -0x4080

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v26, v0

    move-object v14, v3

    move/from16 v17, v6

    move-object/from16 v21, v10

    invoke-static/range {v13 .. v26}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v28

    .line 1493
    .restart local v28       #format:Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_4

    .line 1483
    .end local v23           #pixelWidthHeightRatio:F
    .end local v28           #format:Lcom/google/android/exoplayer2/Format;
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto :goto_7

    .line 1484
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_8

    .line 1493
    .end local v30           #type:I
    :cond_c
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1494
    const/16 v30, 0x3

    .line 1495
    .restart local v30       #type:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v19, v0

    move-object v14, v3

    move/from16 v17, v12

    invoke-static/range {v13 .. v19}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v28

    .restart local v28       #format:Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_4

    .line 1497
    .end local v28           #format:Lcom/google/android/exoplayer2/Format;
    .end local v30           #type:I
    :cond_d
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "application/pgs"

    .line 1498
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1499
    :cond_e
    const/16 v30, 0x3

    .line 1500
    .restart local v30       #type:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v19, v0

    move-object v14, v3

    move-object/from16 v17, v10

    invoke-static/range {v13 .. v19}, Lcom/google/android/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v28

    .restart local v28       #format:Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_4

    .line 1503
    .end local v28           #format:Lcom/google/android/exoplayer2/Format;
    .end local v30           #type:I
    :cond_f
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "Unexpected MIME type."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1352
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_5
        -0x7ce7f3b0 -> :sswitch_3
        -0x76567dc0 -> :sswitch_16
        -0x6a615338 -> :sswitch_11
        -0x672350af -> :sswitch_a
        -0x585f4fce -> :sswitch_d
        -0x585f4fcd -> :sswitch_e
        -0x51dc40b2 -> :sswitch_8
        -0x2016c535 -> :sswitch_4
        -0x2016c4e5 -> :sswitch_6
        -0x19552dbd -> :sswitch_19
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_c
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_12
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x5e8da3e -> :sswitch_1a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_13
        0x2b453ce4 -> :sswitch_17
        0x32fdf009 -> :sswitch_7
        0x54c61e47 -> :sswitch_18
        0x6bd6c624 -> :sswitch_2
        0x7446132a -> :sswitch_10
        0x7446b0a6 -> :sswitch_15
        0x744ad97d -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
