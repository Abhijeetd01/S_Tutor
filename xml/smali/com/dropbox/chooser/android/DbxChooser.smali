.class public Lcom/dropbox/chooser/android/DbxChooser;
.super Ljava/lang/Object;
.source "DbxChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/chooser/android/DbxChooser$Result;,
        Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    }
.end annotation


# static fields
.field private static final SDK_VERSION:I = 0x2

.field private static final intentResultExtras:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mAppKey:Ljava/lang/String;

.field private mForceNotAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EXTRA_CHOOSER_RESULTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EXTRA_PREVIEW_RESULTS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EXTRA_CONTENT_RESULTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/chooser/android/DbxChooser;->intentResultExtras:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "appKey"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->FILE_CONTENT:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    iget-object v0, v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser;->mAction:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/chooser/android/DbxChooser;->mForceNotAvailable:Z

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An app key must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/dropbox/chooser/android/DbxChooser;->mAppKey:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/dropbox/chooser/android/DbxChooser;->intentResultExtras:[Ljava/lang/String;

    return-object v0
.end method

.method private chooserAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .parameter "pm"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dropbox/chooser/android/DbxChooser;->mForceNotAvailable:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/chooser/android/DbxChooser;->isChooserAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0
.end method

.method private doAppStoreFallback(Lcom/dropbox/chooser/android/ActivityLike;I)V
    .locals 0
    .parameter "thing"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p1}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->showInterstitial(Lcom/dropbox/chooser/android/ActivityLike;)V

    .line 335
    return-void
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dropbox/chooser/android/DbxChooser;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "EXTRA_APP_KEY"

    iget-object v3, p0, Lcom/dropbox/chooser/android/DbxChooser;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_SDK_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    return-object v0
.end method

.method private static isChooserAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 9
    .parameter "pm"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/4 v5, 0x3

    new-array v1, v5, [Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    sget-object v5, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->FILE_CONTENT:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v5, v1, v3

    sget-object v5, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->PREVIEW_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v5, v1, v4

    const/4 v5, 0x2

    sget-object v6, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->DIRECT_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v6, v1, v5

    .line 83
    .local v1, resultTypes:[Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    array-length v6, v1

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 84
    .local v0, resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->action:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 85
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 89
    .end local v0           #resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_1
    return v3

    .line 83
    .restart local v0       #resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0           #resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    move v3, v4

    .line 89
    goto :goto_1
.end method

.method private launch(Lcom/dropbox/chooser/android/ActivityLike;I)V
    .locals 5
    .parameter "thing"
    .parameter "requestCode"

    .prologue
    .line 299
    if-gez p2, :cond_0

    .line 300
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "requestCode must be non-negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_0
    invoke-interface {p1}, Lcom/dropbox/chooser/android/ActivityLike;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Lcom/dropbox/chooser/android/ActivityLike;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 305
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Dropbox Chooser requires Fragments. If below API level 11, pass in a FragmentActivity from the support library."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_1
    invoke-interface {p1}, Lcom/dropbox/chooser/android/ActivityLike;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 310
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 311
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DbxChooser\'s launch() must be called when there is an Activity available"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_2
    invoke-interface {p1}, Lcom/dropbox/chooser/android/ActivityLike;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dropbox/chooser/android/DbxChooser;->chooserAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/dropbox/chooser/android/DbxChooser;->doAppStoreFallback(Lcom/dropbox/chooser/android/ActivityLike;I)V

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_3
    invoke-direct {p0}, Lcom/dropbox/chooser/android/DbxChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 322
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-interface {p1, v1, p2}, Lcom/dropbox/chooser/android/ActivityLike;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/content/ActivityNotFoundException;
    throw v0
.end method


# virtual methods
.method public forResultType(Lcom/dropbox/chooser/android/DbxChooser$ResultType;)Lcom/dropbox/chooser/android/DbxChooser;
    .locals 2
    .parameter "resultType"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An app key must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p1, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser;->mAction:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public launch(Landroid/app/Activity;I)V
    .locals 2
    .parameter "act"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p1

    .line 136
    .local v0, mAct:Landroid/app/Activity;
    new-instance v1, Lcom/dropbox/chooser/android/DbxChooser$1;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/chooser/android/DbxChooser$1;-><init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/app/Activity;)V

    .line 178
    .local v1, thing:Lcom/dropbox/chooser/android/ActivityLike;
    invoke-direct {p0, v1, p2}, Lcom/dropbox/chooser/android/DbxChooser;->launch(Lcom/dropbox/chooser/android/ActivityLike;I)V

    .line 179
    return-void
.end method

.method public launch(Landroid/app/Fragment;I)V
    .locals 2
    .parameter "frag"
    .parameter "requestCode"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p1

    .line 192
    .local v0, mFrag:Landroid/app/Fragment;
    new-instance v1, Lcom/dropbox/chooser/android/DbxChooser$2;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/chooser/android/DbxChooser$2;-><init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/app/Fragment;)V

    .line 238
    .local v1, thing:Lcom/dropbox/chooser/android/ActivityLike;
    invoke-direct {p0, v1, p2}, Lcom/dropbox/chooser/android/DbxChooser;->launch(Lcom/dropbox/chooser/android/ActivityLike;I)V

    .line 239
    return-void
.end method

.method public launch(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .parameter "frag"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p1

    .line 249
    .local v0, mFrag:Landroid/support/v4/app/Fragment;
    new-instance v1, Lcom/dropbox/chooser/android/DbxChooser$3;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/chooser/android/DbxChooser$3;-><init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/support/v4/app/Fragment;)V

    .line 295
    .local v1, thing:Lcom/dropbox/chooser/android/ActivityLike;
    invoke-direct {p0, v1, p2}, Lcom/dropbox/chooser/android/DbxChooser;->launch(Lcom/dropbox/chooser/android/ActivityLike;I)V

    .line 296
    return-void
.end method

.method public pretendNotAvailable()Lcom/dropbox/chooser/android/DbxChooser;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/chooser/android/DbxChooser;->mForceNotAvailable:Z

    .line 120
    return-object p0
.end method
