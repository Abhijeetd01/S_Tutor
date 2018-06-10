.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
.super Ljava/lang/Object;
.source "ScribeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardEvent"
.end annotation


# instance fields
.field final promotionCardType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotion_card_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "cardType"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    .line 171
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 179
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

    .line 180
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    .line 181
    .local v0, cardEvent:Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
    iget v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    iget v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    return v0
.end method
