.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmbeddedTrackInfo"
.end annotation


# instance fields
.field public final adaptationSetIndex:I

.field public final trackType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "adaptationSetIndex"
    .parameter "trackType"

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->adaptationSetIndex:I

    .line 350
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->trackType:I

    .line 351
    return-void
.end method
