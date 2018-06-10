.class public Lcom/tune/TuneEvent;
.super Ljava/lang/Object;
.source "TuneEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACHIEVEMENT_UNLOCKED:Ljava/lang/String; = "achievement_unlocked"

.field public static final ADDED_PAYMENT_INFO:Ljava/lang/String; = "added_payment_info"

.field public static final ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final ADD_TO_WISHLIST:Ljava/lang/String; = "add_to_wishlist"

.field public static final CHECKOUT_INITIATED:Ljava/lang/String; = "checkout_initiated"

.field public static final CONTENT_VIEW:Ljava/lang/String; = "content_view"

.field public static final DEVICE_FORM_WEARABLE:Ljava/lang/String; = "wearable"

.field public static final INVITE:Ljava/lang/String; = "invite"

.field public static final LEVEL_ACHIEVED:Ljava/lang/String; = "level_achieved"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final PURCHASE:Ljava/lang/String; = "purchase"

.field public static final RATED:Ljava/lang/String; = "rated"

.field public static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final RESERVATION:Ljava/lang/String; = "reservation"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SPENT_CREDITS:Ljava/lang/String; = "spent_credits"

.field public static final TUTORIAL_COMPLETE:Ljava/lang/String; = "tutorial_complete"

.field private static final invalidTags:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x69b2ddda07481a10L


# instance fields
.field private addedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attribute1:Ljava/lang/String;

.field private attribute2:Ljava/lang/String;

.field private attribute3:Ljava/lang/String;

.field private attribute4:Ljava/lang/String;

.field private attribute5:Ljava/lang/String;

.field private contentId:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private date1:Ljava/util/Date;

.field private date2:Ljava/util/Date;

.field private deviceForm:Ljava/lang/String;

.field private eventId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private eventItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tune/TuneEventItem;",
            ">;"
        }
    .end annotation
.end field

.field private eventName:Ljava/lang/String;

.field private level:I

.field private quantity:I

.field private rating:D

.field private receiptData:Ljava/lang/String;

.field private receiptSignature:Ljava/lang/String;

.field private refId:Ljava/lang/String;

.field private revenue:D

.field private searchString:Ljava/lang/String;

.field private tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "site_event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "revenue"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "currency_code"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "advertiser_ref_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "store_iap_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "store_iap_signature"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "level"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "quantity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "search_string"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rating"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "date2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "attribute_sub1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "attribute_sub2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "attribute_sub3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "attribute_sub4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "attribute_sub5"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tune/TuneEvent;->invalidTags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "eventId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tune/TuneEvent;->tags:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tune/TuneEvent;->addedTags:Ljava/util/Set;

    .line 106
    iput p1, p0, Lcom/tune/TuneEvent;->eventId:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "eventName"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tune/TuneEvent;->tags:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tune/TuneEvent;->addedTags:Ljava/util/Set;

    .line 97
    iput-object p1, p0, Lcom/tune/TuneEvent;->eventName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;
    .locals 4
    .parameter "tag"

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->validateName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->cleanVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, prettyName:Ljava/lang/String;
    sget-object v1, Lcom/tune/TuneEvent;->invalidTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a property, please use the appropriate setter instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/utils/TuneDebugLog;->IAMConfigError(Ljava/lang/String;)V

    .line 398
    .end local v0           #prettyName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 378
    .restart local v0       #prettyName:Ljava/lang/String;
    :cond_1
    const-string v1, "TUNE_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags starting with \'TUNE_\' are reserved, not registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/utils/TuneDebugLog;->IAMConfigError(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/tune/TuneEvent;->addedTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been added to this event, not adding duplicate tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tune/ma/utils/TuneDebugLog;->IAMConfigError(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/tune/TuneEvent;->addedTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/tune/TuneEvent;->tags:Ljava/util/Set;

    .line 391
    invoke-static {v0}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->Builder(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v2

    .line 392
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withValue(Ljava/lang/String;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getType()Lcom/tune/ma/analytics/model/TuneVariableType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withType(Lcom/tune/ma/analytics/model/TuneVariableType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v2

    .line 394
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getHashType()Lcom/tune/ma/analytics/model/TuneHashType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withHash(Lcom/tune/ma/analytics/model/TuneHashType;)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v2

    .line 395
    invoke-virtual {p1}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;->getShouldAutoHash()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->withShouldAutoHash(Z)Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable$TuneAnalyticsVariableBuilder;->build()Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    move-result-object v2

    .line 390
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAttribute1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/tune/TuneEvent;->attribute1:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/tune/TuneEvent;->attribute2:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tune/TuneEvent;->attribute3:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tune/TuneEvent;->attribute4:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/tune/TuneEvent;->attribute5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tune/TuneEvent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tune/TuneEvent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tune/TuneEvent;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDate1()Ljava/util/Date;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/tune/TuneEvent;->date1:Ljava/util/Date;

    return-object v0
.end method

.method public getDate2()Ljava/util/Date;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/tune/TuneEvent;->date2:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/tune/TuneEvent;->deviceForm:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    iget v0, p0, Lcom/tune/TuneEvent;->eventId:I

    return v0
.end method

.method public getEventItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tune/TuneEventItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tune/TuneEvent;->eventItems:Ljava/util/List;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/tune/TuneEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/tune/TuneEvent;->level:I

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/tune/TuneEvent;->quantity:I

    return v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/tune/TuneEvent;->rating:D

    return-wide v0
.end method

.method public getReceiptData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/tune/TuneEvent;->receiptData:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/tune/TuneEvent;->receiptSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getRefId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tune/TuneEvent;->refId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()D
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/tune/TuneEvent;->revenue:D

    return-wide v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tune/TuneEvent;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tune/TuneEvent;->tags:Ljava/util/Set;

    return-object v0
.end method

.method public withAdvertiserRefId(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "refId"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tune/TuneEvent;->refId:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withAttribute1(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "attribute1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/tune/TuneEvent;->attribute1:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public withAttribute2(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "attribute2"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tune/TuneEvent;->attribute2:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public withAttribute3(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "attribute3"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tune/TuneEvent;->attribute3:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public withAttribute4(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "attribute4"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tune/TuneEvent;->attribute4:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public withAttribute5(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "attribute5"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tune/TuneEvent;->attribute5:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public withContentId(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "contentId"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tune/TuneEvent;->contentId:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "contentType"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tune/TuneEvent;->contentType:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public withCurrencyCode(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "currencyCode"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tune/TuneEvent;->currencyCode:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public withDate1(Ljava/util/Date;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "date1"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tune/TuneEvent;->date1:Ljava/util/Date;

    .line 228
    return-object p0
.end method

.method public withDate2(Ljava/util/Date;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "date2"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tune/TuneEvent;->date2:Ljava/util/Date;

    .line 238
    return-object p0
.end method

.method public withDeviceForm(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "deviceForm"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tune/TuneEvent;->deviceForm:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public withEventItems(Ljava/util/List;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tune/TuneEventItem;",
            ">;)",
            "Lcom/tune/TuneEvent;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/tune/TuneEventItem;>;"
    iput-object p1, p0, Lcom/tune/TuneEvent;->eventItems:Ljava/util/List;

    .line 146
    return-object p0
.end method

.method public withLevel(I)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "level"

    .prologue
    .line 187
    iput p1, p0, Lcom/tune/TuneEvent;->level:I

    .line 188
    return-object p0
.end method

.method public withQuantity(I)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "quantity"

    .prologue
    .line 197
    iput p1, p0, Lcom/tune/TuneEvent;->quantity:I

    .line 198
    return-object p0
.end method

.method public withRating(D)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "rating"

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/tune/TuneEvent;->rating:D

    .line 218
    return-object p0
.end method

.method public withReceipt(Ljava/lang/String;Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "receiptData"
    .parameter "receiptSignature"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tune/TuneEvent;->receiptData:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/tune/TuneEvent;->receiptSignature:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public withRevenue(D)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "revenue"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/tune/TuneEvent;->revenue:D

    .line 116
    return-object p0
.end method

.method public withSearchString(Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 0
    .parameter "searchString"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tune/TuneEvent;->searchString:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public withTagAsDate(Ljava/lang/String;Ljava/util/Date;)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 362
    const-string v0, "withTagAsDate"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v0, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lcom/tune/TuneEvent;->addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;

    move-result-object p0

    goto :goto_0
.end method

.method public withTagAsNumber(Ljava/lang/String;D)Lcom/tune/TuneEvent;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 336
    const-string v0, "withTagAsNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v0, p1, p2, p3}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;D)V

    invoke-direct {p0, v0}, Lcom/tune/TuneEvent;->addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;

    move-result-object p0

    goto :goto_0
.end method

.method public withTagAsNumber(Ljava/lang/String;F)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 349
    const-string v0, "withTagAsNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v0, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;F)V

    invoke-direct {p0, v0}, Lcom/tune/TuneEvent;->addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;

    move-result-object p0

    goto :goto_0
.end method

.method public withTagAsNumber(Ljava/lang/String;I)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 323
    const-string v0, "withTagAsNumber"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v0, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/tune/TuneEvent;->addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;

    move-result-object p0

    goto :goto_0
.end method

.method public withTagAsString(Ljava/lang/String;Ljava/lang/String;)Lcom/tune/TuneEvent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 310
    const-string v0, "withTagAsString"

    invoke-static {v0}, Lcom/tune/ma/TuneManager;->getProfileForUser(Ljava/lang/String;)Lcom/tune/ma/profile/TuneUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;

    invoke-direct {v0, p1, p2}, Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tune/TuneEvent;->addTag(Lcom/tune/ma/analytics/model/TuneAnalyticsVariable;)Lcom/tune/TuneEvent;

    move-result-object p0

    goto :goto_0
.end method
