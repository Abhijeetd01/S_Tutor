.class public Lcom/stripe/model/Refund;
.super Lcom/stripe/net/APIResource;
.source "Refund.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Charge;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field amount:Ljava/lang/Integer;

.field balanceTransaction:Ljava/lang/String;

.field charge:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field id:Ljava/lang/String;

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

.field reason:Ljava/lang/String;

.field receiptNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/RefundCollection;
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
            "Lcom/stripe/model/RefundCollection;"
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
    .line 76
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Refund;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/RefundCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/RefundCollection;
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
            "Lcom/stripe/model/RefundCollection;"
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
    .line 83
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Refund;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/RefundCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Refund;
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
            "Lcom/stripe/model/Refund;"
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
    .line 39
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Refund;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;
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
            "Lcom/stripe/model/Refund;"
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
    .line 89
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Refund;

    invoke-static {v1}, Lcom/stripe/model/Refund;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Refund;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Refund;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Refund;

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/RefundCollection;
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
            "Lcom/stripe/model/RefundCollection;"
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
    .line 63
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Refund;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/RefundCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/RefundCollection;
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
            "Lcom/stripe/model/RefundCollection;"
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
    .line 69
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/Refund;

    invoke-static {v0}, Lcom/stripe/model/Refund;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/RefundCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Refund;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/RefundCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Refund;
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
    .line 33
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Refund;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;
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
    .line 57
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Refund;

    invoke-static {v1, p0}, Lcom/stripe/model/Refund;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Refund;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Refund;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Refund;

    return-object v0
.end method


# virtual methods
.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/stripe/model/Refund;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBalanceTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/stripe/model/Refund;->balanceTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public getCharge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/stripe/model/Refund;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/stripe/model/Refund;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stripe/model/Refund;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/stripe/model/Refund;->id:Ljava/lang/String;

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
    .line 131
    iget-object v0, p0, Lcom/stripe/model/Refund;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/stripe/model/Refund;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/stripe/model/Refund;->receiptNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/stripe/model/Refund;->amount:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public setBalanceTransaction(Ljava/lang/String;)V
    .locals 0
    .parameter "balanceTransaction"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/stripe/model/Refund;->balanceTransaction:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCharge(Ljava/lang/String;)V
    .locals 0
    .parameter "charge"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/stripe/model/Refund;->charge:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/stripe/model/Refund;->created:Ljava/lang/Long;

    .line 117
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/stripe/model/Refund;->currency:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/stripe/model/Refund;->id:Ljava/lang/String;

    .line 98
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
    .line 134
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Refund;->metadata:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/stripe/model/Refund;->reason:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setReceiptNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "receiptNumber"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/stripe/model/Refund;->receiptNumber:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public bridge synthetic update(Ljava/util/Map;)Lcom/stripe/model/MetadataStore;
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/stripe/model/Refund;->update(Ljava/util/Map;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/MetadataStore;
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
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Refund;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Refund;
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
            "Lcom/stripe/model/Refund;"
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
    .line 27
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Refund;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;
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
            "Lcom/stripe/model/Refund;"
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
    .line 51
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Refund;

    iget-object v2, p0, Lcom/stripe/model/Refund;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Refund;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Refund;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Refund;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Refund;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Refund;
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
            "Lcom/stripe/model/Refund;"
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
    .line 46
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Refund;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Refund;

    move-result-object v0

    return-object v0
.end method
