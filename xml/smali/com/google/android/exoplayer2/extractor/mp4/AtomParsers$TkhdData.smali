.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final duration:J

.field private final id:I

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0
    .parameter "id"
    .parameter "duration"
    .parameter "rotationDegrees"

    .prologue
    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I

    .line 1169
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J

    .line 1170
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    .line 1171
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1161
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return v0
.end method
