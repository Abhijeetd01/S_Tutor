.class public Lcom/twitter/sdk/android/core/TwitterAuthToken;
.super Lcom/twitter/sdk/android/core/AuthToken;
.source "TwitterAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final secret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secret"
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthToken$1;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/TwitterAuthToken$1;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/AuthToken;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/TwitterAuthToken$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "secret"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/AuthToken;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "token"
    .parameter "secret"
    .parameter "createdAt"

    .prologue
    .line 55
    invoke-direct {p0, p3, p4}, Lcom/twitter/sdk/android/core/AuthToken;-><init>(J)V

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    instance-of v3, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 98
    .local v0, that:Lcom/twitter/sdk/android/core/TwitterAuthToken;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 99
    :cond_5
    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 107
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 108
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
