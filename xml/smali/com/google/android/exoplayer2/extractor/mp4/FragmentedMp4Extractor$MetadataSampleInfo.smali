.class final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final presentationTimeDeltaUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .parameter "presentationTimeDeltaUs"
    .parameter "size"

    .prologue
    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    .line 1272
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    .line 1273
    return-void
.end method
