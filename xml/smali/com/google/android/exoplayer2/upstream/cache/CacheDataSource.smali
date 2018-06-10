.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentRequestIgnoresCache:Z

.field private currentRequestUnbounded:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .locals 6
    .parameter "cache"
    .parameter "upstream"
    .parameter "flags"

    .prologue
    .line 116
    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V
    .locals 8
    .parameter "cache"
    .parameter "upstream"
    .parameter "flags"
    .parameter "maxCacheFileSize"

    .prologue
    .line 134
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 3
    .parameter "cache"
    .parameter "upstream"
    .parameter "cacheReadDataSource"
    .parameter "cacheWriteDataSink"
    .parameter "flags"
    .parameter "eventListener"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 155
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 156
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    .line 157
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    .line 158
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 160
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 161
    if-eqz p4, :cond_3

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 166
    :goto_3
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    :cond_2
    move v1, v2

    .line 158
    goto :goto_2

    .line 164
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_3
.end method

.method private closeCurrentSource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 362
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 362
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    .line 371
    :cond_1
    return-void
.end method

.method private notifyBytesRead()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 376
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 378
    :cond_0
    return-void
.end method

.method private openNextSource(Z)Z
    .locals 27
    .parameter "initial"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v6, :cond_2

    .line 260
    const/16 v25, 0x0

    .line 271
    .local v25, span:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_0
    if-nez v25, :cond_4

    .line 274
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 275
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 307
    .local v4, dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_1
    iget-wide v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_a

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    .line 308
    const/16 v26, 0x0

    .line 309
    .local v26, successful:Z
    const-wide/16 v22, 0x0

    .line 311
    .local v22, currentBytesRemaining:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v6, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v22

    .line 312
    const/16 v26, 0x1

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, v22, v6

    if-eqz v6, :cond_1

    .line 338
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 339
    iget-wide v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    .line 341
    :cond_1
    return v26

    .line 261
    .end local v4           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v22           #currentBytesRemaining:J
    .end local v25           #span:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .end local v26           #successful:Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v6, :cond_3

    .line 263
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    .restart local v25       #span:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_0

    .line 264
    .end local v25           #span:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catch_0
    move-exception v21

    .line 265
    .local v21, e:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/InterruptedIOException;

    invoke-direct {v6}, Ljava/io/InterruptedIOException;-><init>()V

    throw v6

    .line 268
    .end local v21           #e:Ljava/lang/InterruptedException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v25

    .restart local v25       #span:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto/16 :goto_0

    .line 276
    :cond_4
    move-object/from16 v0, v25

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v6, :cond_6

    .line 278
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 279
    .local v5, fileUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, v25

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v8, v6, v12

    .line 280
    .local v8, filePosition:J
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long v10, v6, v8

    .line 281
    .local v10, length:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-eqz v6, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 284
    :cond_5
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 285
    .restart local v4       #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto/16 :goto_1

    .line 289
    .end local v4           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v5           #fileUri:Landroid/net/Uri;
    .end local v8           #filePosition:J
    .end local v10           #length:J
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 297
    .restart local v10       #length:J
    :cond_7
    :goto_3
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    move/from16 v19, v0

    move-object v12, v4

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v19}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 298
    .restart local v4       #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v6, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 300
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto/16 :goto_1

    .line 292
    .end local v4           #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v10           #length:J
    :cond_8
    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 293
    .restart local v10       #length:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-eqz v6, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_3

    .line 302
    .restart local v4       #dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 303
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto/16 :goto_1

    .line 307
    .end local v10           #length:J
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 313
    .restart local v22       #currentBytesRemaining:J
    .restart local v26       #successful:Z
    :catch_1
    move-exception v21

    .line 317
    .local v21, e:Ljava/io/IOException;
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v6, :cond_b

    .line 318
    move-object/from16 v20, v21

    .line 319
    .local v20, cause:Ljava/lang/Throwable;
    :goto_4
    if-eqz v20, :cond_b

    .line 320
    move-object/from16 v0, v20

    instance-of v6, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v6, :cond_c

    move-object/from16 v6, v20

    .line 321
    check-cast v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    move/from16 v24, v0

    .line 322
    .local v24, reason:I
    if-nez v24, :cond_c

    .line 323
    const/16 v21, 0x0

    .line 330
    .end local v20           #cause:Ljava/lang/Throwable;
    .end local v24           #reason:I
    :cond_b
    if-eqz v21, :cond_0

    .line 331
    throw v21

    .line 327
    .restart local v20       #cause:Ljava/lang/Throwable;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    goto :goto_4
.end method

.method private setContentLength(J)V
    .locals 3
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 246
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 6
    .parameter "dataSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    .line 172
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 173
    iget v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    .line 174
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    .line 175
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 176
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v2, :cond_5

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    .line 178
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v1, :cond_6

    .line 179
    :cond_2
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 186
    :cond_3
    :goto_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    .line 187
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    return-wide v2

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 182
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 183
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 190
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "readLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 196
    if-nez p3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 200
    const/4 v0, -0x1

    goto :goto_0

    .line 203
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 204
    .local v0, bytesRead:I
    if-ltz v0, :cond_4

    .line 205
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v2, v3, :cond_3

    .line 206
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 208
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 209
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 210
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0           #bytesRead:I
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 229
    throw v1

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytesRead:I
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v2, :cond_5

    .line 216
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    .line 217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 219
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 220
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 221
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method
