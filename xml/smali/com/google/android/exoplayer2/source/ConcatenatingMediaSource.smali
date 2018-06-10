.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation


# instance fields
.field private final duplicateFlags:[Z

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .parameter "mediaSources"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 50
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 51
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z
    .locals 5
    .parameter "mediaSources"

    .prologue
    .line 130
    array-length v4, p0

    new-array v0, v4, [Z

    .line 131
    .local v0, duplicateFlags:[Z
    new-instance v3, Ljava/util/IdentityHashMap;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 132
    .local v3, sources:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 133
    aget-object v2, p0, v1

    .line 134
    .local v2, source:Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 140
    .end local v2           #source:Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    return-object v0
.end method

.method private handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 5
    .parameter "sourceFirstIndex"
    .parameter "sourceTimeline"
    .parameter "sourceManifest"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v2, p1

    .line 111
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 113
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v3, v3, p1

    if-ne v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v2, v0

    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 120
    .local v1, timeline:Lcom/google/android/exoplayer2/Timeline;
    if-nez v1, :cond_2

    .line 127
    .end local v1           #timeline:Lcom/google/android/exoplayer2/Timeline;
    :goto_2
    return-void

    .line 119
    .restart local v1       #timeline:Lcom/google/android/exoplayer2/Timeline;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v1           #timeline:Lcom/google/android/exoplayer2/Timeline;
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, [Lcom/google/android/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5
    .parameter "index"
    .parameter "allocator"
    .parameter "positionUs"

    .prologue
    .line 83
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    #calls: Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$100(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v2

    .line 84
    .local v2, sourceIndex:I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    #calls: Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$200(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v3

    sub-int v1, p1, v3

    .line 85
    .local v1, periodIndexInSource:I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v3, v3, v2

    invoke-interface {v3, v1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    .line 87
    .local v0, mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 5
    .parameter "player"
    .parameter "isTopLevelSource"
    .parameter "listener"

    .prologue
    .line 58
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 61
    move v1, v0

    .line 62
    .local v1, index:I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;I)V

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 59
    .end local v1           #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .parameter "mediaPeriod"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, sourceIndex:I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 96
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method
