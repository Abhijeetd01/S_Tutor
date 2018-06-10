.class public Lcom/stripe/model/Account;
.super Lcom/stripe/net/APIResource;
.source "Account.java"

# interfaces
.implements Lcom/stripe/model/HasId;
.implements Lcom/stripe/model/MetadataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/model/Account$Keys;,
        Lcom/stripe/model/Account$Verification;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/HasId;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Account;",
        ">;"
    }
.end annotation


# instance fields
.field businessLogo:Ljava/lang/String;

.field businessName:Ljava/lang/String;

.field businessPrimaryColor:Ljava/lang/String;

.field businessUrl:Ljava/lang/String;

.field chargesEnabled:Ljava/lang/Boolean;

.field country:Ljava/lang/String;

.field currenciesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field debitNegativeBalances:Ljava/lang/Boolean;

.field declineChargeOn:Lcom/stripe/model/AccountDeclineChargeOn;

.field defaultCurrency:Ljava/lang/String;

.field detailsSubmitted:Ljava/lang/Boolean;

.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field externalAccounts:Lcom/stripe/model/ExternalAccountCollection;

.field id:Ljava/lang/String;

.field keys:Lcom/stripe/model/Account$Keys;

.field legalEntity:Lcom/stripe/model/LegalEntity;

.field managed:Ljava/lang/Boolean;

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

.field productDescription:Ljava/lang/String;

.field statementDescriptor:Ljava/lang/String;

.field supportEmail:Ljava/lang/String;

.field supportPhone:Ljava/lang/String;

.field supportUrl:Ljava/lang/String;

.field timezone:Ljava/lang/String;

.field tosAcceptance:Lcom/stripe/model/AccountTosAcceptance;

.field transferSchedule:Lcom/stripe/model/AccountTransferSchedule;

.field transfersEnabled:Ljava/lang/Boolean;

.field verification:Lcom/stripe/model/Account$Verification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    .line 339
    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/AccountCollection;
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
            "Lcom/stripe/model/AccountCollection;"
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
    .line 223
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Account;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/AccountCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/AccountCollection;
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
            "Lcom/stripe/model/AccountCollection;"
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
    .line 230
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Account;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/AccountCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Account;
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
            "Lcom/stripe/model/Account;"
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
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Account;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;
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
            "Lcom/stripe/model/Account;"
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
    .line 204
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Account;

    invoke-static {v1}, Lcom/stripe/model/Account;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Account;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Account;

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/AccountCollection;
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
            "Lcom/stripe/model/AccountCollection;"
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
    .line 210
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Account;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/AccountCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/AccountCollection;
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
            "Lcom/stripe/model/AccountCollection;"
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
    .line 216
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/Account;

    invoke-static {v0}, Lcom/stripe/model/Account;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/AccountCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Account;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/AccountCollection;

    return-object v0
.end method

.method public static retrieve()Lcom/stripe/model/Account;
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
    .line 236
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {v0}, Lcom/stripe/model/Account;->retrieve(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;
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
    .line 259
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Account;

    invoke-static {v1}, Lcom/stripe/model/Account;->singleClassURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Account;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Account;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Account;
    .locals 1
    .parameter "apiKeyOrAccountId"
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
    .line 249
    if-eqz p0, :cond_0

    const-string v0, "sk_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/model/Account;->retrieve(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Account;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;
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
    .line 270
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Account;

    invoke-static {v1, p0}, Lcom/stripe/model/Account;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Account;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Account;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/util/Map;)Lcom/stripe/model/DeletedAccount;
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
            "Lcom/stripe/model/DeletedAccount;"
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
    .line 294
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Account;->delete(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedAccount;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedAccount;
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
            "Lcom/stripe/model/DeletedAccount;"
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
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Account;

    iget-object v2, p0, Lcom/stripe/model/Account;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Account;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/DeletedAccount;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedAccount;

    return-object v0
.end method

.method public getBusinessLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/stripe/model/Account;->businessLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/stripe/model/Account;->businessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessPrimaryColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/stripe/model/Account;->businessPrimaryColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/stripe/model/Account;->businessUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChargesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/stripe/model/Account;->chargesEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stripe/model/Account;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrenciesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stripe/model/Account;->currenciesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getDebitNegativeBalances()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/stripe/model/Account;->debitNegativeBalances:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeclineChargeOn()Lcom/stripe/model/AccountDeclineChargeOn;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/stripe/model/Account;->declineChargeOn:Lcom/stripe/model/AccountDeclineChargeOn;

    return-object v0
.end method

.method public getDefaultCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/stripe/model/Account;->defaultCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsSubmitted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/stripe/model/Account;->detailsSubmitted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/stripe/model/Account;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/stripe/model/Account;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalAccounts()Lcom/stripe/model/ExternalAccountCollection;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/stripe/model/Account;->externalAccounts:Lcom/stripe/model/ExternalAccountCollection;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stripe/model/Account;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Lcom/stripe/model/Account$Keys;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stripe/model/Account;->keys:Lcom/stripe/model/Account$Keys;

    return-object v0
.end method

.method public getLegalEntity()Lcom/stripe/model/LegalEntity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/stripe/model/Account;->legalEntity:Lcom/stripe/model/LegalEntity;

    return-object v0
.end method

.method public getManaged()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/stripe/model/Account;->managed:Ljava/lang/Boolean;

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
    .line 112
    iget-object v0, p0, Lcom/stripe/model/Account;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/stripe/model/Account;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatementDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/stripe/model/Account;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/stripe/model/Account;->supportEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/stripe/model/Account;->supportPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/stripe/model/Account;->supportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/stripe/model/Account;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTosAcceptance()Lcom/stripe/model/AccountTosAcceptance;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/stripe/model/Account;->tosAcceptance:Lcom/stripe/model/AccountTosAcceptance;

    return-object v0
.end method

.method public getTransferSchedule()Lcom/stripe/model/AccountTransferSchedule;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/stripe/model/Account;->transferSchedule:Lcom/stripe/model/AccountTransferSchedule;

    return-object v0
.end method

.method public getTransfersEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/stripe/model/Account;->transfersEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVerification()Lcom/stripe/model/Account$Verification;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stripe/model/Account;->verification:Lcom/stripe/model/Account$Verification;

    return-object v0
.end method

.method public reject(Ljava/util/Map;)Lcom/stripe/model/Account;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/stripe/model/Account;"
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
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/stripe/model/Account;

    iget-object v3, p0, Lcom/stripe/model/Account;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/stripe/model/Account;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/reject"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/stripe/model/Account;

    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Account;

    return-object v0
.end method

.method public setBusinessPrimaryColor(Ljava/lang/String;)V
    .locals 0
    .parameter "businessPrimaryColor"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/stripe/model/Account;->businessPrimaryColor:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDebitNegativeBalances(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "debitNegativeBalances"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/stripe/model/Account;->debitNegativeBalances:Ljava/lang/Boolean;

    .line 67
    return-void
.end method

.method public setDeclineChargeOn(Lcom/stripe/model/AccountDeclineChargeOn;)V
    .locals 0
    .parameter "declineChargeOn"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/stripe/model/Account;->declineChargeOn:Lcom/stripe/model/AccountDeclineChargeOn;

    .line 172
    return-void
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "productDescription"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/stripe/model/Account;->productDescription:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setTosAcceptance(Lcom/stripe/model/AccountTosAcceptance;)V
    .locals 0
    .parameter "tosAcceptance"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/stripe/model/Account;->tosAcceptance:Lcom/stripe/model/AccountTosAcceptance;

    .line 180
    return-void
.end method

.method public setTransferSchedule(Lcom/stripe/model/AccountTransferSchedule;)V
    .locals 0
    .parameter "transferSchedule"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/stripe/model/Account;->transferSchedule:Lcom/stripe/model/AccountTransferSchedule;

    .line 188
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Account;
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
            "Lcom/stripe/model/Account;"
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
    .line 276
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Account;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;
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
            "Lcom/stripe/model/Account;"
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
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Account;

    iget-object v2, p0, Lcom/stripe/model/Account;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Account;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Account;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Account;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Account;

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/stripe/model/Account;->update(Ljava/util/Map;)Lcom/stripe/model/Account;

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
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Account;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Account;

    move-result-object v0

    return-object v0
.end method
