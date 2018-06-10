.class Lcom/dropbox/chooser/android/AppStoreInterstitial;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;,
        Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;
    }
.end annotation


# static fields
.field private static final APPROX_STATUSBAR_HEIGHT_DP:I = 0x19

.field public static final DIALOG_TAG:Ljava/lang/String; = "com.dropbox.chooser.android.DIALOG"

.field private static final DLG_PADDING_DP:I = 0xa

.field private static final DROPBOX_PACKAGE_NAME:Ljava/lang/String; = "com.dropbox.android"

.field private static final MAX_DIALOG_HEIGHT_DP:I = 0x2bc

.field private static final MAX_DIALOG_WIDTH_DP:I = 0x24e


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->isDropboxInstalled(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->setStrings(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->launchMarket(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/Window;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->centerWindow(Landroid/view/Window;)V

    return-void
.end method

.method private static centerWindow(Landroid/view/Window;)V
    .locals 10
    .parameter "w"

    .prologue
    .line 130
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 132
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v8, 0x41a0

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    const v8, 0x44138000

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 136
    .local v4, width:I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v8, 0x4234

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x442f

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    .local v1, height:I
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 140
    .local v5, x:I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v1

    const/high16 v8, 0x41c8

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 142
    .local v6, y:I
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 144
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 147
    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 148
    const/16 v7, 0x33

    invoke-virtual {p0, v7}, Landroid/view/Window;->setGravity(I)V

    .line 149
    return-void
.end method

.method private static isDropboxInstalled(Landroid/app/Activity;)Z
    .locals 5
    .parameter "act"

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.dropbox.android"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static launchMarket(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "market://details?id=com.dropbox.android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method private static setStrings(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "needUpdate"

    .prologue
    .line 152
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_install_title:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    .local v4, title:Landroid/widget/TextView;
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_install_main:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, main:Landroid/widget/TextView;
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_install_sub:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, sub:Landroid/widget/TextView;
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_bottom_bar_ok_button:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 156
    .local v2, okButton:Landroid/widget/Button;
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_bottom_bar_cancel_button:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    .local v0, cancelButton:Landroid/widget/Button;
    if-eqz p1, :cond_0

    .line 159
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_update:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 160
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_update_main:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 161
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_update_sub:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 162
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_update_button_ok:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 170
    :goto_0
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_install_button_cancel:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 171
    return-void

    .line 165
    :cond_0
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_install:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 166
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_install_main:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 167
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_install_sub:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 168
    sget v5, Lcom/dropbox/chooser/android/R$string;->dbx_install_button_ok:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public static showInterstitial(Lcom/dropbox/chooser/android/ActivityLike;)V
    .locals 3
    .parameter "thing"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p0}, Lcom/dropbox/chooser/android/ActivityLike;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {}, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;->newInstance()Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;

    move-result-object v1

    .line 35
    .local v1, frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;
    invoke-interface {p0}, Lcom/dropbox/chooser/android/ActivityLike;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 36
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    const-string v2, "com.dropbox.chooser.android.DIALOG"

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    .end local v0           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v1           #frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->newInstance()Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

    move-result-object v1

    .line 39
    .local v1, frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;
    invoke-interface {p0}, Lcom/dropbox/chooser/android/ActivityLike;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 40
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "com.dropbox.chooser.android.DIALOG"

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
