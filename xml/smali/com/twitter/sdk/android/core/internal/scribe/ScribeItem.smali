.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
.super Ljava/lang/Object;
.source "ScribeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$1;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
    }
.end annotation


# static fields
.field public static final TYPE_MESSAGE:I = 0x6

.field public static final TYPE_TWEET:I = 0x0

.field public static final TYPE_USER:I = 0x3


# instance fields
.field public final cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_event"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final itemType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_type"
    .end annotation
.end field

.field public final mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_details"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;)V
    .locals 0
    .parameter "itemType"
    .parameter "id"
    .parameter "description"
    .parameter "cardEvent"
    .parameter "mediaDetails"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    .line 76
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    .line 77
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    .line 79
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;)V

    return-void
.end method

.method static createCardDetails(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;
    .locals 6
    .parameter "tweetId"
    .parameter "card"

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    const/4 v3, 0x4

    invoke-static {p2}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getPublisherId(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;-><init>(JIJ)V

    return-object v0
.end method

.method static createMediaDetails(JLcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;
    .locals 6
    .parameter "tweetId"
    .parameter "mediaEntity"

    .prologue
    .line 121
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    invoke-static {p2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->getMediaType(Lcom/twitter/sdk/android/core/models/MediaEntity;)I

    move-result v3

    iget-wide v4, p2, Lcom/twitter/sdk/android/core/models/MediaEntity;->id:J

    move-wide v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;-><init>(JIJ)V

    return-object v0
.end method

.method public static fromMediaEntity(JLcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 2
    .parameter "tweetId"
    .parameter "mediaEntity"

    .prologue
    .line 112
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setId(J)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->createMediaDetails(JLcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setMediaDetails(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromMessage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 2
    .parameter "message"

    .prologue
    .line 97
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setDescription(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 4
    .parameter "tweet"

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setId(J)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromTweetCard(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 2
    .parameter "tweetId"
    .parameter "card"

    .prologue
    .line 104
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setId(J)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->createCardDetails(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setMediaDetails(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromUser(Lcom/twitter/sdk/android/core/models/User;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 4
    .parameter "user"

    .prologue
    .line 90
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/models/User;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setId(J)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    return-object v0
.end method

.method static getMediaType(Lcom/twitter/sdk/android/core/models/MediaEntity;)I
    .locals 2
    .parameter "mediaEntity"

    .prologue
    .line 130
    const-string v0, "animated_gif"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x3

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    .line 144
    .local v0, that:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    :cond_5
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    move v2, v1

    goto :goto_0

    .line 144
    :cond_8
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 146
    :cond_9
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 147
    :cond_a
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 149
    :cond_b
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    if-eqz v3, :cond_5

    goto :goto_0

    .line 151
    :cond_c
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    if-nez v3, :cond_6

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->itemType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 158
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 159
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->mediaDetails:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 162
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 157
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 158
    goto :goto_1

    :cond_3
    move v2, v1

    .line 159
    goto :goto_2

    :cond_4
    move v2, v1

    .line 160
    goto :goto_3
.end method
