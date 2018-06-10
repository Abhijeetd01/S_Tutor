.class public Lcom/stripe/model/Coupon;
.super Lcom/stripe/net/APIResource;
.source "Coupon.java"

# interfaces
.implements Lcom/stripe/model/MetadataStore;
.implements Lcom/stripe/model/HasId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Coupon;",
        ">;",
        "Lcom/stripe/model/HasId;"
    }
.end annotation


# instance fields
.field amountOff:Ljava/lang/Integer;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field duration:Ljava/lang/String;

.field durationInMonths:Ljava/lang/Integer;

.field id:Ljava/lang/String;

.field livemode:Ljava/lang/Boolean;

.field maxRedemptions:Ljava/lang/Long;

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

.field percentOff:Ljava/lang/Integer;

.field redeemBy:Ljava/lang/Long;

.field timesRedeemed:Ljava/lang/Integer;

.field valid:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/CouponCollection;
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
            "Lcom/stripe/model/CouponCollection;"
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
    .line 100
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;
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
            "Lcom/stripe/model/CouponCollection;"
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
    .line 114
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Coupon;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/CouponCollection;
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
            "Lcom/stripe/model/CouponCollection;"
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
    .line 107
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Coupon;

    invoke-static {v1}, Lcom/stripe/model/Coupon;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Coupon;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Coupon;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Coupon;

    return-object v0
.end method

.method public static create(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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
    .line 64
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/CouponCollection;
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
            "Lcom/stripe/model/CouponCollection;"
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
    .line 87
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/CouponCollection;
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
            "Lcom/stripe/model/CouponCollection;"
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
    .line 93
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/stripe/model/Coupon;

    invoke-static {v0}, Lcom/stripe/model/Coupon;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/CouponCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Coupon;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/CouponCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Coupon;
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
    .line 45
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;
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
    .line 81
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Coupon;

    invoke-static {v1, p0}, Lcom/stripe/model/Coupon;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Coupon;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Coupon;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Coupon;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/Coupon;
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
    .line 76
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Coupon;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/stripe/model/DeletedCoupon;
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
    .line 120
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Coupon;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCoupon;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCoupon;
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
    .line 132
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Coupon;

    iget-object v2, p0, Lcom/stripe/model/Coupon;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Coupon;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/DeletedCoupon;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Coupon;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedCoupon;

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/stripe/model/DeletedCoupon;
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
    .line 127
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/model/Coupon;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedCoupon;

    move-result-object v0

    return-object v0
.end method

.method public getAmountOff()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/stripe/model/Coupon;->amountOff:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/stripe/model/Coupon;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/stripe/model/Coupon;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/stripe/model/Coupon;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInMonths()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/stripe/model/Coupon;->durationInMonths:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/stripe/model/Coupon;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/stripe/model/Coupon;->livemode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxRedemptions()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/stripe/model/Coupon;->maxRedemptions:Ljava/lang/Long;

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
    .line 29
    iget-object v0, p0, Lcom/stripe/model/Coupon;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getPercentOff()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/stripe/model/Coupon;->percentOff:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRedeemBy()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/stripe/model/Coupon;->redeemBy:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimesRedeemed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/stripe/model/Coupon;->timesRedeemed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/stripe/model/Coupon;->valid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmountOff(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amountOff"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/stripe/model/Coupon;->amountOff:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/stripe/model/Coupon;->created:Ljava/lang/Long;

    .line 181
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/stripe/model/Coupon;->currency:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/stripe/model/Coupon;->duration:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDurationInMonths(Ljava/lang/Integer;)V
    .locals 0
    .parameter "durationInMonths"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/stripe/model/Coupon;->durationInMonths:Ljava/lang/Integer;

    .line 197
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/stripe/model/Coupon;->id:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/stripe/model/Coupon;->livemode:Ljava/lang/Boolean;

    .line 189
    return-void
.end method

.method public setMaxRedemptions(Ljava/lang/Long;)V
    .locals 0
    .parameter "maxRedemptions"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/stripe/model/Coupon;->maxRedemptions:Ljava/lang/Long;

    .line 205
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
    .line 33
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Coupon;->metadata:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public setPercentOff(Ljava/lang/Integer;)V
    .locals 0
    .parameter "percentOff"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/stripe/model/Coupon;->percentOff:Ljava/lang/Integer;

    .line 141
    return-void
.end method

.method public setRedeemBy(Ljava/lang/Long;)V
    .locals 0
    .parameter "redeemBy"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/stripe/model/Coupon;->redeemBy:Ljava/lang/Long;

    .line 213
    return-void
.end method

.method public setTimesRedeemed(Ljava/lang/Integer;)V
    .locals 0
    .parameter "timesRedeemed"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/stripe/model/Coupon;->timesRedeemed:Ljava/lang/Integer;

    .line 221
    return-void
.end method

.method public setValid(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/stripe/model/Coupon;->valid:Ljava/lang/Boolean;

    .line 229
    return-void
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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
    .line 49
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Coupon;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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
    .line 57
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Coupon;

    iget-object v2, p0, Lcom/stripe/model/Coupon;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Coupon;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Coupon;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Coupon;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Coupon;

    return-object v0
.end method

.method public update(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Coupon;
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
            "Lcom/stripe/model/Coupon;"
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
    .line 54
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Coupon;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

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
    invoke-virtual {p0, p1}, Lcom/stripe/model/Coupon;->update(Ljava/util/Map;)Lcom/stripe/model/Coupon;

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
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Coupon;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Coupon;

    move-result-object v0

    return-object v0
.end method
