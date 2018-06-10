.class public Lcom/stripe/model/Invoice;
.super Lcom/stripe/net/APIResource;
.source "Invoice.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Invoice;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field amountDue:Ljava/lang/Integer;

.field applicationFee:Ljava/lang/Long;

.field attemptCount:Ljava/lang/Integer;

.field attempted:Ljava/lang/Boolean;

.field charge:Ljava/lang/String;

.field closed:Ljava/lang/Boolean;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field customer:Ljava/lang/String;

.field date:Ljava/lang/Long;

.field description:Ljava/lang/String;

.field discount:Lcom/stripe/model/Discount;

.field endingBalance:Ljava/lang/Integer;

.field forgiven:Ljava/lang/Boolean;

.field id:Ljava/lang/String;

.field lines:Lcom/stripe/model/InvoiceLineItemCollection;

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

.field nextPaymentAttempt:Ljava/lang/Long;

.field paid:Ljava/lang/Boolean;

.field periodEnd:Ljava/lang/Long;

.field periodStart:Ljava/lang/Long;

.field receiptNumber:Ljava/lang/String;

.field startingBalance:Ljava/lang/Integer;

.field statementDescriptor:Ljava/lang/String;

.field subscription:Ljava/lang/String;

.field subtotal:Ljava/lang/Integer;

.field tax:Ljava/lang/Integer;

.field taxPercent:Ljava/lang/Double;

.field total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/InvoiceCollection;
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
            "Lcom/stripe/model/InvoiceCollection;"
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
    .line 356
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;
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
            "Lcom/stripe/model/InvoiceCollection;"
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
    .line 372
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Invoice;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/InvoiceCollection;
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
            "Lcom/stripe/model/InvoiceCollection;"
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
    .line 364
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 282
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 324
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Invoice;

    invoke-static {v1}, Lcom/stripe/model/Invoice;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Invoice;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Invoice;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Invoice;

    return-object v0
.end method

.method public static create(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 319
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/InvoiceCollection;
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
            "Lcom/stripe/model/InvoiceCollection;"
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
    .line 342
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/InvoiceCollection;
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
            "Lcom/stripe/model/InvoiceCollection;"
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
    .line 349
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/Invoice;

    invoke-static {v0}, Lcom/stripe/model/Invoice;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/InvoiceCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Invoice;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/InvoiceCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
    .line 276
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;
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
    .line 312
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Invoice;

    invoke-static {v1, p0}, Lcom/stripe/model/Invoice;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Invoice;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Invoice;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Invoice;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
    .line 307
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public static upcoming(Ljava/util/Map;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 288
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->upcoming(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public static upcoming(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 336
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/upcoming"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/stripe/model/Invoice;

    invoke-static {v4}, Lcom/stripe/model/Invoice;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Invoice;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Invoice;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Invoice;

    return-object v0
.end method

.method public static upcoming(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 331
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Invoice;->upcoming(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAmountDue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/stripe/model/Invoice;->amountDue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApplicationFee()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/stripe/model/Invoice;->applicationFee:Ljava/lang/Long;

    return-object v0
.end method

.method public getAttemptCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/stripe/model/Invoice;->attemptCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttempted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stripe/model/Invoice;->attempted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCharge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/stripe/model/Invoice;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public getClosed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/stripe/model/Invoice;->closed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/stripe/model/Invoice;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/stripe/model/Invoice;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/stripe/model/Invoice;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/stripe/model/Invoice;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/stripe/model/Invoice;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Lcom/stripe/model/Discount;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/stripe/model/Invoice;->discount:Lcom/stripe/model/Discount;

    return-object v0
.end method

.method public getEndingBalance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/stripe/model/Invoice;->endingBalance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getForgiven()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/stripe/model/Invoice;->forgiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stripe/model/Invoice;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLines()Lcom/stripe/model/InvoiceLineItemCollection;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/stripe/model/Invoice;->lines:Lcom/stripe/model/InvoiceLineItemCollection;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/stripe/model/Invoice;->livemode:Ljava/lang/Boolean;

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
    .line 401
    iget-object v0, p0, Lcom/stripe/model/Invoice;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getNextPaymentAttempt()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/stripe/model/Invoice;->nextPaymentAttempt:Ljava/lang/Long;

    return-object v0
.end method

.method public getPaid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/stripe/model/Invoice;->paid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPeriodEnd()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/stripe/model/Invoice;->periodEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getPeriodStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/stripe/model/Invoice;->periodStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getReceiptNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/stripe/model/Invoice;->receiptNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStartingBalance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stripe/model/Invoice;->startingBalance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatementDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/stripe/model/Invoice;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/stripe/model/Invoice;->subscription:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stripe/model/Invoice;->subtotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTax()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/stripe/model/Invoice;->tax:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTaxPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/stripe/model/Invoice;->taxPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/stripe/model/Invoice;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public pay()Lcom/stripe/model/Invoice;
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
    .line 294
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Invoice;->pay(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public pay(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;
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
    .line 396
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-string v1, "%s/pay"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/stripe/model/Invoice;

    invoke-virtual {p0}, Lcom/stripe/model/Invoice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stripe/model/Invoice;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Invoice;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Invoice;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Invoice;

    return-object v0
.end method

.method public pay(Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
    .line 391
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/model/Invoice;->pay(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public setAmountDue(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amountDue"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/stripe/model/Invoice;->amountDue:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method public setApplicationFee(Ljava/lang/Long;)V
    .locals 0
    .parameter "applicationFee"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/stripe/model/Invoice;->applicationFee:Ljava/lang/Long;

    .line 239
    return-void
.end method

.method public setAttemptCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "attemptCount"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/stripe/model/Invoice;->attemptCount:Ljava/lang/Integer;

    .line 215
    return-void
.end method

.method public setAttempted(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "attempted"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/stripe/model/Invoice;->attempted:Ljava/lang/Boolean;

    .line 115
    return-void
.end method

.method public setCharge(Ljava/lang/String;)V
    .locals 0
    .parameter "charge"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/stripe/model/Invoice;->charge:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setClosed(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "closed"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/stripe/model/Invoice;->closed:Ljava/lang/Boolean;

    .line 139
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/stripe/model/Invoice;->created:Ljava/lang/Long;

    .line 99
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/stripe/model/Invoice;->currency:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setCustomer(Ljava/lang/String;)V
    .locals 0
    .parameter "customer"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/stripe/model/Invoice;->customer:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setDate(Ljava/lang/Long;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/stripe/model/Invoice;->date:Ljava/lang/Long;

    .line 155
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/stripe/model/Invoice;->description:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setDiscount(Lcom/stripe/model/Discount;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/stripe/model/Invoice;->discount:Lcom/stripe/model/Discount;

    .line 195
    return-void
.end method

.method public setEndingBalance(Ljava/lang/Integer;)V
    .locals 0
    .parameter "endingBalance"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/stripe/model/Invoice;->endingBalance:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method public setForgiven(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "forgiven"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/stripe/model/Invoice;->forgiven:Ljava/lang/Boolean;

    .line 171
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/stripe/model/Invoice;->id:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/stripe/model/Invoice;->livemode:Ljava/lang/Boolean;

    .line 207
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
    .line 405
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Invoice;->metadata:Ljava/util/Map;

    .line 406
    return-void
.end method

.method public setNextPaymentAttempt(Ljava/lang/Long;)V
    .locals 0
    .parameter "nextPaymentAttempt"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/stripe/model/Invoice;->nextPaymentAttempt:Ljava/lang/Long;

    .line 107
    return-void
.end method

.method public setPaid(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "paid"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/stripe/model/Invoice;->paid:Ljava/lang/Boolean;

    .line 163
    return-void
.end method

.method public setPeriodEnd(Ljava/lang/Long;)V
    .locals 0
    .parameter "periodEnd"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/stripe/model/Invoice;->periodEnd:Ljava/lang/Long;

    .line 187
    return-void
.end method

.method public setPeriodStart(Ljava/lang/Long;)V
    .locals 0
    .parameter "periodStart"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/stripe/model/Invoice;->periodStart:Ljava/lang/Long;

    .line 179
    return-void
.end method

.method public setReceiptNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "receiptNumber"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/stripe/model/Invoice;->receiptNumber:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setStartingBalance(Ljava/lang/Integer;)V
    .locals 0
    .parameter "startingBalance"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/stripe/model/Invoice;->startingBalance:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public setStatementDescriptor(Ljava/lang/String;)V
    .locals 0
    .parameter "statementDescriptor"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/stripe/model/Invoice;->statementDescriptor:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSubscription(Ljava/lang/String;)V
    .locals 0
    .parameter "subscription"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/stripe/model/Invoice;->subscription:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setSubtotal(Ljava/lang/Integer;)V
    .locals 0
    .parameter "subtotal"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/stripe/model/Invoice;->subtotal:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setTax(Ljava/lang/Integer;)V
    .locals 0
    .parameter "tax"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/stripe/model/Invoice;->tax:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public setTaxPercent(Ljava/lang/Double;)V
    .locals 0
    .parameter "taxPercent"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/stripe/model/Invoice;->taxPercent:Ljava/lang/Double;

    .line 263
    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0
    .parameter "total"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/stripe/model/Invoice;->total:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 300
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Invoice;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 384
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Invoice;

    iget-object v2, p0, Lcom/stripe/model/Invoice;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Invoice;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Invoice;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Invoice;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Invoice;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Invoice;
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
            "Lcom/stripe/model/Invoice;"
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
    .line 379
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Invoice;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

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
    invoke-virtual {p0, p1}, Lcom/stripe/model/Invoice;->update(Ljava/util/Map;)Lcom/stripe/model/Invoice;

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
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Invoice;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Invoice;

    move-result-object v0

    return-object v0
.end method
