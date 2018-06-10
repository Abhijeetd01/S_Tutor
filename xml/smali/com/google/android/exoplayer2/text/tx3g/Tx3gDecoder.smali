.class public final Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# instance fields
.field private final parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 35
    return-void
.end method


# virtual methods
.method protected decode([BI)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 4
    .parameter "bytes"
    .parameter "length"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 41
    .local v1, textLength:I
    if-nez v1, :cond_0

    .line 42
    sget-object v2, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    .line 45
    :goto_0
    return-object v2

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, cueText:Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v3, Lcom/google/android/exoplayer2/text/Cue;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    goto :goto_0
.end method
