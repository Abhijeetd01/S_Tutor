.class public final Lcom/google/android/exoplayer2/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 1
    .parameter "formatHolder"
    .parameter "buffer"
    .parameter "formatRequired"

    .prologue
    .line 41
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 42
    const/4 v0, -0x4

    return v0
.end method

.method public skipToKeyframeBefore(J)V
    .locals 0
    .parameter "timeUs"

    .prologue
    .line 48
    return-void
.end method
