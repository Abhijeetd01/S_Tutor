.class Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;
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
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 309
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 10
    .parameter "sectionData"

    .prologue
    const/16 v9, 0xd

    .line 319
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 320
    .local v4, tableId:I
    if-eqz v4, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    div-int/lit8 v2, v5, 0x4

    .line 330
    .local v2, programCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 331
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 332
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 333
    .local v3, programNumber:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 334
    if-nez v3, :cond_2

    .line 335
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 330
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 338
    .local v1, pid:I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$108(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    goto :goto_2

    .line 342
    .end local v1           #pid:I
    .end local v3           #programNumber:I
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 343
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    #getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .parameter "timestampAdjuster"
    .parameter "extractorOutput"
    .parameter "idGenerator"

    .prologue
    .line 315
    return-void
.end method
