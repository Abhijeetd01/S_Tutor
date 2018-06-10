.class public Lcom/stripe/model/Token;
.super Lcom/stripe/net/APIResource;
.source "Token.java"

# interfaces
.implements Lcom/stripe/model/HasId;


# instance fields
.field amount:Ljava/lang/Integer;

.field bankAccount:Lcom/stripe/model/BankAccount;

.field card:Lcom/stripe/model/Card;

.field clientIp:Ljava/lang/String;

.field created:Ljava/lang/Long;

.field currency:Ljava/lang/String;

.field email:Ljava/lang/String;

.field id:Ljava/lang/String;

.field livemode:Ljava/lang/Boolean;

.field type:Ljava/lang/String;

.field used:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/stripe/net/APIResource;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/stripe/model/Token;
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
            "Lcom/stripe/model/Token;"
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
    .line 117
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Token;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;
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
            "Lcom/stripe/model/Token;"
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
    .line 135
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->POST:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Token;

    invoke-static {v1}, Lcom/stripe/model/Token;->classURL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/stripe/model/Token;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/stripe/model/Token;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Token;

    return-object v0
.end method

.method public static create(Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/model/Token;
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
            "Lcom/stripe/model/Token;"
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
    .line 130
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Token;->create(Ljava/util/Map;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;)Lcom/stripe/model/Token;
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
    .line 123
    const/4 v0, 0x0

    check-cast v0, Lcom/stripe/net/RequestOptions;

    invoke-static {p0, v0}, Lcom/stripe/model/Token;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;
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
    .line 147
    sget-object v0, Lcom/stripe/net/APIResource$RequestMethod;->GET:Lcom/stripe/net/APIResource$RequestMethod;

    const-class v1, Lcom/stripe/model/Token;

    invoke-static {v1, p0}, Lcom/stripe/model/Token;->instanceURL(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/stripe/model/Token;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/stripe/model/Token;->request(Lcom/stripe/net/APIResource$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/stripe/net/RequestOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/model/Token;

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/model/Token;
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
    .line 142
    invoke-static {}, Lcom/stripe/net/RequestOptions;->builder()Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->setApiKey(Ljava/lang/String;)Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/net/RequestOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stripe/model/Token;->retrieve(Ljava/lang/String;Lcom/stripe/net/RequestOptions;)Lcom/stripe/model/Token;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/stripe/model/Token;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBankAccount()Lcom/stripe/model/BankAccount;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stripe/model/Token;->bankAccount:Lcom/stripe/model/BankAccount;

    return-object v0
.end method

.method public getCard()Lcom/stripe/model/Card;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/stripe/model/Token;->card:Lcom/stripe/model/Card;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/stripe/model/Token;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/stripe/model/Token;->created:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stripe/model/Token;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stripe/model/Token;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/stripe/model/Token;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLivemode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/stripe/model/Token;->livemode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/stripe/model/Token;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stripe/model/Token;->used:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/stripe/model/Token;->amount:Ljava/lang/Integer;

    .line 32
    return-void
.end method

.method public setBankAccount(Lcom/stripe/model/BankAccount;)V
    .locals 0
    .parameter "bankAccount"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/stripe/model/Token;->bankAccount:Lcom/stripe/model/BankAccount;

    .line 112
    return-void
.end method

.method public setCard(Lcom/stripe/model/Card;)V
    .locals 0
    .parameter "card"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/stripe/model/Token;->card:Lcom/stripe/model/Card;

    .line 104
    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0
    .parameter "clientIp"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/stripe/model/Token;->clientIp:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCreated(Ljava/lang/Long;)V
    .locals 0
    .parameter "created"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/stripe/model/Token;->created:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/stripe/model/Token;->currency:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/stripe/model/Token;->email:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/stripe/model/Token;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLivemode(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "livemode"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/stripe/model/Token;->livemode:Ljava/lang/Boolean;

    .line 88
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/stripe/model/Token;->type:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUsed(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "used"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/stripe/model/Token;->used:Ljava/lang/Boolean;

    .line 96
    return-void
.end method
