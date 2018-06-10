.class Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistedEvents"
.end annotation


# static fields
.field static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private persistedEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1602
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    .line 1609
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    .line 1610
    return-void
.end method

.method public static persistEvents(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;)V
    .locals 1
    .parameter "context"
    .parameter "accessTokenAppId"
    .parameter "eventsToPersist"

    .prologue
    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1625
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 1627
    return-void
.end method

.method public static persistEvents(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1633
    .local p1, eventsToPersist:Ljava/util/Map;,"Ljava/util/Map<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;>;"
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1639
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    move-result-object v2

    .line 1642
    .local v2, persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1643
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    invoke-virtual {v3}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    .line 1644
    .local v1, events:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1648
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->addEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List;)V

    goto :goto_0

    .line 1652
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;>;"
    .end local v1           #events:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    .end local v2           #persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1651
    .restart local v2       #persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    :cond_1
    :try_start_1
    invoke-direct {v2}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->write()V

    .line 1652
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1653
    return-void
.end method

.method public static readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    .locals 3
    .parameter "context"

    .prologue
    .line 1613
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1614
    :try_start_0
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;-><init>(Landroid/content/Context;)V

    .line 1616
    .local v0, persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore()V

    .line 1618
    monitor-exit v2

    return-object v0

    .line 1619
    .end local v0           #persistedEvents:Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readAndClearStore()V
    .locals 7

    .prologue
    .line 1678
    const/4 v2, 0x0

    .line 1680
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string v6, "AppEventsLogger.persistedevents"

    .line 1681
    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1685
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1689
    .local v1, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;>;"
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1690
    iput-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1696
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 1698
    .end local v1           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;>;"
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 1691
    :catch_0
    move-exception v4

    .line 1696
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1693
    :catch_1
    move-exception v0

    .line 1694
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unexpected exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1696
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 1693
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 1691
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private write()V
    .locals 7

    .prologue
    .line 1664
    const/4 v1, 0x0

    .line 1666
    .local v1, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string v5, "AppEventsLogger.persistedevents"

    const/4 v6, 0x0

    .line 1668
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .local v2, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1673
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 1675
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1673
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 1670
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public addEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List;)V
    .locals 2
    .parameter "accessTokenAppId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1703
    .local p2, eventsToPersist:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/appevents/AppEventsLogger$AppEvent;>;"
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1707
    return-void
.end method

.method public getEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;
    .locals 1
    .parameter "accessTokenAppId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
