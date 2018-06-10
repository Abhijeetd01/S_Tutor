.class public final Lcom/google/android/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .locals 2
    .parameter "dataSource"
    .parameter "representation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 96
    .local v0, extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    goto :goto_0
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 6
    .parameter "dataSource"
    .parameter "representation"
    .parameter "loadIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 115
    .local v2, initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v2, :cond_0

    move-object v0, v4

    .line 136
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v5, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->newWrappedExtractor(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 120
    .local v0, extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    .line 122
    .local v1, indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v1, :cond_1

    move-object v0, v4

    .line 123
    goto :goto_0

    .line 127
    :cond_1
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 128
    .local v3, requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v3, :cond_2

    .line 129
    invoke-static {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 130
    move-object v3, v1

    .line 135
    .end local v1           #indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    :goto_1
    invoke-static {p0, p1, v0, v3}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    goto :goto_0

    .line 133
    .end local v3           #requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_3
    move-object v3, v2

    .restart local v3       #requestUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_1
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 8
    .parameter "dataSource"
    .parameter "representation"
    .parameter "extractorWrapper"
    .parameter "requestUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 143
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 144
    .local v0, dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    .line 147
    .local v1, initializationChunk:Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->load()V

    .line 148
    return-void
.end method

.method public static loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 5
    .parameter "dataSource"
    .parameter "manifestUriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 55
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 57
    .local v0, inputStream:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    .line 59
    .local v1, parser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->close()V

    .line 59
    return-object v2

    .line 61
    .end local v1           #parser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v2
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;
    .locals 3
    .parameter "dataSource"
    .parameter "representation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {p0, p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 79
    .local v0, extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private static newWrappedExtractor(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 4
    .parameter "format"

    .prologue
    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 152
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "video/webm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio/webm"

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 154
    .local v1, isWebm:Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    .line 155
    .local v0, extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v3, v0, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)V

    return-object v3

    .line 153
    .end local v0           #extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v1           #isWebm:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    .restart local v1       #isWebm:Z
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method
