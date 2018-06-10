.class public Lcom/stripe/model/Subscription;
.super Lcom/stripe/net/APIResource;
.source "Subscription.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Subscription;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field applicationFeePercent:Ljava/lang/Double;

.field cancelAtPeriodEnd:Ljava/lang/Boolean;

.field canceledAt:Ljava/lang/Long;

.field currentPeriodEnd:Ljava/lang/Long;

.field currentPeriodStart:Ljava/lang/Long;

.field customer:Ljava/lang/String;

.field discount:Lcom/stripe/model/Discount;

.field endedAt:Ljava/lang/Long;

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

.field plan:Lcom/stripe/model/Plan;

.field quantity:Ljava/lang/Integer;

.field start:Ljava/lang/Long;

.field status:Ljava/lang/String;

.field taxPercent:Ljava/lang/Double;

.field trialEnd:Ljava/lang/Long;

.field trialStart:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/Map;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 54
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Subscription;->cancel(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 66
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/Subscription;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Subscription;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Subscription;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Subscription;

    return-object v0
.end method

.method public cancel(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 61
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Subscription;->cancel(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public deleteDiscount()V
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
    .line 72
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Subscription;->deleteDiscount(Lcom/stripe/net/RequestOptions;)V

    .line 73
    return-void
.end method

.method public deleteDiscount(Lcom/stripe/net/RequestOptions;)V
    .locals 5
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
    .line 88
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/discount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/stripe/model/Subscription;->getInstanceURL()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Discount;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Subscription;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public deleteDiscount(Ljava/lang/String;)V
    .locals 2
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
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, result:Lcom/stripe/net/RequestOptions;
    if-eqz p1, :cond_0

    .line 81
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/stripe/model/Subscription;->deleteDiscount(Lcom/stripe/net/RequestOptions;)V

    .line 84
    return-void
.end method

.method public getApplicationFeePercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/stripe/model/Subscription;->applicationFeePercent:Ljava/lang/Double;

    return-object v0
.end method

.method public getCancelAtPeriodEnd()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/stripe/model/Subscription;->cancelAtPeriodEnd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanceledAt()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/stripe/model/Subscription;->canceledAt:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentPeriodEnd()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/stripe/model/Subscription;->currentPeriodEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentPeriodStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stripe/model/Subscription;->currentPeriodStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/stripe/model/Subscription;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Lcom/stripe/model/Discount;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/stripe/model/Subscription;->discount:Lcom/stripe/model/Discount;

    return-object v0
.end method

.method public getEndedAt()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/stripe/model/Subscription;->endedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/stripe/model/Subscription;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string v0, "%s/%s/subscriptions/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Customer;

    invoke-static {v3}, Lcom/stripe/model/Subscription;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/stripe/model/Subscription;->getCustomer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/stripe/model/Subscription;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 194
    iget-object v0, p0, Lcom/stripe/model/Subscription;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getPlan()Lcom/stripe/model/Plan;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/stripe/model/Subscription;->plan:Lcom/stripe/model/Plan;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/stripe/model/Subscription;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/stripe/model/Subscription;->start:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/stripe/model/Subscription;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/stripe/model/Subscription;->taxPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public getTrialEnd()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/stripe/model/Subscription;->trialEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getTrialStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/stripe/model/Subscription;->trialStart:Ljava/lang/Long;

    return-object v0
.end method

.method public setApplicationFeePercent(Ljava/lang/Double;)V
    .locals 0
    .parameter "applicationFeePercent"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/stripe/model/Subscription;->applicationFeePercent:Ljava/lang/Double;

    .line 186
    return-void
.end method

.method public setCancelAtPeriodEnd(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "cancelAtPeriodEnd"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/stripe/model/Subscription;->cancelAtPeriodEnd:Ljava/lang/Boolean;

    .line 120
    return-void
.end method

.method public setCanceledAt(Ljava/lang/Long;)V
    .locals 0
    .parameter "canceledAt"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/stripe/model/Subscription;->canceledAt:Ljava/lang/Long;

    .line 162
    return-void
.end method

.method public setCurrentPeriodEnd(Ljava/lang/Long;)V
    .locals 0
    .parameter "currentPeriodEnd"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/stripe/model/Subscription;->currentPeriodEnd:Ljava/lang/Long;

    .line 108
    return-void
.end method

.method public setCurrentPeriodStart(Ljava/lang/Long;)V
    .locals 0
    .parameter "currentPeriodStart"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/stripe/model/Subscription;->currentPeriodStart:Ljava/lang/Long;

    .line 114
    return-void
.end method

.method public setCustomer(Ljava/lang/String;)V
    .locals 0
    .parameter "customer"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/stripe/model/Subscription;->customer:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setDiscount(Lcom/stripe/model/Discount;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/stripe/model/Subscription;->discount:Lcom/stripe/model/Discount;

    .line 180
    return-void
.end method

.method public setEndedAt(Ljava/lang/Long;)V
    .locals 0
    .parameter "endedAt"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/stripe/model/Subscription;->endedAt:Ljava/lang/Long;

    .line 168
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/stripe/model/Subscription;->id:Ljava/lang/String;

    .line 101
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
    .line 197
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Subscription;->metadata:Ljava/util/Map;

    .line 198
    return-void
.end method

.method public setPlan(Lcom/stripe/model/Plan;)V
    .locals 0
    .parameter "plan"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/stripe/model/Subscription;->plan:Lcom/stripe/model/Plan;

    .line 156
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0
    .parameter "quantity"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/stripe/model/Subscription;->quantity:Ljava/lang/Integer;

    .line 174
    return-void
.end method

.method public setStart(Ljava/lang/Long;)V
    .locals 0
    .parameter "start"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/stripe/model/Subscription;->start:Ljava/lang/Long;

    .line 132
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/stripe/model/Subscription;->status:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTaxPercent(Ljava/lang/Double;)V
    .locals 0
    .parameter "taxPercent"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/stripe/model/Subscription;->taxPercent:Ljava/lang/Double;

    .line 192
    return-void
.end method

.method public setTrialEnd(Ljava/lang/Long;)V
    .locals 0
    .parameter "trialEnd"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/stripe/model/Subscription;->trialEnd:Ljava/lang/Long;

    .line 150
    return-void
.end method

.method public setTrialStart(Ljava/lang/Long;)V
    .locals 0
    .parameter "trialStart"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/stripe/model/Subscription;->trialStart:Ljava/lang/Long;

    .line 144
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/stripe/model/Subscription;->update(Ljava/util/Map;)Lcom/stripe/model/Subscription;

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
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Subscription;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 36
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Subscription;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 48
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/Subscription;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Subscription;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Subscription;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Subscription;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Subscription;
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
            "Lcom/stripe/model/Subscription;"
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
    .line 43
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Subscription;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Subscription;

    move-result-object v0

    return-object v0
.end method
