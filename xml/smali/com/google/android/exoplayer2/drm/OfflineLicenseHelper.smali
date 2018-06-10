.class public final Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    .local p1, mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;,"Lcom/google/android/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p3, optionalKeyRequestParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    .line 102
    new-instance v6, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V

    .line 123
    .local v6, eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    new-instance v5, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 124
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3
    .parameter "licenseMode"
    .parameter "offlineLicenseKeySetId"
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v1

    .line 236
    .local v1, session:Lcom/google/android/exoplayer2/drm/DrmSession;,"Lcom/google/android/exoplayer2/drm/DrmSession<TT;>;"
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 237
    .local v0, error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    if-eqz v0, :cond_0

    .line 238
    throw v0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 241
    return-void
.end method

.method public static newWidevineInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .locals 2
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 82
    .local p1, optionalKeyRequestParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static newWidevineInstance(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .locals 2
    .parameter "licenseUrl"
    .parameter "httpDataSourceFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method private openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 3
    .parameter "licenseMode"
    .parameter "offlineLicenseKeySetId"
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 247
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 250
    .local v0, session:Lcom/google/android/exoplayer2/drm/DrmSession;,"Lcom/google/android/exoplayer2/drm/DrmSession<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 251
    return-object v0
.end method


# virtual methods
.method public download(Lcom/google/android/exoplayer2/upstream/HttpDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)[B
    .locals 12
    .parameter "dataSource"
    .parameter "dashManifest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 162
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    if-ge v7, v10, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v6

    .line 165
    :cond_1
    invoke-virtual {p2, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    .line 166
    .local v3, period:Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v1

    .line 167
    .local v1, adaptationSetIndex:I
    if-ne v1, v8, :cond_2

    .line 168
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v1

    .line 169
    if-eq v1, v8, :cond_0

    .line 173
    :cond_2
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 174
    .local v0, adaptationSet:Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 177
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 178
    .local v4, representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v7, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 179
    .local v2, drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-nez v2, :cond_4

    .line 180
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 181
    .local v5, sampleFormat:Lcom/google/android/exoplayer2/Format;
    if-eqz v5, :cond_3

    .line 182
    iget-object v2, v5, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 184
    :cond_3
    if-eqz v2, :cond_0

    .line 188
    .end local v5           #sampleFormat:Lcom/google/android/exoplayer2/Format;
    :cond_4
    invoke-direct {p0, v11, v6, v2}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 189
    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getOfflineLicenseKeySetId()[B

    move-result-object v6

    goto :goto_0
.end method

.method public download(Lcom/google/android/exoplayer2/upstream/HttpDataSource;Ljava/lang/String;)[B
    .locals 1
    .parameter "dataSource"
    .parameter "manifestUriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->download(Lcom/google/android/exoplayer2/upstream/HttpDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .locals 4
    .parameter "offlineLicenseKeySetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v1

    .line 226
    .local v1, session:Lcom/google/android/exoplayer2/drm/DrmSession;,"Lcom/google/android/exoplayer2/drm/DrmSession<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 227
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    .line 228
    .local v0, licenseDurationRemainingSec:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 229
    return-object v0
.end method

.method public release([B)V
    .locals 2
    .parameter "offlineLicenseKeySetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 214
    return-void
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 130
    return-void
.end method

.method public renew([B)[B
    .locals 2
    .parameter "offlineLicenseKeySetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;,"Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getOfflineLicenseKeySetId()[B

    move-result-object v0

    return-object v0
.end method
