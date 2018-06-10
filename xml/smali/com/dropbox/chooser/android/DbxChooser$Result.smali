.class public Lcom/dropbox/chooser/android/DbxChooser$Result;
.super Ljava/lang/Object;
.source "DbxChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/chooser/android/DbxChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/dropbox/chooser/android/DbxChooser$Result;->mIntent:Landroid/content/Intent;

    .line 361
    return-void
.end method

.method private getResults()[Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 457
    iget-object v4, p0, Lcom/dropbox/chooser/android/DbxChooser$Result;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 458
    new-array v1, v5, [Landroid/os/Bundle;

    .line 470
    :cond_0
    :goto_0
    return-object v1

    .line 460
    :cond_1
    invoke-static {}, Lcom/dropbox/chooser/android/DbxChooser;->access$000()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    .line 461
    .local v2, resultExtra:Ljava/lang/String;
    iget-object v8, p0, Lcom/dropbox/chooser/android/DbxChooser$Result;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 462
    .local v3, results:[Landroid/os/Parcelable;
    if-eqz v3, :cond_2

    .line 463
    array-length v4, v3

    new-array v1, v4, [Landroid/os/Bundle;

    .line 464
    .local v1, resultBundles:[Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 465
    aget-object v4, v3, v0

    check-cast v4, Landroid/os/Bundle;

    aput-object v4, v1, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 460
    .end local v0           #i:I
    .end local v1           #resultBundles:[Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 470
    .end local v2           #resultExtra:Ljava/lang/String;
    .end local v3           #results:[Landroid/os/Parcelable;
    :cond_3
    new-array v1, v5, [Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getResults()[Landroid/os/Bundle;

    move-result-object v0

    .line 433
    .local v0, results:[Landroid/os/Bundle;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 436
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0
.end method

.method public getLink()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getResults()[Landroid/os/Bundle;

    move-result-object v0

    .line 375
    .local v0, results:[Landroid/os/Bundle;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 378
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getResults()[Landroid/os/Bundle;

    move-result-object v0

    .line 388
    .local v0, results:[Landroid/os/Bundle;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 391
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSize()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 445
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getResults()[Landroid/os/Bundle;

    move-result-object v0

    .line 446
    .local v0, results:[Landroid/os/Bundle;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 449
    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v4, "bytes"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getThumbnails()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getResults()[Landroid/os/Bundle;

    move-result-object v1

    .line 412
    .local v1, results:[Landroid/os/Bundle;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 423
    :cond_0
    return-object v2

    .line 415
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const-string v5, "thumbnails"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 416
    .local v3, thumbsBundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v2, thumbs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
