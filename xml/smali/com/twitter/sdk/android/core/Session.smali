.class public Lcom/twitter/sdk/android/core/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/AuthToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final authToken:Lcom/twitter/sdk/android/core/AuthToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/AuthToken;J)V
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/twitter/sdk/android/core/Session;,"Lcom/twitter/sdk/android/core/Session<TT;>;"
    .local p1, authToken:Lcom/twitter/sdk/android/core/AuthToken;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthToken must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    .line 38
    iput-wide p2, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    .local p0, this:Lcom/twitter/sdk/android/core/Session;,"Lcom/twitter/sdk/android/core/Session<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/twitter/sdk/android/core/Session;

    .line 56
    .local v0, session:Lcom/twitter/sdk/android/core/Session;
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    iget-wide v6, v0, Lcom/twitter/sdk/android/core/Session;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    iget-object v2, v0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/twitter/sdk/android/core/Session;,"Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 46
    .local p0, this:Lcom/twitter/sdk/android/core/Session;,"Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 62
    .local p0, this:Lcom/twitter/sdk/android/core/Session;,"Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 63
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    iget-wide v4, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 64
    return v0

    .line 62
    .end local v0           #result:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
