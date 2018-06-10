.class public Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;
.super Ljava/lang/Object;
.source "CardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$1;,
        Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;,
        Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;
    }
.end annotation


# static fields
.field private static serializer:Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;


# instance fields
.field public final appCountry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:app:country"
    .end annotation
.end field

.field public final appGooglePlayId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:app:id:googleplay"
    .end annotation
.end field

.field public final appIPadId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:app:id:ipad"
    .end annotation
.end field

.field public final appIPhoneId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:app:id:iphone"
    .end annotation
.end field

.field public final callToAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:text:cta"
    .end annotation
.end field

.field public final card:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:card"
    .end annotation
.end field

.field public final cardData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:card_data"
    .end annotation
.end field

.field public final ctaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:cta_key"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:description"
    .end annotation
.end field

.field public final deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:text:did_value"
    .end annotation
.end field

.field public final image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:image"
    .end annotation
.end field

.field public final site:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter:site"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "card"
    .parameter "image"
    .parameter "site"
    .parameter "description"
    .parameter "cardData"
    .parameter "callToAction"
    .parameter "ctaKey"
    .parameter "deviceId"
    .parameter "appIPhoneId"
    .parameter "appIPadId"
    .parameter "appGooglePlayId"
    .parameter "appCountry"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->card:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->image:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->site:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->description:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->cardData:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->callToAction:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->ctaKey:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->deviceId:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->appIPhoneId:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->appIPadId:Ljava/lang/String;

    .line 42
    iput-object p11, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->appGooglePlayId:Ljava/lang/String;

    .line 43
    iput-object p12, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->appCountry:Ljava/lang/String;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p12}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getSerializer()Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->serializer:Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->serializer:Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;

    .line 86
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->serializer:Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;->getSerializer()Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;->serialize(Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
