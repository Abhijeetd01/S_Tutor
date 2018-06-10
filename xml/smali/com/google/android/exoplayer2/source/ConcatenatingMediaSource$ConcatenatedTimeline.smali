.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Timeline;)V
    .locals 7
    .parameter "timelines"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 153
    array-length v6, p1

    new-array v2, v6, [I

    .line 154
    .local v2, sourcePeriodOffsets:[I
    array-length v6, p1

    new-array v3, v6, [I

    .line 155
    .local v3, sourceWindowOffsets:[I
    const/4 v1, 0x0

    .line 156
    .local v1, periodCount:I
    const/4 v5, 0x0

    .line 157
    .local v5, windowCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 158
    aget-object v4, p1, v0

    .line 159
    .local v4, timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 160
    aput v1, v2, v0

    .line 161
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 162
    aput v5, v3, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v4           #timeline:Lcom/google/android/exoplayer2/Timeline;
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 165
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 166
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    return v0
.end method

.method private getFirstPeriodIndexInSource(I)I
    .locals 2
    .parameter "sourceIndex"

    .prologue
    .line 229
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getFirstWindowIndexInSource(I)I
    .locals 2
    .parameter "sourceIndex"

    .prologue
    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getSourceIndexForPeriod(I)I
    .locals 3
    .parameter "periodIndex"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSourceIndexForWindow(I)I
    .locals 3
    .parameter "windowIndex"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v5, -0x1

    .line 207
    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    .line 210
    check-cast v3, Landroid/util/Pair;

    .line 211
    .local v3, sourceIndexAndPeriodId:Landroid/util/Pair;,"Landroid/util/Pair<**>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 215
    .local v2, sourceIndex:I
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 216
    .local v0, periodId:Ljava/lang/Object;
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 220
    .local v1, periodIndexInSource:I
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_1
    move v5, v4

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 5
    .parameter "periodIndex"
    .parameter "period"
    .parameter "setIds"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v2

    .line 195
    .local v2, sourceIndex:I
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v1

    .line 196
    .local v1, firstWindowIndexInSource:I
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    .line 197
    .local v0, firstPeriodIndexInSource:I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v2

    sub-int v4, p1, v0

    invoke-virtual {v3, v4, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 198
    iget v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 199
    if-eqz p3, :cond_0

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 202
    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 10
    .parameter "windowIndex"
    .parameter "window"
    .parameter "setIds"
    .parameter "defaultPositionProjectionUs"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForWindow(I)I

    move-result v8

    .line 178
    .local v8, sourceIndex:I
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v7

    .line 179
    .local v7, firstWindowIndexInSource:I
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v6

    .line 180
    .local v6, firstPeriodIndexInSource:I
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, v8

    sub-int v1, p1, v7

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 182
    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 183
    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 184
    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
