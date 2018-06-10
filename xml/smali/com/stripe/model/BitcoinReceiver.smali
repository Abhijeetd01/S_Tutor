.class public Lcom/stripe/model/BitcoinReceiver;
.super Lcom/stripe/model/ExternalAccount;
.source "BitcoinReceiver.java"

# interfaces
.implements Lcom/stripe/model/HasId;


# instance fields
.field active:Ljava/lang/Boolean;

.field amount:Ljava/lang/Integer;

.field amountReceived:Ljava/lang/Integer;

.field bitcoinAmount:Ljava/lang/Integer;

.field bitcoinAmountReceived:Ljava/lang/Integer;

.field bitcoinUri:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field description:Ljava/lang/String;

.field email:Ljava/lang/String;

.field filled:Ljava/lang/Boolean;

.field inboundAddress:Ljava/lang/String;

.field metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field payment:Ljava/lang/String;

.field refundAddress:Ljava/lang/String;

.field rejectTransactions:Ljava/lang/Boolean;

.field status:Ljava/lang/String;

.field transactions:Lcom/stripe/model/BitcoinTransactionCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/stripe/model/ExternalAccount;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/BitcoinReceiverCollection;
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
            "Lcom/stripe/model/BitcoinReceiverCollection;"
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
    .line 220
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BitcoinReceiver;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiverCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiverCollection;
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
            "Lcom/stripe/model/BitcoinReceiverCollection;"
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
    .line 227
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/BitcoinReceiver;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiverCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/BitcoinReceiver;
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
            "Lcom/stripe/model/BitcoinReceiver;"
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
    .line 182
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BitcoinReceiver;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;
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
            "Lcom/stripe/model/BitcoinReceiver;"
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
    .line 194
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/bitcoin/receivers"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/BitcoinReceiver;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/BitcoinReceiver;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/BitcoinReceiver;

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/BitcoinReceiverCollection;
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
            "Lcom/stripe/model/BitcoinReceiverCollection;"
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
    .line 206
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BitcoinReceiver;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiverCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiverCollection;
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
            "Lcom/stripe/model/BitcoinReceiverCollection;"
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
    .line 212
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/bitcoin/receivers"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, url:Ljava/lang/String;
    const-class v1, Lcom/stripe/model/BitcoinReceiverCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/BitcoinReceiver;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v1

    check-cast v1, Lcom/stripe/model/BitcoinReceiverCollection;

    return-object v1
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/BitcoinReceiver;
    .locals 1
    .parameter "id"
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
    .line 188
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BitcoinReceiver;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;
    .locals 5
    .parameter "id"
    .parameter "options"
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
    .line 200
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/bitcoin/receivers"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/BitcoinReceiver;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/BitcoinReceiver;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/BitcoinReceiver;

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/stripe/model/DeletedBitcoinReceiver;
    .locals 1
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
    .line 258
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/BitcoinReceiver;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedBitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedBitcoinReceiver;
    .locals 4
    .parameter "options"
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
    .line 265
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/BitcoinReceiver;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/DeletedBitcoinReceiver;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/BitcoinReceiver;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedBitcoinReceiver;

    return-object v0
.end method

.method public bridge synthetic delete()Lcom/stripe/model/DeletedExternalAccount;
    .locals 1
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
    .line 15
    invoke-virtual {p0}, Lcom/stripe/model/BitcoinReceiver;->delete()Lcom/stripe/model/DeletedBitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedExternalAccount;
    .locals 1
    .parameter "x0"
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/stripe/model/BitcoinReceiver;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedBitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAmountReceived()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->amountReceived:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBitcoinAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBitcoinAmountReceived()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinAmountReceived:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBitcoinUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFilled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->filled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInboundAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->inboundAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 232
    invoke-super {p0}, Lcom/stripe/model/ExternalAccount;->getInstanceURL()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 234
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/bitcoin/receivers"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/stripe/model/BitcoinReceiver;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->refundAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectTransactions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->rejectTransactions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactions()Lcom/stripe/model/BitcoinTransactionCollection;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/stripe/model/BitcoinReceiver;->transactions:Lcom/stripe/model/BitcoinTransactionCollection;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "active"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->active:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->amount:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method public setAmountReceived(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amountReceived"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->amountReceived:Ljava/lang/Integer;

    .line 73
    return-void
.end method

.method public setBitcoinAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "bitcoinAmount"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinAmount:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public setBitcoinAmountReceived(Ljava/lang/Integer;)V
    .locals 0
    .parameter "bitcoinAmountReceived"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinAmountReceived:Ljava/lang/Integer;

    .line 89
    return-void
.end method

.method public setBitcoinUri(Ljava/lang/String;)V
    .locals 0
    .parameter "bitcoinUri"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->bitcoinUri:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->created:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->currency:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->description:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->email:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setFilled(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "filled"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->filled:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public setInboundAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "inboundAddress"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->inboundAddress:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->metadata:Ljava/util/Map;

    .line 177
    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0
    .parameter "payment"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->payment:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setRefundAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "refundAddress"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->refundAddress:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRejectTransactions(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "rejectTransactions"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->rejectTransactions:Ljava/lang/Boolean;

    .line 113
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->status:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTransactions(Lcom/stripe/model/BitcoinTransactionCollection;)V
    .locals 0
    .parameter "transactions"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/stripe/model/BitcoinReceiver;->transactions:Lcom/stripe/model/BitcoinTransactionCollection;

    .line 169
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/BitcoinReceiver;
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
            "Lcom/stripe/model/BitcoinReceiver;"
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
    .line 244
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/BitcoinReceiver;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;
    .locals 3
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
            "Lcom/stripe/model/BitcoinReceiver;"
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
    .line 251
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/BitcoinReceiver;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/BitcoinReceiver;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/BitcoinReceiver;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/BitcoinReceiver;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/util/Map;)Lcom/stripe/model/ExternalAccount;
    .locals 1
    .parameter "x0"
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/stripe/model/BitcoinReceiver;->update(Ljava/util/Map;)Lcom/stripe/model/BitcoinReceiver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ExternalAccount;
    .locals 1
    .parameter "x0"
    .parameter "x1"
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/BitcoinReceiver;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BitcoinReceiver;

    move-result-object v0

    return-object v0
.end method
