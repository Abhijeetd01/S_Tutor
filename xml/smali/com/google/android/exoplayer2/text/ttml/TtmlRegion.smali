.class final Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final line:F

.field public final lineType:I

.field public final position:F

.field public final width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/high16 v0, -0x8000

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(FFIF)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFIF)V
    .locals 0
    .parameter "position"
    .parameter "line"
    .parameter "lineType"
    .parameter "width"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 37
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    .line 38
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    .line 39
    iput p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 40
    return-void
.end method
