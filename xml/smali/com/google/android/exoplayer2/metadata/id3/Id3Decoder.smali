.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;,
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    }
.end annotation


# static fields
.field public static final ID3_HEADER_LENGTH:I = 0xa

#the value of this static final field might be set in the static constructor
.field public static final ID3_TAG:I = 0x0

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0
    .parameter "framePredicate"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 83
    return-void
.end method

.method private static decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 17
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "majorVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 493
    .local v6, encoding:I
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, charset:Ljava/lang/String;
    add-int/lit8 v12, p1, -0x1

    new-array v2, v12, [B

    .line 496
    .local v2, data:[B
    const/4 v12, 0x0

    add-int/lit8 v13, p1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 500
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 501
    const/4 v8, 0x2

    .line 502
    .local v8, mimeTypeEndIndex:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const-string v16, "ISO-8859-1"

    move-object/from16 v0, v16

    invoke-direct {v13, v2, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    .local v7, mimeType:Ljava/lang/String;
    const-string v12, "image/jpg"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 504
    const-string v7, "image/jpeg"

    .line 514
    :cond_0
    :goto_0
    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v11, v12, 0xff

    .line 516
    .local v11, pictureType:I
    add-int/lit8 v5, v8, 0x2

    .line 517
    .local v5, descriptionStartIndex:I
    invoke-static {v2, v5, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 518
    .local v4, descriptionEndIndex:I
    new-instance v3, Ljava/lang/String;

    sub-int v12, v4, v5

    invoke-direct {v3, v2, v5, v12, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 521
    .local v3, description:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v12

    add-int v10, v4, v12

    .line 522
    .local v10, pictureDataStartIndex:I
    array-length v12, v2

    invoke-static {v2, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 524
    .local v9, pictureData:[B
    new-instance v12, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v12, v7, v3, v11, v9}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v12

    .line 507
    .end local v3           #description:Ljava/lang/String;
    .end local v4           #descriptionEndIndex:I
    .end local v5           #descriptionStartIndex:I
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #mimeTypeEndIndex:I
    .end local v9           #pictureData:[B
    .end local v10           #pictureDataStartIndex:I
    .end local v11           #pictureType:I
    :cond_1
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v8

    .line 508
    .restart local v8       #mimeTypeEndIndex:I
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ISO-8859-1"

    invoke-direct {v12, v2, v13, v8, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .restart local v7       #mimeType:Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 510
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "id"

    .prologue
    .line 628
    new-array v0, p1, [B

    .line 629
    .local v0, frame:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 631
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .locals 22
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "majorVersion"
    .parameter "unsignedIntFrameSizeHack"
    .parameter "frameHeaderSize"
    .parameter "framePredicate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v17

    .line 558
    .local v17, framePosition:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v15

    .line 559
    .local v15, chapterIdEndIndex:I
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v20, v15, v17

    const-string v21, "ISO-8859-1"

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v6, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 561
    .local v7, chapterId:Ljava/lang/String;
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 564
    .local v8, startTime:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 565
    .local v9, endTime:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 566
    .local v10, startOffset:J
    const-wide v20, 0xffffffffL

    cmp-long v6, v10, v20

    if-nez v6, :cond_0

    .line 567
    const-wide/16 v10, -0x1

    .line 569
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 570
    .local v12, endOffset:J
    const-wide v20, 0xffffffffL

    cmp-long v6, v12, v20

    if-nez v6, :cond_1

    .line 571
    const-wide/16 v12, -0x1

    .line 574
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v19, subFrames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v18, v17, p1

    .line 576
    .local v18, limit:I
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 577
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v16

    .line 579
    .local v16, frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v16, :cond_2

    .line 580
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 585
    .local v14, subFrameArray:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 586
    new-instance v6, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v6
.end method

.method private static decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 24
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "majorVersion"
    .parameter "unsignedIntFrameSizeHack"
    .parameter "frameHeaderSize"
    .parameter "framePredicate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 593
    .local v16, framePosition:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v13

    .line 594
    .local v13, elementIdEndIndex:I
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v21, v13, v16

    const-string v22, "ISO-8859-1"

    move/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v5, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 596
    .local v6, elementId:Ljava/lang/String;
    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 599
    .local v12, ctocFlags:I
    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 600
    .local v7, isRoot:Z
    :goto_0
    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 602
    .local v8, isOrdered:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 603
    .local v11, childCount:I
    new-array v9, v11, [Ljava/lang/String;

    .line 604
    .local v9, children:[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v11, :cond_2

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 606
    .local v19, startIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v14

    .line 607
    .local v14, endIndex:I
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v21, v0

    sub-int v22, v14, v19

    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v5, v9, v17

    .line 608
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 604
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 599
    .end local v7           #isRoot:Z
    .end local v8           #isOrdered:Z
    .end local v9           #children:[Ljava/lang/String;
    .end local v11           #childCount:I
    .end local v14           #endIndex:I
    .end local v17           #i:I
    .end local v19           #startIndex:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 600
    .restart local v7       #isRoot:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 611
    .restart local v8       #isOrdered:Z
    .restart local v9       #children:[Ljava/lang/String;
    .restart local v11       #childCount:I
    .restart local v17       #i:I
    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v20, subFrames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v18, v16, p1

    .line 613
    .local v18, limit:I
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 614
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v15

    .line 616
    .local v15, frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v15, :cond_3

    .line 617
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 621
    .end local v15           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v10, v5, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 622
    .local v10, subFrameArray:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 623
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v5
.end method

.method private static decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 11
    .parameter "id3Data"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 530
    .local v4, encoding:I
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, charset:Ljava/lang/String;
    new-array v1, v9, [B

    .line 533
    .local v1, data:[B
    invoke-virtual {p0, v1, v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 534
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 536
    .local v5, language:Ljava/lang/String;
    add-int/lit8 v9, p1, -0x4

    new-array v1, v9, [B

    .line 537
    add-int/lit8 v9, p1, -0x4

    invoke-virtual {p0, v1, v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 539
    invoke-static {v1, v10, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 540
    .local v3, descriptionEndIndex:I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v10, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 543
    .local v2, description:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int v8, v3, v9

    .line 544
    .local v8, textStartIndex:I
    array-length v9, v1

    if-ge v8, v9, :cond_0

    .line 545
    invoke-static {v1, v8, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 546
    .local v7, textEndIndex:I
    new-instance v6, Ljava/lang/String;

    sub-int v9, v7, v8

    invoke-direct {v6, v1, v8, v9, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 551
    .end local v7           #textEndIndex:I
    .local v6, text:Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v9, v5, v2, v6}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 548
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    const-string v6, ""

    .restart local v6       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private static decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 24
    .parameter "majorVersion"
    .parameter "id3Data"
    .parameter "unsignedIntFrameSizeHack"
    .parameter "frameHeaderSize"
    .parameter "framePredicate"

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 237
    .local v4, frameId0:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 238
    .local v5, frameId1:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 239
    .local v6, frameId2:I
    const/4 v2, 0x3

    move/from16 v0, p0

    if-lt v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 242
    .local v7, frameId3:I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, p0

    if-ne v0, v2, :cond_2

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 244
    .local v9, frameSize:I
    if-nez p2, :cond_0

    .line 245
    and-int/lit16 v2, v9, 0xff

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v9, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v9, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x15

    or-int v9, v2, v3

    .line 254
    :cond_0
    :goto_1
    const/4 v2, 0x3

    move/from16 v0, p0

    if-lt v0, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v15

    .line 255
    .local v15, flags:I
    :goto_2
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    if-nez v15, :cond_5

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 259
    const/16 v16, 0x0

    .line 357
    :goto_3
    return-object v16

    .line 239
    .end local v7           #frameId3:I
    .end local v9           #frameSize:I
    .end local v15           #flags:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 248
    .restart local v7       #frameId3:I
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p0

    if-ne v0, v2, :cond_3

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .restart local v9       #frameSize:I
    goto :goto_1

    .line 251
    .end local v9           #frameSize:I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    .restart local v9       #frameSize:I
    goto :goto_1

    .line 254
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 262
    .restart local v15       #flags:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int v23, v2, v9

    .line 263
    .local v23, nextFramePosition:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move/from16 v0, v23

    if-le v0, v2, :cond_6

    .line 264
    const-string v2, "Id3Decoder"

    const-string v3, "Frame size exceeds remaining tag data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 266
    const/16 v16, 0x0

    goto :goto_3

    .line 269
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v2, p4

    move/from16 v3, p0

    .line 270
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v2

    if-nez v2, :cond_7

    .line 272
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 273
    const/16 v16, 0x0

    goto :goto_3

    .line 277
    :cond_7
    const/16 v20, 0x0

    .line 278
    .local v20, isCompressed:Z
    const/16 v21, 0x0

    .line 279
    .local v21, isEncrypted:Z
    const/16 v22, 0x0

    .line 280
    .local v22, isUnsynchronized:Z
    const/16 v17, 0x0

    .line 281
    .local v17, hasDataLength:Z
    const/16 v18, 0x0

    .line 282
    .local v18, hasGroupIdentifier:Z
    const/4 v2, 0x3

    move/from16 v0, p0

    if-ne v0, v2, :cond_d

    .line 283
    and-int/lit16 v2, v15, 0x80

    if-eqz v2, :cond_a

    const/16 v20, 0x1

    .line 284
    :goto_4
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_b

    const/16 v21, 0x1

    .line 285
    :goto_5
    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_c

    const/16 v18, 0x1

    .line 286
    :goto_6
    move/from16 v17, v20

    .line 295
    :cond_8
    :goto_7
    if-nez v20, :cond_9

    if-eqz v21, :cond_13

    .line 296
    :cond_9
    const-string v2, "Id3Decoder"

    const-string v3, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 298
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 283
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 284
    :cond_b
    const/16 v21, 0x0

    goto :goto_5

    .line 285
    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    .line 287
    :cond_d
    const/4 v2, 0x4

    move/from16 v0, p0

    if-ne v0, v2, :cond_8

    .line 288
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_e

    const/16 v18, 0x1

    .line 289
    :goto_8
    and-int/lit8 v2, v15, 0x8

    if-eqz v2, :cond_f

    const/16 v20, 0x1

    .line 290
    :goto_9
    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_10

    const/16 v21, 0x1

    .line 291
    :goto_a
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_11

    const/16 v22, 0x1

    .line 292
    :goto_b
    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_12

    const/16 v17, 0x1

    :goto_c
    goto :goto_7

    .line 288
    :cond_e
    const/16 v18, 0x0

    goto :goto_8

    .line 289
    :cond_f
    const/16 v20, 0x0

    goto :goto_9

    .line 290
    :cond_10
    const/16 v21, 0x0

    goto :goto_a

    .line 291
    :cond_11
    const/16 v22, 0x0

    goto :goto_b

    .line 292
    :cond_12
    const/16 v17, 0x0

    goto :goto_c

    .line 301
    :cond_13
    if-eqz v18, :cond_14

    .line 302
    add-int/lit8 v9, v9, -0x1

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 305
    :cond_14
    if-eqz v17, :cond_15

    .line 306
    add-int/lit8 v9, v9, -0x4

    .line 307
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 309
    :cond_15
    if-eqz v22, :cond_16

    .line 310
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v9

    .line 315
    :cond_16
    const/16 v2, 0x54

    if-ne v4, v2, :cond_18

    const/16 v2, 0x58

    if-ne v5, v2, :cond_18

    const/16 v2, 0x58

    if-ne v6, v2, :cond_18

    const/4 v2, 0x2

    move/from16 v0, p0

    if-eq v0, v2, :cond_17

    const/16 v2, 0x58

    if-ne v7, v2, :cond_18

    .line 317
    :cond_17
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 359
    .local v16, frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .line 318
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_18
    const/16 v2, 0x54

    if-ne v4, v2, :cond_1a

    .line 319
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_19

    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 322
    .local v19, id:Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v16

    .line 323
    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 320
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v19           #id:Ljava/lang/String;
    :cond_19
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c%c"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    .line 323
    :cond_1a
    const/16 v2, 0x57

    if-ne v4, v2, :cond_1c

    const/16 v2, 0x58

    if-ne v5, v2, :cond_1c

    const/16 v2, 0x58

    if-ne v6, v2, :cond_1c

    const/4 v2, 0x2

    move/from16 v0, p0

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x58

    if-ne v7, v2, :cond_1c

    .line 325
    :cond_1b
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 326
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v2, 0x57

    if-ne v4, v2, :cond_1e

    .line 327
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_1d

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 330
    .restart local v19       #id:Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v16

    .line 331
    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 328
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v19           #id:Ljava/lang/String;
    :cond_1d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c%c"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    .line 331
    :cond_1e
    const/16 v2, 0x50

    if-ne v4, v2, :cond_1f

    const/16 v2, 0x52

    if-ne v5, v2, :cond_1f

    const/16 v2, 0x49

    if-ne v6, v2, :cond_1f

    const/16 v2, 0x56

    if-ne v7, v2, :cond_1f

    .line 332
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 333
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v2, 0x47

    if-ne v4, v2, :cond_21

    const/16 v2, 0x45

    if-ne v5, v2, :cond_21

    const/16 v2, 0x4f

    if-ne v6, v2, :cond_21

    const/16 v2, 0x42

    if-eq v7, v2, :cond_20

    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_21

    .line 335
    :cond_20
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 336
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_21
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_23

    const/16 v2, 0x50

    if-ne v4, v2, :cond_24

    const/16 v2, 0x49

    if-ne v5, v2, :cond_24

    const/16 v2, 0x43

    if-ne v6, v2, :cond_24

    .line 338
    :cond_22
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 336
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_23
    const/16 v2, 0x41

    if-ne v4, v2, :cond_24

    const/16 v2, 0x50

    if-ne v5, v2, :cond_24

    const/16 v2, 0x49

    if-ne v6, v2, :cond_24

    const/16 v2, 0x43

    if-eq v7, v2, :cond_22

    .line 339
    :cond_24
    const/16 v2, 0x43

    if-ne v4, v2, :cond_26

    const/16 v2, 0x4f

    if-ne v5, v2, :cond_26

    const/16 v2, 0x4d

    if-ne v6, v2, :cond_26

    const/16 v2, 0x4d

    if-eq v7, v2, :cond_25

    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_26

    .line 341
    :cond_25
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 342
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_26
    const/16 v2, 0x43

    if-ne v4, v2, :cond_27

    const/16 v2, 0x48

    if-ne v5, v2, :cond_27

    const/16 v2, 0x41

    if-ne v6, v2, :cond_27

    const/16 v2, 0x50

    if-ne v7, v2, :cond_27

    move-object/from16 v8, p1

    move/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 343
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 345
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_27
    const/16 v2, 0x43

    if-ne v4, v2, :cond_28

    const/16 v2, 0x54

    if-ne v5, v2, :cond_28

    const/16 v2, 0x4f

    if-ne v6, v2, :cond_28

    const/16 v2, 0x43

    if-ne v7, v2, :cond_28

    move-object/from16 v8, p1

    move/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 346
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 349
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_28
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_29

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 352
    .restart local v19       #id:Ljava/lang/String;
    :goto_10
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v16

    .restart local v16       #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 350
    .end local v16           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v19           #id:Ljava/lang/String;
    :cond_29
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%c%c%c%c"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 351
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto :goto_10

    .line 355
    :catch_0
    move-exception v14

    .line 356
    .local v14, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "Id3Decoder"

    const-string v3, "Unsupported character encoding"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    const/16 v16, 0x0

    .line 359
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .end local v14           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v2
.end method

.method private static decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 15
    .parameter "id3Data"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 466
    .local v5, encoding:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, charset:Ljava/lang/String;
    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    .line 469
    .local v1, data:[B
    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 471
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v10

    .line 472
    .local v10, mimeTypeEndIndex:I
    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 474
    .local v9, mimeType:Ljava/lang/String;
    add-int/lit8 v8, v10, 0x1

    .line 475
    .local v8, filenameStartIndex:I
    invoke-static {v1, v8, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 476
    .local v7, filenameEndIndex:I
    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 479
    .local v6, filename:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    .line 480
    .local v4, descriptionStartIndex:I
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 481
    .local v3, descriptionEndIndex:I
    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 484
    .local v2, description:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    .line 485
    .local v12, objectDataStartIndex:I
    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 487
    .local v11, objectData:[B
    new-instance v13, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_0

    .line 144
    const-string v9, "Id3Decoder"

    const-string v11, "Data too short to be an ID3 tag"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 190
    :goto_0
    return-object v9

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 149
    .local v5, id:I
    sget v11, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v5, v11, :cond_1

    .line 150
    const-string v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 151
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 155
    .local v8, majorVersion:I
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 157
    .local v1, flags:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 159
    .local v2, framesSize:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    .line 160
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_2

    move v6, v7

    .line 161
    .local v6, isCompressed:Z
    :goto_1
    if-eqz v6, :cond_4

    .line 162
    const-string v9, "Id3Decoder"

    const-string v11, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 163
    goto :goto_0

    .end local v6           #isCompressed:Z
    :cond_2
    move v6, v9

    .line 160
    goto :goto_1

    .line 165
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    .line 166
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_5

    move v3, v7

    .line 167
    .local v3, hasExtendedHeader:Z
    :goto_2
    if-eqz v3, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 169
    .local v0, extendedHeaderSize:I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 170
    add-int/lit8 v10, v0, 0x4

    sub-int/2addr v2, v10

    .line 189
    .end local v0           #extendedHeaderSize:I
    .end local v3           #hasExtendedHeader:Z
    :cond_4
    :goto_3
    if-ge v8, v13, :cond_b

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_b

    .line 190
    .local v7, isUnsynchronized:Z
    :goto_4
    new-instance v9, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v9, v8, v7, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    goto :goto_0

    .end local v7           #isUnsynchronized:Z
    :cond_5
    move v3, v9

    .line 166
    goto :goto_2

    .line 172
    :cond_6
    if-ne v8, v13, :cond_a

    .line 173
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_8

    move v3, v7

    .line 174
    .restart local v3       #hasExtendedHeader:Z
    :goto_5
    if-eqz v3, :cond_7

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 176
    .restart local v0       #extendedHeaderSize:I
    add-int/lit8 v10, v0, -0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    sub-int/2addr v2, v0

    .line 179
    .end local v0           #extendedHeaderSize:I
    :cond_7
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_9

    move v4, v7

    .line 180
    .local v4, hasFooter:Z
    :goto_6
    if-eqz v4, :cond_4

    .line 181
    add-int/lit8 v2, v2, -0xa

    goto :goto_3

    .end local v3           #hasExtendedHeader:Z
    .end local v4           #hasFooter:Z
    :cond_8
    move v3, v9

    .line 173
    goto :goto_5

    .restart local v3       #hasExtendedHeader:Z
    :cond_9
    move v4, v9

    .line 179
    goto :goto_6

    .line 184
    .end local v3           #hasExtendedHeader:Z
    :cond_a
    const-string v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 185
    goto/16 :goto_0

    :cond_b
    move v7, v9

    .line 189
    goto :goto_4
.end method

.method private static decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 8
    .parameter "id3Data"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 448
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v6, ""

    new-array v7, v7, [B

    invoke-direct {v5, v6, v7}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    .line 460
    :goto_0
    return-object v5

    .line 451
    :cond_0
    new-array v0, p1, [B

    .line 452
    .local v0, data:[B
    invoke-virtual {p0, v0, v7, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 454
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 455
    .local v2, ownerEndIndex:I
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v0, v7, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 457
    .local v1, owner:Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .line 458
    .local v4, privateDataStartIndex:I
    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 460
    .local v3, privateData:[B
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private static decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 8
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 388
    const/4 v5, 0x1

    if-gt p1, v5, :cond_0

    .line 390
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v6, ""

    invoke-direct {v5, p2, v7, v6}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object v5

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 394
    .local v2, encoding:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, charset:Ljava/lang/String;
    add-int/lit8 v5, p1, -0x1

    new-array v1, v5, [B

    .line 397
    .local v1, data:[B
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 399
    invoke-static {v1, v6, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 400
    .local v4, valueEndIndex:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v6, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 402
    .local v3, value:Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v7, v3}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 10
    .parameter "id3Data"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 366
    .local v4, encoding:I
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, charset:Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 369
    .local v1, data:[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 371
    invoke-static {v1, v9, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 372
    .local v3, descriptionEndIndex:I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 375
    .local v2, description:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 376
    .local v7, valueStartIndex:I
    array-length v8, v1

    if-ge v7, v8, :cond_0

    .line 377
    invoke-static {v1, v7, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 378
    .local v6, valueEndIndex:I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 383
    .end local v6           #valueEndIndex:I
    .local v5, value:Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v9, "TXXX"

    invoke-direct {v8, v9, v2, v5}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 380
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    const-string v5, ""

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method private static decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 6
    .parameter "id3Data"
    .parameter "frameSize"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 430
    if-nez p1, :cond_0

    .line 432
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v4, ""

    invoke-direct {v3, p2, v5, v4}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-object v3

    .line 435
    :cond_0
    new-array v0, p1, [B

    .line 436
    .local v0, data:[B
    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 438
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 439
    .local v2, urlEndIndex:I
    new-instance v1, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 441
    .local v1, url:Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-direct {v3, p2, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 10
    .parameter "id3Data"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 408
    .local v4, encoding:I
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, charset:Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 411
    .local v1, data:[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 413
    invoke-static {v1, v9, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 414
    .local v3, descriptionEndIndex:I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 417
    .local v2, description:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 418
    .local v7, urlStartIndex:I
    array-length v8, v1

    if-ge v7, v8, :cond_0

    .line 419
    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v6

    .line 420
    .local v6, urlEndIndex:I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    const-string v9, "ISO-8859-1"

    invoke-direct {v5, v1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 425
    .end local v6           #urlEndIndex:I
    .local v5, url:Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v9, "WXXX"

    invoke-direct {v8, v9, v2, v5}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 422
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    const-string v5, ""

    .restart local v5       #url:Ljava/lang/String;
    goto :goto_0
.end method

.method private static delimiterLength(I)I
    .locals 1
    .parameter "encodingByte"

    .prologue
    .line 703
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .parameter "encodingByte"

    .prologue
    .line 660
    packed-switch p0, :pswitch_data_0

    .line 670
    const-string v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 664
    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    .line 666
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 668
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .parameter "data"
    .parameter "fromIndex"
    .parameter "encoding"

    .prologue
    .line 675
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 678
    .local v0, terminationPos:I
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 690
    :goto_0
    return v1

    .line 687
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 683
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 684
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    .line 685
    goto :goto_0

    .line 690
    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .parameter "data"
    .parameter "fromIndex"

    .prologue
    .line 694
    move v0, p1

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 695
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 699
    .end local v0           #i:I
    :goto_1
    return v0

    .line 694
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 5
    .parameter "data"
    .parameter "length"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 644
    .local v0, bytes:[B
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .local v1, i:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p1, :cond_1

    .line 645
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 646
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    add-int/lit8 p1, p1, -0x1

    .line 644
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_1
    return p1
.end method

.method private static validateV4Frames(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 12
    .parameter "id3Data"
    .parameter "unsignedIntFrameSizeHack"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 197
    .local v4, startPosition:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_7

    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 199
    .local v2, id:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 200
    .local v1, frameSize:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 201
    .local v0, flags:I
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 228
    .end local v0           #flags:I
    .end local v1           #frameSize:I
    .end local v2           #id:I
    :goto_1
    return v5

    .line 204
    .restart local v0       #flags:I
    .restart local v1       #frameSize:I
    .restart local v2       #id:I
    :cond_0
    if-nez p1, :cond_2

    .line 206
    int-to-long v8, v1

    const-wide/32 v10, 0x808080

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    .line 207
    goto :goto_1

    .line 209
    :cond_1
    and-int/lit16 v7, v1, 0xff

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xe

    or-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x18

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x15

    or-int v1, v7, v8

    .line 212
    :cond_2
    const/4 v3, 0x0

    .line 213
    .local v3, minimumFrameSize:I
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 216
    :cond_3
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_4

    .line 217
    add-int/lit8 v3, v3, 0x4

    .line 219
    :cond_4
    if-ge v1, v3, :cond_5

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    .line 220
    goto :goto_1

    .line 222
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-ge v7, v1, :cond_6

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    .line 223
    goto :goto_1

    .line 225
    :cond_6
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 230
    .end local v0           #flags:I
    .end local v1           #frameSize:I
    .end local v2           #id:I
    .end local v3           #minimumFrameSize:I
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v5

    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 3
    .parameter "inputBuffer"

    .prologue
    .line 87
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 88
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 11
    .parameter "data"
    .parameter "size"

    .prologue
    const/4 v8, 0x0

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, id3Frames:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 102
    .local v3, id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-static {v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v5

    .line 103
    .local v5, id3Header:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    if-nez v5, :cond_0

    .line 135
    :goto_0
    return-object v8

    .line 107
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 108
    .local v6, startPosition:I
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    .line 109
    .local v2, framesSize:I
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 110
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    .line 112
    :cond_1
    add-int v9, v6, v2

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, unsignedIntFrameSizeHack:Z
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 116
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v9

    if-nez v9, :cond_2

    .line 117
    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    const/4 v7, 0x1

    .line 126
    :cond_2
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v1, 0x6

    .line 127
    .local v1, frameHeaderSize:I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v1, :cond_6

    .line 128
    #getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v8, v3, v7, v1, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 130
    .local v0, frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_3

    .line 131
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0           #frame:Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v1           #frameHeaderSize:I
    :cond_4
    const-string v9, "Id3Decoder"

    const-string v10, "Failed to validate V4 ID3 tag"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_5
    const/16 v1, 0xa

    goto :goto_1

    .line 135
    .restart local v1       #frameHeaderSize:I
    :cond_6
    new-instance v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v8, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
