.class public Lcom/stripe/model/Card;
.super Lcom/stripe/model/ExternalAccount;
.source "Card.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/model/ExternalAccount;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Card;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field addressCity:Ljava/lang/String;

.field addressCountry:Ljava/lang/String;

.field addressLine1:Ljava/lang/String;

.field addressLine1Check:Ljava/lang/String;

.field addressLine2:Ljava/lang/String;

.field addressState:Ljava/lang/String;

.field addressZip:Ljava/lang/String;

.field addressZipCheck:Ljava/lang/String;

.field brand:Ljava/lang/String;

.field country:Ljava/lang/String;

.field currency:Ljava/lang/String;

.field cvcCheck:Ljava/lang/String;

.field dynamicLast4:Ljava/lang/String;

.field expMonth:Ljava/lang/Integer;

.field expYear:Ljava/lang/Integer;

.field fingerprint:Ljava/lang/String;

.field funding:Ljava/lang/String;

.field last4:Ljava/lang/String;

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

.field name:Ljava/lang/String;

.field recipient:Ljava/lang/String;

.field status:Ljava/lang/String;

.field tokenizationMethod:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/stripe/model/ExternalAccount;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()Lcom/stripe/model/DeletedCard;
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
    .line 59
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Card;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCard;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCard;
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
    .line 70
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/Card;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/DeletedCard;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Card;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedCard;

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/stripe/model/DeletedCard;
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
    .line 65
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/model/Card;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCard;

    move-result-object v0

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
    .line 12
    invoke-virtual {p0}, Lcom/stripe/model/Card;->delete()Lcom/stripe/model/DeletedCard;

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/stripe/model/Card;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCard;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/stripe/model/Card;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/stripe/model/Card;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/stripe/model/Card;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine1Check()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/stripe/model/Card;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/stripe/model/Card;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/stripe/model/Card;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/stripe/model/Card;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressZipCheck()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/stripe/model/Card;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/stripe/model/Card;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/stripe/model/Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/stripe/model/Card;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCvcCheck()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/stripe/model/Card;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicLast4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/stripe/model/Card;->dynamicLast4:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stripe/model/Card;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpYear()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/stripe/model/Card;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/stripe/model/Card;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getFunding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/stripe/model/Card;->funding:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    invoke-super {p0}, Lcom/stripe/model/ExternalAccount;->getInstanceURL()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    .end local v0           #result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 78
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/model/Card;->getRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "%s/%s/cards/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/stripe/model/Recipient;

    invoke-static {v4}, Lcom/stripe/model/Card;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/stripe/model/Card;->getRecipient()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/stripe/model/Card;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLast4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stripe/model/Card;->last4:Ljava/lang/String;

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
    .line 212
    iget-object v0, p0, Lcom/stripe/model/Card;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/stripe/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/stripe/model/Card;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stripe/model/Card;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenizationMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/stripe/model/Card;->tokenizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/stripe/model/Card;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressCity(Ljava/lang/String;)V
    .locals 0
    .parameter "addressCity"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/stripe/model/Card;->addressCity:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setAddressCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "addressCountry"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/stripe/model/Card;->addressCountry:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setAddressLine1(Ljava/lang/String;)V
    .locals 0
    .parameter "addressLine1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/stripe/model/Card;->addressLine1:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setAddressLine1Check(Ljava/lang/String;)V
    .locals 0
    .parameter "addressLine1Check"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/stripe/model/Card;->addressLine1Check:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setAddressLine2(Ljava/lang/String;)V
    .locals 0
    .parameter "addressLine2"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/stripe/model/Card;->addressLine2:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setAddressState(Ljava/lang/String;)V
    .locals 0
    .parameter "addressState"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/stripe/model/Card;->addressState:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setAddressZip(Ljava/lang/String;)V
    .locals 0
    .parameter "addressZip"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/stripe/model/Card;->addressZip:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setAddressZipCheck(Ljava/lang/String;)V
    .locals 0
    .parameter "addressZipCheck"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/stripe/model/Card;->addressZipCheck:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "brand"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/stripe/model/Card;->brand:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/stripe/model/Card;->country:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/stripe/model/Card;->currency:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCvcCheck(Ljava/lang/String;)V
    .locals 0
    .parameter "cvcCheck"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/stripe/model/Card;->cvcCheck:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setDynamicLast4(Ljava/lang/String;)V
    .locals 0
    .parameter "dynamicLast4"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/stripe/model/Card;->dynamicLast4:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setExpMonth(Ljava/lang/Integer;)V
    .locals 0
    .parameter "expMonth"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/stripe/model/Card;->expMonth:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public setExpYear(Ljava/lang/Integer;)V
    .locals 0
    .parameter "expYear"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/stripe/model/Card;->expYear:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setFingerprint(Ljava/lang/String;)V
    .locals 0
    .parameter "fingerprint"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/stripe/model/Card;->fingerprint:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setFunding(Ljava/lang/String;)V
    .locals 0
    .parameter "funding"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/stripe/model/Card;->funding:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setLast4(Ljava/lang/String;)V
    .locals 0
    .parameter "last4"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/stripe/model/Card;->last4:Ljava/lang/String;

    .line 114
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
    .line 215
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Card;->metadata:Ljava/util/Map;

    .line 216
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/stripe/model/Card;->name:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0
    .parameter "recipient"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/stripe/model/Card;->recipient:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/stripe/model/Card;->status:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTokenizationMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "tokenizationMethod"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/stripe/model/Card;->tokenizationMethod:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/stripe/model/Card;->type:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Card;
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
            "Lcom/stripe/model/Card;"
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
    .line 41
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Card;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Card;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Card;
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
            "Lcom/stripe/model/Card;"
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
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    invoke-virtual {p0}, Lcom/stripe/model/Card;->getInstanceURL()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Card;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Card;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Card;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Card;
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
            "Lcom/stripe/model/Card;"
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
    .line 48
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Card;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Card;

    move-result-object v0

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/stripe/model/Card;->update(Ljava/util/Map;)Lcom/stripe/model/Card;

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
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Card;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Card;

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/stripe/model/Card;->update(Ljava/util/Map;)Lcom/stripe/model/Card;

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
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Card;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Card;

    move-result-object v0

    return-object v0
.end method
