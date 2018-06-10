.class public Lcom/twitter/sdk/android/core/TwitterSession;
.super Lcom/twitter/sdk/android/core/Session;
.source "TwitterSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/TwitterSession$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Session",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNKNOWN_USER_ID:J = -0x1L

.field public static final UNKNOWN_USER_NAME:Ljava/lang/String; = ""


# instance fields
.field private final userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V
    .locals 0
    .parameter "authToken"
    .parameter "userId"
    .parameter "userName"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/Session;-><init>(Lcom/twitter/sdk/android/core/AuthToken;J)V

    .line 47
    iput-object p4, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 61
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

    .line 62
    :cond_3
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/Session;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 66
    .local v0, that:Lcom/twitter/sdk/android/core/TwitterSession;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterSession;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/twitter/sdk/android/core/Session;->hashCode()I

    move-result v0

    .line 73
    .local v0, result:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterSession;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 74
    return v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
