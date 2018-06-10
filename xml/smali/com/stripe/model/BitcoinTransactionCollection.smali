.class public Lcom/stripe/model/BitcoinTransactionCollection;
.super Lcom/stripe/model/StripeCollectionAPIResource;
.source "BitcoinTransactionCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/model/StripeCollectionAPIResource",
        "<",
        "Lcom/stripe/model/BitcoinTransaction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/stripe/model/StripeCollectionAPIResource;-><init>()V

    return-void
.end method


# virtual methods
.method public all(Ljava/util/Map;)Lcom/stripe/model/BitcoinTransactionCollection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/stripe/model/BitcoinTransactionCollection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/exception/AuthenticationException;,
            Lcom/stripe/exception/InvalidRequestException;,
            Lcom/stripe/exception/APIConnectionException;,
            Lcom/stripe/exception/CardException;,
            Lcom/stripe/exception/APIException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/BitcoinTransactionCollection;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinTransactionCollection;
    .locals 1
    .parameter
    .parameter "options"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/net/RequestOptions;",
            ")",
            "Lcom/stripe/model/BitcoinTransactionCollection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/exception/AuthenticationException;,
            Lcom/stripe/exception/InvalidRequestException;,
            Lcom/stripe/exception/APIConnectionException;,
            Lcom/stripe/exception/CardException;,
            Lcom/stripe/exception/APIException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/BitcoinTransactionCollection;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/util/Map;)Lcom/stripe/model/BitcoinTransactionCollection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/stripe/model/BitcoinTransactionCollection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/exception/AuthenticationException;,
            Lcom/stripe/exception/InvalidRequestException;,
            Lcom/stripe/exception/APIConnectionException;,
            Lcom/stripe/exception/CardException;,
            Lcom/stripe/exception/APIException;
        }
    .end annotation

    .prologue
    .line 18
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/BitcoinTransactionCollection;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinTransactionCollection;
    .locals 5
    .parameter
    .parameter "options"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/net/RequestOptions;",
            ")",
            "Lcom/stripe/model/BitcoinTransactionCollection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/exception/AuthenticationException;,
            Lcom/stripe/exception/InvalidRequestException;,
            Lcom/stripe/exception/APIConnectionException;,
            Lcom/stripe/exception/CardException;,
            Lcom/stripe/exception/APIException;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/stripe/model/BitcoinTransactionCollection;->getURL()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, url:Ljava/lang/String;
    const-class v1, Lcom/stripe/model/BitcoinTransactionCollection;

    invoke-static {v0, p1, v1, p2}, Lcom/stripe/model/BitcoinTransactionCollection;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v1

    check-cast v1, Lcom/stripe/model/BitcoinTransactionCollection;

    return-object v1
.end method
