.class public Lcom/stripe/model/ApplicationFee;
.super Lcom/stripe/net/APIResource;
.source "ApplicationFee.java"

# interfaces
.implements Lcom/stripe/model/HasId;


# instance fields
.field account:Ljava/lang/String;

.field amount:Ljava/lang/Integer;

.field amountRefunded:Ljava/lang/Integer;

.field application:Ljava/lang/String;

.field balanceTransaction:Ljava/lang/String;

.field charge:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field id:Ljava/lang/String;

.field livemode:Ljava/lang/Boolean;

.field refunded:Ljava/lang/Boolean;

.field refunds:Lcom/stripe/model/FeeRefundCollection;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/ApplicationFeeCollection;
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
            "Lcom/stripe/model/ApplicationFeeCollection;"
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
    .line 167
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/ApplicationFee;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;
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
            "Lcom/stripe/model/ApplicationFeeCollection;"
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
    .line 181
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/ApplicationFee;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/ApplicationFeeCollection;
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
            "Lcom/stripe/model/ApplicationFeeCollection;"
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
    .line 174
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/ApplicationFee;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/ApplicationFeeCollection;
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
            "Lcom/stripe/model/ApplicationFeeCollection;"
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
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/ApplicationFee;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFeeCollection;
    .locals 2
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
            "Lcom/stripe/model/ApplicationFeeCollection;"
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
    .line 160
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/ApplicationFee;

    invoke-static {v0}, Lcom/stripe/model/ApplicationFee;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/ApplicationFeeCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/ApplicationFee;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/ApplicationFeeCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/ApplicationFee;
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
    .line 137
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/ApplicationFee;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;
    .locals 4
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
    .line 148
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/ApplicationFee;

    invoke-static {v1, p0}, Lcom/stripe/model/ApplicationFee;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/ApplicationFee;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/ApplicationFee;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/ApplicationFee;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/ApplicationFee;
    .locals 1
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
    .line 143
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/ApplicationFee;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAmountRefunded()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->amountRefunded:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->balanceTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public getCharge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->livemode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRefunded()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->refunded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRefunds()Lcom/stripe/model/FeeRefundCollection;
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->refunds:Lcom/stripe/model/FeeRefundCollection;

    invoke-virtual {v0}, Lcom/stripe/model/FeeRefundCollection;->getURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->refunds:Lcom/stripe/model/FeeRefundCollection;

    const-string v1, "/v1/application_fees/%s/refunds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/stripe/model/ApplicationFee;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/model/FeeRefundCollection;->setURL(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->refunds:Lcom/stripe/model/FeeRefundCollection;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/stripe/model/ApplicationFee;->user:Ljava/lang/String;

    return-object v0
.end method

.method public refund()Lcom/stripe/model/ApplicationFee;
    .locals 2
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
    const/4 v1, 0x0

    .line 188
    move-object v0, v1

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v1, v0}, Lcom/stripe/model/ApplicationFee;->refund(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public refund(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;
    .locals 1
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
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/stripe/model/ApplicationFee;->refund(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public refund(Ljava/lang/String;)Lcom/stripe/model/ApplicationFee;
    .locals 1
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
    .line 199
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/model/ApplicationFee;->refund(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public refund(Ljava/util/Map;)Lcom/stripe/model/ApplicationFee;
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
            "Lcom/stripe/model/ApplicationFee;"
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
    .line 193
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/ApplicationFee;->refund(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public refund(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;
    .locals 6
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
            "Lcom/stripe/model/ApplicationFee;"
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
    .line 215
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/refund"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/stripe/model/ApplicationFee;

    invoke-virtual {p0}, Lcom/stripe/model/ApplicationFee;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stripe/model/ApplicationFee;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/ApplicationFee;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/ApplicationFee;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/ApplicationFee;

    return-object v0
.end method

.method public refund(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/ApplicationFee;
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
            "Lcom/stripe/model/ApplicationFee;"
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
    .line 210
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/ApplicationFee;->refund(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ApplicationFee;

    move-result-object v0

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->account:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->amount:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public setAmountRefunded(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amountRefunded"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->amountRefunded:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->application:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBalanceTransaction(Ljava/lang/String;)V
    .locals 0
    .parameter "balanceTransaction"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->balanceTransaction:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setCharge(Ljava/lang/String;)V
    .locals 0
    .parameter "charge"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->charge:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->created:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->currency:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->livemode:Ljava/lang/Boolean;

    .line 66
    return-void
.end method

.method public setRefunded(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "refunded"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->refunded:Ljava/lang/Boolean;

    .line 74
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/stripe/model/ApplicationFee;->user:Ljava/lang/String;

    .line 98
    return-void
.end method
