.class public final Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 32
    return-void
.end method


# virtual methods
.method public getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .locals 4
    .parameter "discontinuitySequence"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 43
    .local v0, adjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .end local v0           #adjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 45
    .restart local v0       #adjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 55
    return-void
.end method
