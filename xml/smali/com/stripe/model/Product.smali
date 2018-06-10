.class public Lcom/stripe/model/Product;
.super Lcom/stripe/net/APIResource;
.source "Product.java"

# interfaces
.implements Lcom/stripe/model/HasId;
.implements Lcom/stripe/model/MetadataStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/HasId;",
        "Lcom/stripe/model/MetadataStore",
        "<",
        "Lcom/stripe/model/Product;",
        ">;"
    }
.end annotation


# instance fields
.field active:Ljava/lang/Boolean;

.field attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field caption:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field name:Ljava/lang/String;

.field packageDimensions:Lcom/stripe/model/PackageDimensions;

.field shippable:Ljava/lang/Boolean;

.field skus:Lcom/stripe/model/SKUCollection;

.field updated:Ljava/lang/Long;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static all(Ljava/util/Map;)Lcom/stripe/model/ProductCollection;
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
            "Lcom/stripe/model/ProductCollection;"
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
    .line 211
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Product;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ProductCollection;

    move-result-object v0

    return-object v0
.end method

.method public static all(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ProductCollection;
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
            "Lcom/stripe/model/ProductCollection;"
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
    .line 219
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/stripe/model/Product;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ProductCollection;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Product;
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
            "Lcom/stripe/model/Product;"
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
    .line 155
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Product;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;
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
            "Lcom/stripe/model/Product;"
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
    .line 173
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Product;

    invoke-static {v1}, Lcom/stripe/model/Product;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Product;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Product;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Product;

    return-object v0
.end method

.method public static list(Ljava/util/Map;)Lcom/stripe/model/ProductCollection;
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
            "Lcom/stripe/model/ProductCollection;"
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
    .line 197
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Product;->list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ProductCollection;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/ProductCollection;
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
            "Lcom/stripe/model/ProductCollection;"
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
    const-class v0, Lcom/stripe/model/Product;

    invoke-static {v0}, Lcom/stripe/model/Product;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/stripe/model/ProductCollection;

    invoke-static {v0, p0, v1, p1}, Lcom/stripe/model/Product;->requestCollection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/StripeCollectionInterface;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/ProductCollection;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Product;
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
    .line 161
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Product;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;
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
    .line 179
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Product;

    invoke-static {v1, p0}, Lcom/stripe/model/Product;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Product;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Product;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Product;

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/stripe/model/DeletedProduct;
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
    .line 185
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/stripe/model/Product;->delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedProduct;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/DeletedProduct;
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
    .line 191
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->DELETE:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Product;

    iget-object v2, p0, Lcom/stripe/model/Product;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Product;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/DeletedProduct;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Product;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/DeletedProduct;

    return-object v0
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/stripe/model/Product;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
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
    .line 104
    iget-object v0, p0, Lcom/stripe/model/Product;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/stripe/model/Product;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/stripe/model/Product;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/stripe/model/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stripe/model/Product;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
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
    .line 72
    iget-object v0, p0, Lcom/stripe/model/Product;->images:Ljava/util/List;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/stripe/model/Product;->livemode:Ljava/lang/Boolean;

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
    .line 145
    iget-object v0, p0, Lcom/stripe/model/Product;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/stripe/model/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageDimensions()Lcom/stripe/model/PackageDimensions;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/stripe/model/Product;->packageDimensions:Lcom/stripe/model/PackageDimensions;

    return-object v0
.end method

.method public getShippable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/stripe/model/Product;->shippable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSkus()Lcom/stripe/model/SKUCollection;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/stripe/model/Product;->skus:Lcom/stripe/model/SKUCollection;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/stripe/model/Product;->updated:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/stripe/model/Product;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "active"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/stripe/model/Product;->active:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Product;->attributes:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/stripe/model/Product;->caption:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/stripe/model/Product;->created:Ljava/lang/Long;

    .line 37
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/stripe/model/Product;->description:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/stripe/model/Product;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, images:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Product;->images:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/stripe/model/Product;->livemode:Ljava/lang/Boolean;

    .line 61
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
    .line 149
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/stripe/model/Product;->metadata:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/stripe/model/Product;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPackageDimensions(Lcom/stripe/model/PackageDimensions;)V
    .locals 0
    .parameter "packageDimensions"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/stripe/model/Product;->packageDimensions:Lcom/stripe/model/PackageDimensions;

    .line 133
    return-void
.end method

.method public setShippable(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "shippable"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/stripe/model/Product;->shippable:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public setSkus(Lcom/stripe/model/SKUCollection;)V
    .locals 0
    .parameter "skus"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/stripe/model/Product;->skus:Lcom/stripe/model/SKUCollection;

    .line 101
    return-void
.end method

.method public setUpdated(Ljava/lang/Long;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/stripe/model/Product;->updated:Ljava/lang/Long;

    .line 45
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/stripe/model/Product;->url:Ljava/lang/String;

    .line 141
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
    invoke-virtual {p0, p1}, Lcom/stripe/model/Product;->update(Ljava/util/Map;)Lcom/stripe/model/Product;

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
    invoke-virtual {p0, p1, p2}, Lcom/stripe/model/Product;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;)Lcom/stripe/model/Product;
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
            "Lcom/stripe/model/Product;"
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
    .line 167
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/Product;->update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Product;
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
            "Lcom/stripe/model/Product;"
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
    .line 225
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Product;

    iget-object v2, p0, Lcom/stripe/model/Product;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/model/Product;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Product;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/stripe/model/Product;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Product;

    return-object v0
.end method
