.class Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 2
    .parameter
    .parameter "pid"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 365
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 366
    return-void
.end method

.method private readEsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 475
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 476
    .local v3, descriptorsStartPosition:I
    add-int v2, v3, p2

    .line 477
    .local v2, descriptorsEndPosition:I
    const/4 v8, -0x1

    .line 478
    .local v8, streamType:I
    const/4 v6, 0x0

    .line 479
    .local v6, language:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    if-ge v9, v2, :cond_7

    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 481
    .local v1, descriptorTag:I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 482
    .local v0, descriptorLength:I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    add-int v7, v9, v0

    .line 483
    .local v7, positionOfNextDescriptor:I
    const/4 v9, 0x5

    if-ne v1, v9, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 485
    .local v4, formatIdentifier:J
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_1

    .line 486
    const/16 v8, 0x81

    .line 503
    .end local v4           #formatIdentifier:J
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 487
    .restart local v4       #formatIdentifier:J
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 488
    const/16 v8, 0x87

    goto :goto_1

    .line 489
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$1100()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 490
    const/16 v8, 0x24

    goto :goto_1

    .line 492
    .end local v4           #formatIdentifier:J
    :cond_3
    const/16 v9, 0x6a

    if-ne v1, v9, :cond_4

    .line 493
    const/16 v8, 0x81

    goto :goto_1

    .line 494
    :cond_4
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_5

    .line 495
    const/16 v8, 0x87

    goto :goto_1

    .line 496
    :cond_5
    const/16 v9, 0x7b

    if-ne v1, v9, :cond_6

    .line 497
    const/16 v8, 0x8a

    goto :goto_1

    .line 498
    :cond_6
    const/16 v9, 0xa

    if-ne v1, v9, :cond_0

    .line 499
    new-instance v9, Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 505
    .end local v0           #descriptorLength:I
    .end local v1           #descriptorTag:I
    .end local v7           #positionOfNextDescriptor:I
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 506
    new-instance v9, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    iget-object v10, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 507
    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v8, v6, v10}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    .line 506
    return-object v9
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 21
    .parameter "sectionData"

    .prologue
    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 377
    .local v13, tableId:I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v13, v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 392
    .local v14, timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :goto_1
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 396
    .local v9, programNumber:I
    const/16 v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 404
    .local v8, programInfoLength:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$400(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v16

    if-nez v16, :cond_3

    .line 409
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v16, 0x15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    .line 410
    .local v4, dummyEsInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$500(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v17

    const/16 v18, 0x15

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v17

    #setter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static/range {v16 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$402(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$400(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-result-object v17

    new-instance v18, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v19, 0x15

    const/16 v20, 0x2000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v14, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 415
    .end local v4           #dummyEsInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    .line 416
    .local v11, remainingEntriesLength:I
    :cond_4
    :goto_2
    if-lez v11, :cond_a

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 419
    .local v12, streamType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xd

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 421
    .local v5, elementaryPid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 423
    .local v7, esInfoLength:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v6

    .line 424
    .local v6, esInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    .line 425
    iget v12, v6, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 427
    :cond_5
    add-int/lit8 v16, v7, 0x5

    sub-int v11, v11, v16

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move v15, v12

    .line 430
    .local v15, trackId:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$700(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$700(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ne v12, v0, :cond_9

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$400(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v10

    .line 446
    .local v10, reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    :cond_6
    :goto_4
    if-eqz v10, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 386
    .end local v5           #elementaryPid:I
    .end local v6           #esInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .end local v7           #esInfoLength:I
    .end local v8           #programInfoLength:I
    .end local v9           #programNumber:I
    .end local v10           #reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v11           #remainingEntriesLength:I
    .end local v12           #streamType:I
    .end local v14           #timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local v15           #trackId:I
    :cond_7
    new-instance v14, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    .line 387
    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 388
    .restart local v14       #timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v5       #elementaryPid:I
    .restart local v6       #esInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .restart local v7       #esInfoLength:I
    .restart local v8       #programInfoLength:I
    .restart local v9       #programNumber:I
    .restart local v11       #remainingEntriesLength:I
    .restart local v12       #streamType:I
    :cond_8
    move v15, v5

    .line 429
    goto/16 :goto_3

    .line 439
    .restart local v15       #trackId:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$500(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v12, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v10

    .line 440
    .restart local v10       #reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    if-eqz v10, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    new-instance v17, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v15, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v14, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_4

    .line 450
    .end local v5           #elementaryPid:I
    .end local v6           #esInfo:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .end local v7           #esInfoLength:I
    .end local v10           #reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v12           #streamType:I
    .end local v15           #trackId:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$800(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static/range {v16 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$102(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static/range {v16 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$802(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto/16 :goto_0

    .line 457
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v16

    #setter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$102(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    if-nez v16, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static/range {v16 .. v17}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$802(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto/16 :goto_0

    .line 458
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .parameter "timestampAdjuster"
    .parameter "extractorOutput"
    .parameter "idGenerator"

    .prologue
    .line 372
    return-void
.end method
