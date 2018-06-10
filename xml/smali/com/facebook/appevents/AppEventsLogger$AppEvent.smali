.class Lcom/facebook/appevents/AppEventsLogger$AppEvent;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "contextName"
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"
    .parameter "isImplicitlyLogged"

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1316
    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    .line 1317
    iput-boolean p5, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1318
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1320
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "_eventName"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1322
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "_ui"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1324
    if-eqz p3, :cond_0

    .line 1325
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "_valueToSum"

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1328
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    if-eqz v4, :cond_1

    .line 1329
    iget-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "_implicitlyLogged"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1332
    :cond_1
    if-eqz p4, :cond_4

    .line 1333
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1335
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1338
    .local v3, value:Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_3

    instance-of v5, v3, Ljava/lang/Number;

    if-nez v5, :cond_3

    .line 1339
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 1340
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1356
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1359
    .local v1, jsonException:Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "JSON encoding for app event failed: \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1360
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1359
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1361
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1369
    .end local v1           #jsonException:Lorg/json/JSONException;
    :cond_2
    :goto_1
    return-void

    .line 1348
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1363
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 1365
    .local v0, e:Lcom/facebook/FacebookException;
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "Invalid app event name or parameter:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1366
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1365
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    goto :goto_1

    .line 1352
    .end local v0           #e:Lcom/facebook/FacebookException;
    :cond_4
    :try_start_2
    iget-boolean v4, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    if-nez v4, :cond_2

    .line 1353
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "Created app event \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1354
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1353
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "jsonString"
    .parameter "isImplicit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1377
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1378
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/appevents/AppEventsLogger$AppEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    return v0
.end method

.method private validateIdentifier(Ljava/lang/String;)V
    .locals 10
    .parameter "identifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1393
    const-string v2, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 1395
    .local v2, regex:Ljava/lang/String;
    const/16 v0, 0x28

    .line 1396
    .local v0, MAX_IDENTIFIER_LENGTH:I
    if-eqz p1, :cond_0

    .line 1397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    .line 1399
    :cond_0
    if-nez p1, :cond_1

    .line 1400
    const-string p1, "<None Provided>"

    .line 1402
    :cond_1
    new-instance v3, Lcom/facebook/FacebookException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Identifier \'%s\' must be less than %d characters"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 1407
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1403
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1411
    :cond_2
    const/4 v1, 0x0

    .line 1412
    .local v1, alreadyValidated:Z
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 1413
    :try_start_0
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1414
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    if-nez v1, :cond_3

    .line 1417
    const-string v3, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1418
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 1419
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1420
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1432
    :cond_3
    return-void

    .line 1414
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1420
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1422
    :cond_4
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    .line 1423
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1450
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V

    return-object v0
.end method


# virtual methods
.method public getIsImplicit()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1455
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    .line 1457
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1458
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1459
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1455
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
