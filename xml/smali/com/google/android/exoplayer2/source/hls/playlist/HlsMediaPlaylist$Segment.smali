.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final durationUs:J

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final relativeDiscontinuitySequence:I

.field public final relativeStartTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "uri"
    .parameter "durationUs"
    .parameter "relativeDiscontinuitySequence"
    .parameter "relativeStartTimeUs"
    .parameter "isEncrypted"
    .parameter "encryptionKeyUri"
    .parameter "encryptionIV"
    .parameter "byterangeOffset"
    .parameter "byterangeLength"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    .line 54
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    .line 55
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 56
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    .line 57
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 59
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    .line 60
    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 14
    .parameter "uri"
    .parameter "byterangeOffset"
    .parameter "byterangeLength"

    .prologue
    .line 46
    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4
    .parameter "relativeStartTimeUs"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 66
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
