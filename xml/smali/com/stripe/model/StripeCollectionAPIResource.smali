.class public abstract Lcom/stripe/model/StripeCollectionAPIResource;
.super Lcom/stripe/net/APIResource;
.source "StripeCollectionAPIResource.java"

# interfaces
.implements Lcom/stripe/model/StripeCollectionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/model/HasId;",
        ">",
        "Lcom/stripe/net/APIResource;",
        "Lcom/stripe/model/StripeCollectionInterface",
        "<TT;>;"
    }
.end annotation


# instance fields
.field count:Ljava/lang/Integer;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field hasMore:Ljava/lang/Boolean;

.field private requestOptions:Lcom/stripe/net/RequestOptions;

.field private requestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field totalCount:Ljava/lang/Integer;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method


# virtual methods
.method public autoPagingIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, v0}, Lcom/stripe/model/StripeCollectionAPIResource;->autoPagingIterable(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public autoPagingIterable(Ljava/util/Map;)Ljava/lang/Iterable;
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
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/model/StripeCollectionAPIResource;->autoPagingIterable(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public autoPagingIterable(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Ljava/lang/Iterable;
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
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lcom/stripe/model/StripeCollectionAPIResource;->setRequestOptions(Lcom/stripe/net/RequestOptions;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/stripe/model/StripeCollectionAPIResource;->setRequestParams(Ljava/util/Map;)V

    .line 80
    new-instance v0, Lcom/stripe/model/PagingIterable;

    invoke-direct {v0, p0}, Lcom/stripe/model/PagingIterable;-><init>(Lcom/stripe/model/StripeCollectionInterface;)V

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->data:Ljava/util/List;

    return-object v0
.end method

.method public getHasMore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->hasMore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequestOptions()Lcom/stripe/net/RequestOptions;
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->requestOptions:Lcom/stripe/net/RequestOptions;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->requestParams:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iget-object v0, p0, Lcom/stripe/model/StripeCollectionAPIResource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    invoke-virtual {p0}, Lcom/stripe/model/StripeCollectionAPIResource;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 56
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->count:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    .local p1, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->data:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setHasMore(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "hasMore"

    .prologue
    .line 36
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->hasMore:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method public setRequestOptions(Lcom/stripe/net/RequestOptions;)V
    .locals 0
    .parameter "requestOptions"

    .prologue
    .line 92
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->requestOptions:Lcom/stripe/net/RequestOptions;

    .line 93
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    .local p1, requestParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->requestParams:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public setTotalCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 30
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->totalCount:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 48
    .local p0, this:Lcom/stripe/model/StripeCollectionAPIResource;,"Lcom/stripe/model/StripeCollectionAPIResource<TT;>;"
    iput-object p1, p0, Lcom/stripe/model/StripeCollectionAPIResource;->url:Ljava/lang/String;

    .line 49
    return-void
.end method
