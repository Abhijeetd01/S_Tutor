.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public format:Lcom/google/android/exoplayer2/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "numberOfEntries"

    .prologue
    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    new-array v0, p1, [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 1190
    return-void
.end method
