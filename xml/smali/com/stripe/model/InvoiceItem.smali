.class public Lcom/stripe/model/InvoiceItem;
.super Lcom/stripe/net/APIResource;
.source "InvoiceItem.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/InvoiceItem;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field amount:Ljava/lang/Integer;

.field currency:Ljava/lang/String;

.field customer:Ljava/lang/String;

.field date:Ljava/lang/Long;

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field invoice:Ljava/lang/String;

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

.field subscription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/InvoiceItemCollection;
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
            "Lcom/stripe/model/InvoiceItemCollection;"
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

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;
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
            "Lcom/stripe/model/InvoiceItemCollection;"
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
    .line 186
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/InvoiceItem;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/InvoiceItemCollection;
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
            "Lcom/stripe/model/InvoiceItemCollection;"
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
    .line 178
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 108
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 138
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/InvoiceItem;

    invoke-static {v1}, Lcom/stripe/model/InvoiceItem;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/InvoiceItem;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/InvoiceItem;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/InvoiceItem;

    return-object v0
.end method

.method public static create(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 133
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/InvoiceItemCollection;
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
            "Lcom/stripe/model/InvoiceItemCollection;"
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
    .line 156
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItemCollection;
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
            "Lcom/stripe/model/InvoiceItemCollection;"
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
    const-class v0, Lcom/stripe/model/InvoiceItem;

    invoke-static {v0}, Lcom/stripe/model/InvoiceItem;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/InvoiceItemCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/InvoiceItem;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/InvoiceItemCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/InvoiceItem;
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
    .line 114
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;
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
    .line 150
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/InvoiceItem;

    invoke-static {v1, p0}, Lcom/stripe/model/InvoiceItem;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/InvoiceItem;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/InvoiceItem;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/InvoiceItem;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/InvoiceItem;
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
    .line 145
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/InvoiceItem;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/stripe/model/DeletedInvoiceItem;
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
    .line 126
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/InvoiceItem;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedInvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedInvoiceItem;
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
    .line 210
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/InvoiceItem;

    iget-object v2, p0, Lcom/stripe/model/InvoiceItem;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/InvoiceItem;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/DeletedInvoiceItem;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/InvoiceItem;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedInvoiceItem;

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/stripe/model/DeletedInvoiceItem;
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
    .line 205
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/model/InvoiceItem;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedInvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->invoice:Ljava/lang/String;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->livemode:Ljava/lang/Boolean;

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
    .line 90
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getSubscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stripe/model/InvoiceItem;->subscription:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->amount:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->currency:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCustomer(Ljava/lang/String;)V
    .locals 0
    .parameter "customer"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->customer:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDate(Ljava/lang/Long;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->date:Ljava/lang/Long;

    .line 63
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->description:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setInvoice(Ljava/lang/String;)V
    .locals 0
    .parameter "invoice"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->invoice:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->livemode:Ljava/lang/Boolean;

    .line 71
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
    .line 94
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->metadata:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public setSubscription(Ljava/lang/String;)V
    .locals 0
    .parameter "subscription"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/stripe/model/InvoiceItem;->subscription:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 120
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/InvoiceItem;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 198
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/InvoiceItem;

    iget-object v2, p0, Lcom/stripe/model/InvoiceItem;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/InvoiceItem;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/InvoiceItem;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/InvoiceItem;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/InvoiceItem;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/InvoiceItem;
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
            "Lcom/stripe/model/InvoiceItem;"
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
    .line 193
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/InvoiceItem;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/stripe/model/InvoiceItem;->update(Ljava/util/Map;)Lcom/stripe/model/InvoiceItem;

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
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/InvoiceItem;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceItem;

    move-result-object v0

    return-object v0
.end method
