.class final Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)J
    .locals 2
    .parameter "timeUs"

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method
