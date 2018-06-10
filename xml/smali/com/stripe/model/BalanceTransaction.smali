.class public Lcom/stripe/model/BalanceTransaction;
.super Lcom/stripe/net/APIResource;
.source "BalanceTransaction.java"

# interfaces
.implements Lcom/stripe/model/HasId;


# instance fields
.field amount:Ljava/lang/Integer;

.field availableOn:Ljava/lang/Long;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field description:Ljava/lang/String;

.field fee:Ljava/lang/Integer;

.field feeDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/Fee;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field net:Ljava/lang/Integer;

.field source:Ljava/lang/String;

.field status:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/BalanceTransactionCollection;
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
            "Lcom/stripe/model/BalanceTransactionCollection;"
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
    .line 162
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BalanceTransaction;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;
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
            "Lcom/stripe/model/BalanceTransactionCollection;"
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
    .line 176
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/BalanceTransaction;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/BalanceTransactionCollection;
    .locals 1
    .parameter
    .parameter "apiKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/model/BalanceTransactionCollection;"
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
    .line 169
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/BalanceTransaction;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/BalanceTransactionCollection;
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
            "Lcom/stripe/model/BalanceTransactionCollection;"
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
    .line 148
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BalanceTransaction;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransactionCollection;
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
            "Lcom/stripe/model/BalanceTransactionCollection;"
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
    .line 154
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/balance/history"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, url:Ljava/lang/String;
    const-class v1, Lcom/stripe/model/BalanceTransactionCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/BalanceTransaction;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v1

    check-cast v1, Lcom/stripe/model/BalanceTransactionCollection;

    return-object v1
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/BalanceTransaction;
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
    .line 128
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/BalanceTransaction;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransaction;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransaction;
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
    .line 141
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/balance/history"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/BalanceTransaction;

    invoke-static {v1, v0, v2, v3, p1}, Lcom/stripe/model/BalanceTransaction;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/model/BalanceTransaction;

    return-object v1
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/BalanceTransaction;
    .locals 5
    .parameter "id"
    .parameter "apiKey"
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
    .line 135
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/stripe/Stripe;->getApiBase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1/balance/history"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, url:Ljava/lang/String;
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/stripe/model/BalanceTransaction;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/BalanceTransaction;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAvailableOn()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->availableOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->fee:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFeeDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/Fee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->feeDetails:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNet()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->net:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stripe/model/BalanceTransaction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->amount:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setAvailableOn(Ljava/lang/Long;)V
    .locals 0
    .parameter "availableOn"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->availableOn:Ljava/lang/Long;

    .line 91
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->created:Ljava/lang/Long;

    .line 83
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->currency:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->description:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setFee(Ljava/lang/Integer;)V
    .locals 0
    .parameter "fee"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->fee:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setFeeDetails(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/Fee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, feeDetails:Ljava/util/List;,"Ljava/util/List<Lcom/stripe/model/Fee;>;"
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->feeDetails:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNet(Ljava/lang/Integer;)V
    .locals 0
    .parameter "net"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->net:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->source:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->status:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/stripe/model/BalanceTransaction;->type:Ljava/lang/String;

    .line 75
    return-void
.end method
