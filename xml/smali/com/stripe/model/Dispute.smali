.class public Lcom/stripe/model/Dispute;
.super Lcom/stripe/net/APIResource;
.source "Dispute.java"

# interfaces
.implements Lcom/stripe/model/HasId;


# instance fields
.field amount:Ljava/lang/Integer;

.field balanceTransaction:Ljava/lang/String;

.field balanceTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/BalanceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field charge:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field evidence:Ljava/lang/String;

.field evidenceDetails:Lcom/stripe/model/EvidenceDetails;

.field evidenceDueBy:Ljava/lang/Long;

.field evidenceSubObject:Lcom/stripe/model/EvidenceSubObject;

.field id:Ljava/lang/String;

.field isChargeRefundable:Ljava/lang/Boolean;

.field livemode:Ljava/lang/Boolean;

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

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/DisputeCollection;
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
            "Lcom/stripe/model/DisputeCollection;"
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
    .line 170
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Dispute;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DisputeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DisputeCollection;
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
            "Lcom/stripe/model/DisputeCollection;"
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
    .line 177
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Dispute;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DisputeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/DisputeCollection;
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
            "Lcom/stripe/model/DisputeCollection;"
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
    .line 157
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Dispute;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DisputeCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DisputeCollection;
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
            "Lcom/stripe/model/DisputeCollection;"
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
    .line 163
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/Dispute;

    invoke-static {v0}, Lcom/stripe/model/Dispute;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/DisputeCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Dispute;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DisputeCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Dispute;
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
    .line 145
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Dispute;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;
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
    .line 151
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Dispute;

    invoke-static {v1, p0}, Lcom/stripe/model/Dispute;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Dispute;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Dispute;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Dispute;

    return-object v0
.end method


# virtual methods
.method public close()Lcom/stripe/model/Dispute;
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
    .line 196
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Dispute;->close(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;

    move-result-object v0

    return-object v0
.end method

.method public close(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;
    .locals 6
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
    .line 202
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/stripe/model/Dispute;

    invoke-virtual {p0}, Lcom/stripe/model/Dispute;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stripe/model/Dispute;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Dispute;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Dispute;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Dispute;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stripe/model/Dispute;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBalanceTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/stripe/model/Dispute;->balanceTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/BalanceTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/stripe/model/Dispute;->balanceTransactions:Ljava/util/List;

    return-object v0
.end method

.method public getCharge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/stripe/model/Dispute;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/stripe/model/Dispute;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/stripe/model/Dispute;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getEvidence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/stripe/model/Dispute;->evidence:Ljava/lang/String;

    return-object v0
.end method

.method public getEvidenceDetails()Lcom/stripe/model/EvidenceDetails;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/stripe/model/Dispute;->evidenceDetails:Lcom/stripe/model/EvidenceDetails;

    return-object v0
.end method

.method public getEvidenceDueBy()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/stripe/model/Dispute;->evidenceDueBy:Ljava/lang/Long;

    return-object v0
.end method

.method public getEvidenceSubObject()Lcom/stripe/model/EvidenceSubObject;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/stripe/model/Dispute;->evidenceSubObject:Lcom/stripe/model/EvidenceSubObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/stripe/model/Dispute;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChargeRefundable()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/stripe/model/Dispute;->isChargeRefundable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/stripe/model/Dispute;->livemode:Ljava/lang/Boolean;

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
    .line 129
    iget-object v0, p0, Lcom/stripe/model/Dispute;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/stripe/model/Dispute;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/stripe/model/Dispute;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/stripe/model/Dispute;->amount:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public setBalanceTransaction(Ljava/lang/String;)V
    .locals 0
    .parameter "balanceTransaction"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/stripe/model/Dispute;->balanceTransaction:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setBalanceTransactions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/BalanceTransaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, balanceTransactions:Ljava/util/List;,"Ljava/util/List<Lcom/stripe/model/BalanceTransaction;>;"
    iput-object p1, p0, Lcom/stripe/model/Dispute;->balanceTransactions:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setCharge(Ljava/lang/String;)V
    .locals 0
    .parameter "charge"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/stripe/model/Dispute;->charge:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/stripe/model/Dispute;->created:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/stripe/model/Dispute;->currency:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setEvidence(Ljava/lang/String;)V
    .locals 0
    .parameter "evidence"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/stripe/model/Dispute;->evidence:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setEvidenceDetails(Lcom/stripe/model/EvidenceDetails;)V
    .locals 0
    .parameter "evidenceDetails"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/stripe/model/Dispute;->evidenceDetails:Lcom/stripe/model/EvidenceDetails;

    .line 140
    return-void
.end method

.method public setEvidenceDueBy(Ljava/lang/Long;)V
    .locals 0
    .parameter "evidenceDueBy"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/stripe/model/Dispute;->evidenceDueBy:Ljava/lang/Long;

    .line 103
    return-void
.end method

.method public setEvidenceSubObject(Lcom/stripe/model/EvidenceSubObject;)V
    .locals 0
    .parameter "evidence"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/stripe/model/Dispute;->evidenceSubObject:Lcom/stripe/model/EvidenceSubObject;

    .line 89
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/stripe/model/Dispute;->id:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIsChargeRefundable(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isChargeRefundable"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/stripe/model/Dispute;->isChargeRefundable:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/stripe/model/Dispute;->livemode:Ljava/lang/Boolean;

    .line 77
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
    .line 132
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Dispute;->metadata:Ljava/util/Map;

    .line 133
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/stripe/model/Dispute;->reason:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/stripe/model/Dispute;->status:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Dispute;
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
            "Lcom/stripe/model/Dispute;"
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
    .line 183
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Dispute;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Dispute;
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
            "Lcom/stripe/model/Dispute;"
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
    .line 189
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Dispute;

    invoke-virtual {p0}, Lcom/stripe/model/Dispute;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/model/Dispute;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Dispute;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Dispute;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Dispute;

    return-object v0
.end method
