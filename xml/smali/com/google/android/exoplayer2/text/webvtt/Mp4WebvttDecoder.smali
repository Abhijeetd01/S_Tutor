.class public final Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I

.field private static final TYPE_sttg:I

.field private static final TYPE_vttc:I


# instance fields
.field private final builder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "payl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_payl:I

    .line 35
    const-string v0, "sttg"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_sttg:I

    .line 36
    const-string v0, "vttc"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_vttc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Mp4WebvttDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->builder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 45
    return-void
.end method

.method private static parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;I)Lcom/google/android/exoplayer2/text/Cue;
    .locals 7
    .parameter "sampleData"
    .parameter "builder"
    .parameter "remainingCueBoxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    .line 72
    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 73
    const/16 v4, 0x8

    if-ge p2, v4, :cond_1

    .line 74
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v5, "Incomplete vtt cue box header found."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 77
    .local v1, boxSize:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 78
    .local v2, boxType:I
    add-int/lit8 p2, p2, -0x8

    .line 79
    add-int/lit8 v3, v1, -0x8

    .line 80
    .local v3, payloadLength:I
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 81
    .local v0, boxPayload:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 82
    sub-int/2addr p2, v3

    .line 83
    sget v4, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_sttg:I

    if-ne v2, v4, :cond_2

    .line 84
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 85
    :cond_2
    sget v4, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_payl:I

    if-ne v2, v4, :cond_0

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 86
    invoke-static {v4, v5, p1, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    goto :goto_0

    .line 92
    .end local v0           #boxPayload:Ljava/lang/String;
    .end local v1           #boxSize:I
    .end local v2           #boxType:I
    .end local v3           #payloadLength:I
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected bridge synthetic decode([BI)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->decode([BI)Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BI)Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;
    .locals 6
    .parameter "bytes"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, resultingCueList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 55
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v4, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 58
    .local v0, boxSize:I
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 59
    .local v1, boxType:I
    sget v3, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_vttc:I

    if-ne v1, v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->builder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    add-int/lit8 v5, v0, -0x8

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 66
    .end local v0           #boxSize:I
    .end local v1           #boxType:I
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v3
.end method
