.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private final flags:I

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V
    .locals 6
    .parameter "cache"
    .parameter "upstreamFactory"
    .parameter "flags"

    .prologue
    .line 40
    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;IJ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;IJ)V
    .locals 8
    .parameter "cache"
    .parameter "upstreamFactory"
    .parameter "flags"
    .parameter "maxCacheFileSize"

    .prologue
    .line 48
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 0
    .parameter "cache"
    .parameter "upstreamFactory"
    .parameter "cacheReadDataSourceFactory"
    .parameter "cacheWriteDataSinkFactory"
    .parameter "flags"
    .parameter "eventListener"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 62
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 63
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    .line 64
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 7

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 70
    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 71
    invoke-interface {v4}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v4

    :goto_0
    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 69
    return-object v0

    .line 71
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
