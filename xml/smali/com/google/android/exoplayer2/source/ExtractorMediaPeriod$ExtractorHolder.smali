.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .parameter "extractors"
    .parameter "extractorOutput"

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 680
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 681
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 724
    :cond_0
    return-void
.end method

.method public selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 5
    .parameter "input"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 716
    :goto_0
    return-object v1

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 701
    .local v0, extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 711
    .end local v0           #extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_3

    .line 712
    new-instance v1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None of the available extractors ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 713
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") could read the stream."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v1

    .line 708
    .restart local v0       #extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 699
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :catch_0
    move-exception v4

    .line 708
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    .line 715
    .end local v0           #extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 716
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_0
.end method
