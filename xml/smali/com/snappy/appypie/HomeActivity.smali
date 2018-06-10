.class public Lcom/snappy/appypie/HomeActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;
.implements Lcom/radiusnetworks/ibeacon/IBeaconConsumer;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;,
        Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;
    }
.end annotation


# static fields
.field public static ADMOB_AD_BANNER_ID:Ljava/lang/String; = null

.field public static ADMOB_AD_INTERSTITIAL:Ljava/lang/String; = null

.field static final APP_KEY:Ljava/lang/String; = "10nuw2spys824y3"

.field public static AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type; = null

.field public static AudioPlayerValue:Ljava/lang/String; = null

.field public static Audiolist:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final DBX_CHOOSER_REQUEST:I = 0x3fe

.field public static ExoRadioPlayerActivityisExists:Z = false

.field private static final LOCATION_SERVICE_CODE_REQUEST:I = 0xb24d

.field public static final MyPREFERENCES:Ljava/lang/String; = "MyPrefs"

.field static PERMISSIONS_JS_REQUEST:I

.field static PERMISSIONS_MAIN_ACCESS:I

.field static PERMISSIONS_REQUEST_ACTION:I

.field static PERMISSIONS_REQUEST_PAGES:I

.field public static Pub_ip:Ljava/lang/String;

.field public static Videolist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static adsID:Ljava/lang/String;

.field public static appId:Ljava/lang/String;

.field private static appInfo:Ljava/lang/String;

.field public static apphorizotalAcc:Ljava/lang/String;

.field public static applatitude:Ljava/lang/String;

.field public static applongititude:Ljava/lang/String;

.field public static audioposition:I

.field public static baseUrl:Ljava/lang/String;

.field public static cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

.field static countrycodeval:Ljava/lang/String;

.field static countryname:Ljava/lang/String;

.field private static deviceInfo:Ljava/lang/String;

.field public static isAudioPlayerAlive:Z

.field public static isExoPlayerVideoEnabled:Z

.field public static isM3uPls:Z

.field public static jsonDataOfVideo:Ljava/lang/String;

.field public static locationData:Lcom/snappy/appypie/utils/LocationData;

.field public static pageIdentifire:Ljava/lang/String;

.field public static pageIdentify:Ljava/lang/String;

.field public static pageIdentifyId:Ljava/lang/String;

.field public static share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

.field public static staticAppName:Ljava/lang/String;

.field public static staticbackgroundName:Ljava/lang/String;

.field public static videoposition:I


# instance fields
.field private ExtraNotifVal:Ljava/lang/String;

.field protected FailedCallBack:Ljava/lang/String;

.field private Noticationopened:Ljava/lang/String;

.field private ResDeliverOrderStatus:Ljava/lang/String;

.field private RrestaurantrderStatus:Ljava/lang/String;

.field protected SuccessCallback:Ljava/lang/String;

.field TaxiName:Ljava/lang/String;

.field private admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

.field allcdMillis:J

.field private appDomainValue:Ljava/lang/String;

.field appypieCallback:Lcom/snappy/appypie/utils/AppypieCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snappy/appypie/utils/AppypieCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private beaconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private captured_image_uri:Landroid/net/Uri;

.field private cdDateAllFormat:Ljava/util/Date;

.field private cdDateFormat:Ljava/util/Date;

.field cdMillis:J

.field private checkNotifyTextAfterBefore:Ljava/lang/String;

.field checkdevicebackclick:Ljava/lang/String;

.field dropboxResult:Lorg/json/JSONObject;

.field private fl_forFragment:Landroid/widget/FrameLayout;

.field private iBeaconManager:Lcom/radiusnetworks/ibeacon/IBeaconManager;

.field private intent:Landroid/content/Intent;

.field isAdsPaused:Z

.field private isBeacon:Z

.field private isFileDownloading:Z

.field isMainPermissionLoaded:Ljava/lang/Boolean;

.field private isOnPause:Z

.field languagesettingpressExit:Ljava/lang/String;

.field private mChooser:Lcom/dropbox/chooser/android/DbxChooser;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private pageType:Ljava/lang/String;

.field private paymentId:Ljava/lang/String;

.field paymentStatus:I

.field protected permissionManager:Lcom/snappy/appypie/PermissionManager;

.field private plan:Ljava/lang/String;

.field private prevVersion:Ljava/lang/String;

.field resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field private signupPaymentCheck:Ljava/lang/String;

.field private soIntent:Landroid/content/Intent;

.field private startFragmentActivityIntent:Landroid/content/Intent;

.field validationError:Ljava/lang/String;

.field private webViewFragment:Lcom/snappy/appypie/WebViewFragment;

.field private websideLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    const/16 v0, 0x11c4

    sput v0, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_MAIN_ACCESS:I

    .line 196
    const/16 v0, 0x1186

    sput v0, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    .line 197
    const/16 v0, 0x19b

    sput v0, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_ACTION:I

    .line 198
    const v0, 0xa029

    sput v0, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_JS_REQUEST:I

    .line 209
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->AudioPlayerValue:Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/snappy/appypie/advertisement/Ads_req_type;->NOADS:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    .line 214
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->jsonDataOfVideo:Ljava/lang/String;

    .line 219
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    .line 220
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_INTERSTITIAL:Ljava/lang/String;

    .line 224
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    .line 234
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 235
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    .line 236
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->staticAppName:Ljava/lang/String;

    .line 237
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->staticbackgroundName:Ljava/lang/String;

    .line 238
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->pageIdentify:Ljava/lang/String;

    .line 239
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->pageIdentifyId:Ljava/lang/String;

    .line 250
    sput-boolean v1, Lcom/snappy/appypie/HomeActivity;->isM3uPls:Z

    .line 251
    sput v1, Lcom/snappy/appypie/HomeActivity;->videoposition:I

    .line 252
    sput v1, Lcom/snappy/appypie/HomeActivity;->audioposition:I

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->Audiolist:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    .line 256
    sput-boolean v1, Lcom/snappy/appypie/HomeActivity;->isAudioPlayerAlive:Z

    .line 257
    sput-boolean v1, Lcom/snappy/appypie/HomeActivity;->ExoRadioPlayerActivityisExists:Z

    .line 258
    sput-boolean v1, Lcom/snappy/appypie/HomeActivity;->isExoPlayerVideoEnabled:Z

    .line 271
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->pageIdentifire:Ljava/lang/String;

    .line 373
    sput-object v2, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;

    .line 374
    sput-object v2, Lcom/snappy/appypie/HomeActivity;->countrycodeval:Ljava/lang/String;

    .line 5177
    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->Pub_ip:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->adsID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->appDomainValue:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;

    .line 213
    const-string v0, "0"

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->checkdevicebackclick:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->beaconList:Ljava/util/List;

    .line 232
    invoke-static {p0}, Lcom/radiusnetworks/ibeacon/IBeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lcom/radiusnetworks/ibeacon/IBeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->iBeaconManager:Lcom/radiusnetworks/ibeacon/IBeaconManager;

    .line 233
    iput-boolean v1, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    .line 246
    iput-object v2, p0, Lcom/snappy/appypie/HomeActivity;->webViewFragment:Lcom/snappy/appypie/WebViewFragment;

    .line 247
    iput-boolean v1, p0, Lcom/snappy/appypie/HomeActivity;->isFileDownloading:Z

    .line 259
    new-instance v0, Lcom/snappy/appypie/PermissionManager;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/PermissionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;

    .line 264
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->isMainPermissionLoaded:Ljava/lang/Boolean;

    .line 265
    iput-object v2, p0, Lcom/snappy/appypie/HomeActivity;->startFragmentActivityIntent:Landroid/content/Intent;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->ResDeliverOrderStatus:Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    iput v0, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->validationError:Ljava/lang/String;

    .line 747
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->plan:Ljava/lang/String;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->paymentId:Ljava/lang/String;

    .line 1412
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->signupPaymentCheck:Ljava/lang/String;

    .line 1413
    iput v1, p0, Lcom/snappy/appypie/HomeActivity;->paymentStatus:I

    .line 5199
    new-instance v0, Lcom/snappy/appypie/HomeActivity$7;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/HomeActivity$7;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->appypieCallback:Lcom/snappy/appypie/utils/AppypieCallback;

    .line 5357
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->TaxiName:Ljava/lang/String;

    .line 5465
    iput-boolean v1, p0, Lcom/snappy/appypie/HomeActivity;->isAdsPaused:Z

    return-void
.end method

.method private CreateAdmob()V
    .locals 4

    .prologue
    .line 5126
    :try_start_0
    const-string v1, "Monetize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Inst "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_INTERSTITIAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 5128
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->ShowBannerAdmob(Ljava/lang/String;)V

    .line 5129
    :cond_0
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_INTERSTITIAL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 5130
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_INTERSTITIAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->CreateInterstitialAdmob(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5134
    :cond_1
    :goto_0
    return-void

    .line 5131
    :catch_0
    move-exception v0

    .line 5132
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private GetRegGCM()V
    .locals 3

    .prologue
    .line 5227
    new-instance v1, Lcom/snappy/appypie/HomeActivity$8;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$8;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    .line 5234
    .local v1, intface:Lcom/snappy/appypie/OntaskCompleted;
    new-instance v0, Lcom/snappy/appypie/pushNotification/GCMRegister;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/pushNotification/GCMRegister;-><init>(Landroid/content/Context;)V

    .line 5235
    .local v0, gcm:Lcom/snappy/appypie/pushNotification/GCMRegister;
    iput-object v1, v0, Lcom/snappy/appypie/pushNotification/GCMRegister;->Listener:Lcom/snappy/appypie/OntaskCompleted;

    .line 5236
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snappy/appypie/pushNotification/GCMRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5237
    return-void
.end method

.method private InitializeMat()V
    .locals 5

    .prologue
    .line 348
    :try_start_0
    sget-object v2, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "appData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "appyjumpPromotion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 349
    .local v0, appyjumpProm:Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    if-ne v2, v3, :cond_0

    .line 351
    const-string v2, "advertiserId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "conversionKey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/tune/Tune;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tune/Tune;

    .line 352
    invoke-static {}, Lcom/tune/Tune;->getInstance()Lcom/tune/Tune;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tune/Tune;->setAndroidId(Ljava/lang/String;)V

    .line 353
    const-string v2, "Mat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mat value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tune/Tune;->getInstance()Lcom/tune/Tune;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tune/Tune;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0           #appyjumpProm:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const-string v2, "Mat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private NetworkChangeBroadcast()V
    .locals 2

    .prologue
    .line 5137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 5138
    new-instance v0, Lcom/snappy/appypie/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/HomeActivity$6;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5146
    return-void
.end method

.method private SetOrientation()V
    .locals 5

    .prologue
    .line 5294
    :try_start_0
    const-string v0, ""

    .line 5295
    .local v0, LayoutReq:Ljava/lang/String;
    sget-object v2, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "appData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "setOrientations"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5296
    const-string v2, "HomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5298
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/snappy/appypie/HomeActivity;->setRequestedOrientation(I)V

    .line 5307
    .end local v0           #LayoutReq:Ljava/lang/String;
    :goto_0
    return-void

    .line 5300
    .restart local v0       #LayoutReq:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/snappy/appypie/HomeActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5301
    .end local v0           #LayoutReq:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5302
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation Exception  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ShowHomePageAds()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 5312
    const-string v0, "Monetize"

    const-string v1, "Show Ads "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    new-instance v0, Lcom/snappy/appypie/HomeActivity$10;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/HomeActivity$10;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5348
    return-void
.end method

.method private StartGeofence(Ljava/lang/String;)V
    .locals 6
    .parameter "val"

    .prologue
    .line 627
    const-string v3, "GeofenceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofences val "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 631
    .local v2, geofenceData:Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 632
    .local v0, defaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "geofenceVal"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 633
    const-string v3, "GeofenceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofences length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fencingData"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v3, "fencingData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 635
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/snappy/appypie/geofences/GeofenceService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/snappy/appypie/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v0           #defaultSharedPreferences:Landroid/content/SharedPreferences;
    .end local v2           #geofenceData:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v1

    .line 638
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "geofence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to Extract value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private TaxiActivity(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 5433
    return-void
.end method

.method private UpdateJSON()V
    .locals 3

    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/webservices/Manifast.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/snappy/appypie/HomeActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/snappy/appypie/HomeActivity$3;-><init>(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 539
    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method private VerifyNoticationopened()V
    .locals 3

    .prologue
    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "frompushnotification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 692
    :try_start_1
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraValues"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->ExtraNotifVal:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 705
    const-string v1, "false"

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;

    .line 708
    :cond_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v1, "HomeActivity"

    const-string v2, "No Extra value "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 698
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 700
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v1, "false"

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;

    .line 701
    const-string v1, "HomeActivity"

    const-string v2, "Normal start up "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->writeManifestJSON(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p5}, Lcom/snappy/appypie/HomeActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/snappy/appypie/HomeActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/snappy/appypie/HomeActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->loadUpdatedAppJson()V

    return-void
.end method

.method static synthetic access$1300(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->requestforpermission()V

    return-void
.end method

.method static synthetic access$1400(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->GetRegGCM()V

    return-void
.end method

.method static synthetic access$1500(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->initManifestFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->ShowHomePageAds()V

    return-void
.end method

.method static synthetic access$1900(Lcom/snappy/appypie/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    return v0
.end method

.method static synthetic access$1902(Lcom/snappy/appypie/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    return p1
.end method

.method static synthetic access$200(Lcom/snappy/appypie/HomeActivity;)Lcom/dropbox/chooser/android/DbxChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mChooser:Lcom/dropbox/chooser/android/DbxChooser;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/snappy/appypie/HomeActivity;Lcom/dropbox/chooser/android/DbxChooser;)Lcom/dropbox/chooser/android/DbxChooser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->mChooser:Lcom/dropbox/chooser/android/DbxChooser;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->signupPaymentCheck:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/snappy/appypie/HomeActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/snappy/appypie/HomeActivity;Lcom/anjlab/android/iab/v3/BillingProcessor;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->paymentId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->facebookInitialization()V

    return-void
.end method

.method static synthetic access$2500(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->getGPSLocation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->TaxiActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->StartGeofence(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/snappy/appypie/HomeActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->registerForGCMDeviceToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->NetworkChangeBroadcast()V

    return-void
.end method

.method static synthetic access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/snappy/appypie/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->CreateAdmob()V

    return-void
.end method

.method static synthetic access$3200(Lcom/snappy/appypie/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isOnPause:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/snappy/appypie/HomeActivity;)Lcom/snappy/appypie/WebViewFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->webViewFragment:Lcom/snappy/appypie/WebViewFragment;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/snappy/appypie/HomeActivity;Lcom/snappy/appypie/WebViewFragment;)Lcom/snappy/appypie/WebViewFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->webViewFragment:Lcom/snappy/appypie/WebViewFragment;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/snappy/appypie/HomeActivity;->soFileDownloader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3502(Lcom/snappy/appypie/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/snappy/appypie/HomeActivity;->isFileDownloading:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->soIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->soIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/snappy/appypie/HomeActivity;Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->startAsyncTaskInParallel(Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;)V

    return-void
.end method

.method static synthetic access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/snappy/appypie/HomeActivity;)Lcom/facebook/CallbackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/snappy/appypie/HomeActivity;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/snappy/appypie/HomeActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->captured_image_uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/snappy/appypie/HomeActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->captured_image_uri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/snappy/appypie/HomeActivity;)Lcom/snappy/appypie/advertisement/googleAdmob/Admob;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    return-object v0
.end method

.method static synthetic access$802(Lcom/snappy/appypie/HomeActivity;Lcom/snappy/appypie/advertisement/googleAdmob/Admob;)Lcom/snappy/appypie/advertisement/googleAdmob/Admob;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    return-object p1
.end method

.method static synthetic access$900(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$902(Lcom/snappy/appypie/HomeActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;

    return-object p1
.end method

.method private alertDialog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .parameter "message"
    .parameter "hint"
    .parameter "fb_id"
    .parameter "name"

    .prologue
    .line 5090
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5091
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5092
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5093
    .local v3, input:Landroid/widget/EditText;
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5094
    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 5095
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5097
    const-string v7, "OK"

    new-instance v1, Lcom/snappy/appypie/HomeActivity$5;

    move-object v2, p0

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/snappy/appypie/HomeActivity$5;-><init>(Lcom/snappy/appypie/HomeActivity;Landroid/widget/EditText;JLjava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5110
    return-void
.end method

.method public static arrayToJson(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a primitive data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1267
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 1268
    .local v2, length:I
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1269
    .local v1, jsonArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1271
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/snappy/appypie/HomeActivity;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1274
    :cond_1
    return-object v1
.end method

.method private checkAdvtDetails()V
    .locals 8

    .prologue
    const/4 v5, 0x5

    .line 1013
    :try_start_0
    sget-object v3, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "appData"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1014
    .local v0, appData:Lorg/json/JSONObject;
    const-string v3, "plan"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, plan:Ljava/lang/String;
    const-string v3, "appMobIdBanner"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    .line 1016
    const-string v3, "appMobIdInterstitial"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_INTERSTITIAL:Ljava/lang/String;

    .line 1018
    const-string v3, "appBandwidthExceeded"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    sget-object v3, Lcom/snappy/appypie/advertisement/Ads_req_type;->NOADS:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    .line 1044
    .end local v0           #appData:Lorg/json/JSONObject;
    .end local v2           #plan:Ljava/lang/String;
    :goto_0
    return-void

    .line 1024
    .restart local v0       #appData:Lorg/json/JSONObject;
    .restart local v2       #plan:Ljava/lang/String;
    :cond_0
    const-string v3, "free"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1026
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->durationAppDuration()J

    move-result-wide v4

    const-wide/32 v6, 0x5cb2780

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1027
    sget-object v3, Lcom/snappy/appypie/advertisement/Ads_req_type;->APPYJUMPVISIBLE:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    .line 1040
    :cond_1
    :goto_1
    const-string v3, "Monetization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    .end local v0           #appData:Lorg/json/JSONObject;
    .end local v2           #plan:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1042
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HomeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1030
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #appData:Lorg/json/JSONObject;
    .restart local v2       #plan:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "appyjumpAndroid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "blockDeviceType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "appBandwidthExceeded"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1031
    :cond_3
    sget-object v3, Lcom/snappy/appypie/advertisement/Ads_req_type;->APPYJUMPVISIBLE:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    goto :goto_1

    .line 1034
    :cond_4
    const-string v3, "appMobIdBanner"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_5

    const-string v3, "appMobIdInterstitial"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_6

    .line 1035
    :cond_5
    sget-object v3, Lcom/snappy/appypie/advertisement/Ads_req_type;->ADMOB:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    goto :goto_1

    .line 1037
    :cond_6
    sget-object v3, Lcom/snappy/appypie/advertisement/Ads_req_type;->NOADS:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sput-object v3, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static collectionToJson(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 4
    .parameter "data"

    .prologue
    .line 1250
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1251
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 1253
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1255
    .local v0, aData:Ljava/lang/Object;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1258
    .end local v0           #aData:Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private donwloadLatestAppJsonFile()V
    .locals 4

    .prologue
    .line 5187
    invoke-static {p0}, Lcom/snappy/appypie/utils/StaticData;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/webservices/Manifast.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5190
    .local v0, apiUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5191
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "method"

    const-string v3, "getApp"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5192
    const-string v2, "appId"

    sget-object v3, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5193
    const-string v2, "prevVersion"

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->prevVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5194
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->appypieCallback:Lcom/snappy/appypie/utils/AppypieCallback;

    invoke-static {p0, v0, v1, v2}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->apiHitAsJsonRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/snappy/appypie/utils/AppypieCallback;)V

    .line 5196
    .end local v0           #apiUrl:Ljava/lang/String;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private durationAppDuration()J
    .locals 14

    .prologue
    .line 1047
    const/4 v0, 0x0

    .line 1049
    .local v0, appData:Lorg/json/JSONObject;
    :try_start_0
    sget-object v9, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "appData"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1050
    const-string v9, "createdTime"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, dateStart:Ljava/lang/String;
    const-string v9, "Monetization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "build date .. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->getCurrentDate()Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, dateStop:Ljava/lang/String;
    const-string v9, "Monetization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current date .. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v8, 0x0

    .line 1056
    .local v8, format:Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1057
    new-instance v8, Ljava/text/SimpleDateFormat;

    .end local v8           #format:Ljava/text/SimpleDateFormat;
    const-string v9, "dd-MM-yyyy HH:mm aa z"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1060
    .restart local v8       #format:Ljava/text/SimpleDateFormat;
    :goto_0
    const/4 v1, 0x0

    .line 1061
    .local v1, d1:Ljava/util/Date;
    const/4 v2, 0x0

    .line 1062
    .local v2, d2:Ljava/util/Date;
    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1063
    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1064
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1072
    .end local v1           #d1:Ljava/util/Date;
    .end local v2           #d2:Ljava/util/Date;
    .end local v3           #dateStart:Ljava/lang/String;
    .end local v4           #dateStop:Ljava/lang/String;
    .end local v8           #format:Ljava/text/SimpleDateFormat;
    :goto_1
    return-wide v6

    .line 1059
    .restart local v3       #dateStart:Ljava/lang/String;
    .restart local v4       #dateStop:Ljava/lang/String;
    .restart local v8       #format:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .end local v8           #format:Ljava/text/SimpleDateFormat;
    const-string v9, "dd-MM-yyyy h:mm aa z"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v8       #format:Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 1068
    .end local v3           #dateStart:Ljava/lang/String;
    .end local v4           #dateStop:Ljava/lang/String;
    .end local v8           #format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 1069
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "Monetization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error .. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-wide/32 v6, 0x5cb2780

    goto :goto_1
.end method

.method private facebookInitialization()V
    .locals 3

    .prologue
    .line 875
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 877
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/snappy/appypie/HomeActivity$4;

    invoke-direct {v2, p0}, Lcom/snappy/appypie/HomeActivity$4;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1000
    return-void
.end method

.method public static getCountryName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "constext"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 377
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 378
    .local v1, geocoder:Landroid/location/Geocoder;
    const/4 v0, 0x0

    .line 380
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-string v2, "htiiss"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 383
    const-string v2, "fdsfaf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "fdsfaf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snappy/appypie/HomeActivity;->countrycodeval:Ljava/lang/String;

    .line 387
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;

    .line 388
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-object v2

    .line 390
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v7

    .line 393
    .local v7, ignored:Ljava/io/IOException;
    const-string v2, "fdsfaf"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "fdsfaf8888"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCurrentDate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1077
    const-string v1, ""

    .line 1079
    .local v1, dateAsString:Ljava/lang/String;
    :try_start_0
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1080
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 1081
    .local v4, time:Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "dd-MM-yyyy HH:mm aa z"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v3, outputFmt:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #outputFmt:Ljava/text/SimpleDateFormat;
    .end local v4           #time:Ljava/util/Date;
    :goto_0
    return-object v1

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Monetize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getGPSLocation()V
    .locals 4

    .prologue
    .line 362
    new-instance v0, Lcom/snappy/appypie/geofences/GPSTracker;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/geofences/GPSTracker;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, gps:Lcom/snappy/appypie/geofences/GPSTracker;
    invoke-virtual {v0}, Lcom/snappy/appypie/geofences/GPSTracker;->canGetLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snappy/appypie/geofences/GPSTracker;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snappy/appypie/geofences/GPSTracker;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snappy/appypie/geofences/GPSTracker;->getAccuracy()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snappy/appypie/HomeActivity;->apphorizotalAcc:Ljava/lang/String;

    .line 368
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/snappy/appypie/HomeActivity;->getCountryName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    :cond_0
    return-void
.end method

.method private initManifestFile(Ljava/lang/String;)V
    .locals 14
    .parameter "Manifestjson"

    .prologue
    .line 750
    :try_start_0
    const-string v8, ""

    .line 751
    .local v8, manifestString:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/files/files/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "manifest.json"

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .local v4, fileValue:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v11}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "android.permission.READ_EXTERNAL_STORAGE"

    .line 753
    invoke-static {p0, v11}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, ""

    if-eq p1, v11, :cond_1

    .line 756
    move-object v8, p1

    .line 773
    :goto_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    .line 774
    sget-object v11, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v12, "appData"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 775
    .local v0, appData:Lorg/json/JSONObject;
    sget-object v11, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v12, "home"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 776
    .local v1, appDataArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 777
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 778
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v11, "pageid"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 779
    .local v9, pageId:Ljava/lang/String;
    const-string v11, "foodcourt"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 781
    const-string v11, "pageIdentifierBecon"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 782
    .local v10, pageIdentity:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "======  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    sput-object v10, Lcom/snappy/appypie/HomeActivity;->pageIdentifire:Ljava/lang/String;

    .line 784
    iget-object v11, p0, Lcom/snappy/appypie/HomeActivity;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 785
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "restPageIdentifier"

    sget-object v12, Lcom/snappy/appypie/HomeActivity;->pageIdentifire:Ljava/lang/String;

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 786
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #pageIdentity:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 758
    .end local v0           #appData:Lorg/json/JSONObject;
    .end local v1           #appDataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v9           #pageId:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 759
    const-string v11, "HomeActivity"

    const-string v12, "Reading json from assest"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v11, "www/manifest.json"

    invoke-static {p0, v11}, Lcom/snappy/appypie/utils/StaticData;->getJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 764
    :cond_2
    const-string v11, "HomeActivity"

    const-string v12, "Reading json from document directory"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 766
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 767
    .local v6, inputStream:Ljava/io/InputStream;
    const-string v11, "UTF-8"

    invoke-static {v6, v11}, Lcom/snappy/appypie/eReader/epub/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto/16 :goto_0

    .line 768
    .end local v6           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 770
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 793
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fileValue:Ljava/io/File;
    .end local v8           #manifestString:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 794
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 797
    .end local v2           #e:Lorg/json/JSONException;
    :goto_2
    return-void

    .line 791
    .restart local v0       #appData:Lorg/json/JSONObject;
    .restart local v1       #appDataArray:Lorg/json/JSONArray;
    .restart local v4       #fileValue:Ljava/io/File;
    .restart local v5       #i:I
    .restart local v8       #manifestString:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v11, "plan"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/snappy/appypie/HomeActivity;->plan:Ljava/lang/String;

    .line 792
    new-instance v11, Lcom/snappy/appypie/utils/AppHeaderBG;

    invoke-direct {v11, p0}, Lcom/snappy/appypie/utils/AppHeaderBG;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, p0}, Lcom/snappy/appypie/utils/AppHeaderBG;->getScreenResolution(Landroid/content/Context;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private initWebViewSettings()V
    .locals 3

    .prologue
    .line 658
    sget-object v0, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;

    invoke-direct {v1, p0, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;-><init>(Lcom/snappy/appypie/HomeActivity;Landroid/content/Context;)V

    const-string v2, "AppyPieNative"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    .line 660
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 680
    return-void
.end method

.method private initializeView()V
    .locals 1

    .prologue
    .line 646
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/engine/SystemWebView;

    sput-object v0, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    .line 648
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->initWebViewSettings()V

    .line 649
    const-string v0, "file:///android_asset/www/index.html"

    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity;->loadUrl(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private loadUpdatedAppJson()V
    .locals 12

    .prologue
    .line 832
    :try_start_0
    const-string v6, ""

    .line 833
    .local v6, manifestString:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/files/files/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "manifest.json"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v2, fileValue:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 835
    const-string v9, "HomeActivity"

    const-string v10, "Reading json from assest"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v9, "www/manifest.json"

    invoke-static {p0, v9}, Lcom/snappy/appypie/utils/StaticData;->getJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 849
    :goto_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    .line 850
    sget-object v9, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "appData"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 851
    .local v0, appData:Lorg/json/JSONObject;
    const-string v9, "plan"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 852
    .local v8, plan:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v9, "reseller"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_0
    const-string v9, ""

    :goto_1
    sput-object v9, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    .line 853
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    const-string v10, "\\"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    .line 854
    if-eqz v0, :cond_1

    const-string v9, "appId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_1
    const-string v9, ""

    :goto_2
    sput-object v9, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    .line 855
    if-eqz v0, :cond_2

    const-string v9, "version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_2
    const-string v9, ""

    :goto_3
    iput-object v9, p0, Lcom/snappy/appypie/HomeActivity;->prevVersion:Ljava/lang/String;

    .line 857
    sget-object v9, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "languageSetting"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 858
    .local v5, laungJson:Lorg/json/JSONObject;
    if-eqz v5, :cond_a

    const-string v9, "ok_mcom"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "ok_mcom"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, ok_mcom:Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/snappy/appypie/AppypieApplication;->getAppInstance()Lcom/snappy/appypie/AppypieApplication;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/snappy/appypie/AppypieApplication;->setOk(Ljava/lang/String;)V

    .line 861
    if-eqz v5, :cond_b

    const-string v9, "issue_downloading_image"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "issue_downloading_image"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, issue:Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/snappy/appypie/AppypieApplication;->getAppInstance()Lcom/snappy/appypie/AppypieApplication;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/snappy/appypie/AppypieApplication;->setIssueDownloadingImage(Ljava/lang/String;)V

    .line 867
    .end local v0           #appData:Lorg/json/JSONObject;
    .end local v2           #fileValue:Ljava/io/File;
    .end local v4           #issue:Ljava/lang/String;
    .end local v5           #laungJson:Lorg/json/JSONObject;
    .end local v6           #manifestString:Ljava/lang/String;
    .end local v7           #ok_mcom:Ljava/lang/String;
    .end local v8           #plan:Ljava/lang/String;
    :goto_6
    return-void

    .line 840
    .restart local v2       #fileValue:Ljava/io/File;
    .restart local v6       #manifestString:Ljava/lang/String;
    :cond_3
    const-string v9, "HomeActivity"

    const-string v10, "Reading json from document directory"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 843
    .local v3, inputStream:Ljava/io/InputStream;
    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Lcom/snappy/appypie/eReader/epub/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .line 844
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 846
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 864
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fileValue:Ljava/io/File;
    .end local v6           #manifestString:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 865
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 852
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #appData:Lorg/json/JSONObject;
    .restart local v2       #fileValue:Ljava/io/File;
    .restart local v6       #manifestString:Ljava/lang/String;
    .restart local v8       #plan:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v9, "reseller"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v9, ""

    goto/16 :goto_1

    :cond_5
    const-string v9, "reseller"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 854
    :cond_6
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v9, ""

    goto/16 :goto_2

    :cond_7
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 855
    :cond_8
    const-string v9, "version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v9, ""

    goto/16 :goto_3

    :cond_9
    const-string v9, "version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 858
    .restart local v5       #laungJson:Lorg/json/JSONObject;
    :cond_a
    const-string v7, "OK"

    goto/16 :goto_4

    .line 861
    .restart local v7       #ok_mcom:Ljava/lang/String;
    :cond_b
    const-string v4, "There is some issue in downloading image"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private locationapi()V
    .locals 6

    .prologue
    .line 401
    const-string v2, "http://ipinfo.io/json"

    .line 402
    .local v2, url:Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v3, 0x0

    new-instance v4, Lcom/snappy/appypie/HomeActivity$1;

    invoke-direct {v4, p0}, Lcom/snappy/appypie/HomeActivity$1;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    new-instance v5, Lcom/snappy/appypie/HomeActivity$2;

    invoke-direct {v5, p0}, Lcom/snappy/appypie/HomeActivity$2;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 436
    .local v1, strReq:Lcom/android/volley/toolbox/StringRequest;
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 437
    .local v0, queue:Lcom/android/volley/RequestQueue;
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 438
    return-void
.end method

.method public static mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1227
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<**>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1228
    .local v3, object:Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1230
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1231
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1233
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1237
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1241
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1244
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private moveToPageOnGoogleInAppPurchaseError()V
    .locals 4

    .prologue
    .line 1389
    const/4 v1, 0x1

    iput v1, p0, Lcom/snappy/appypie/HomeActivity;->paymentStatus:I

    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, transactionId:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1393
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:callbackAfterPaymentOnSingup(\'failure\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v2, "NewsStands"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:inappSuccess(\'failure\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openWebsiteFragment(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 5780
    new-instance v0, Lcom/snappy/appypie/HomeActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/snappy/appypie/HomeActivity$15;-><init>(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5802
    return-void
.end method

.method private registerForGCMDeviceToken(Ljava/lang/String;)V
    .locals 12
    .parameter "RegId"

    .prologue
    .line 5242
    const-wide/16 v4, 0x0

    .local v4, lat:D
    const-wide/16 v6, 0x0

    .line 5244
    .local v6, lng:D
    :try_start_0
    new-instance v2, Lcom/snappy/appypie/geofences/GPSTracker;

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/snappy/appypie/geofences/GPSTracker;-><init>(Landroid/content/Context;)V

    .line 5245
    .local v2, gps:Lcom/snappy/appypie/geofences/GPSTracker;
    invoke-virtual {v2}, Lcom/snappy/appypie/geofences/GPSTracker;->canGetLocation()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5246
    invoke-virtual {v2}, Lcom/snappy/appypie/geofences/GPSTracker;->getLatitude()D

    move-result-wide v4

    .line 5247
    invoke-virtual {v2}, Lcom/snappy/appypie/geofences/GPSTracker;->getLongitude()D

    move-result-wide v6

    .line 5248
    const-string v8, "NotifLoc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Long "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5259
    .end local v2           #gps:Lcom/snappy/appypie/geofences/GPSTracker;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/webservices/Appypie.php"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5260
    .local v0, RegisterURL:Ljava/lang/String;
    const-string v8, "HomeActivity"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5262
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "method"

    const-string v9, "addDeviceToken"

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5263
    const-string v8, "deviceToken"

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5264
    const-string v8, "appId"

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5265
    const-string v8, "deviceType"

    const-string v9, "Android"

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5266
    const-string v8, "deviceId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "android_id"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5267
    const-string v8, "latitude"

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5268
    const-string v8, "longitude"

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5269
    const-string v8, "country"

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->countryname:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5270
    const-string v8, "countryCode"

    sget-object v9, Lcom/snappy/appypie/HomeActivity;->countrycodeval:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5275
    const-string v8, "HomeActivity====="

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  map  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    new-instance v8, Lcom/snappy/appypie/HomeActivity$9;

    invoke-direct {v8, p0}, Lcom/snappy/appypie/HomeActivity$9;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-static {p0, v0, v3, v8}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->apiHitAsJsonRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/snappy/appypie/utils/AppypieCallback;)V

    .line 5289
    return-void

    .line 5251
    .end local v0           #RegisterURL:Ljava/lang/String;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #gps:Lcom/snappy/appypie/geofences/GPSTracker;
    :cond_0
    const-wide/16 v4, 0x0

    .line 5252
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 5255
    .end local v2           #gps:Lcom/snappy/appypie/geofences/GPSTracker;
    :catch_0
    move-exception v1

    .line 5257
    .local v1, e:Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method private requestforpermission()V
    .locals 3

    .prologue
    .line 336
    sget-object v0, Lcom/snappy/appypie/HomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "permission has NOT been granted. Requesting permission."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    sget v1, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_MAIN_ACCESS:I

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 341
    return-void
.end method

.method private resetFrameLayoutOfFragment()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 5808
    const/16 v4, 0x2c

    invoke-static {p0, v4}, Lcom/snappy/appypie/utils/StaticData;->getPxfromDensity(Landroid/content/Context;I)I

    move-result v2

    .line 5810
    .local v2, margin:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5811
    .local v3, relLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .line 5813
    .local v0, isHeader:Z
    const/4 v1, 0x0

    .line 5814
    .local v1, localJsonObject:Lorg/json/JSONObject;
    :try_start_0
    sget-object v4, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "appData"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5815
    sget-object v4, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "appData"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5818
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "headerBarType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "headerBarType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5819
    const/4 v0, 0x1

    .line 5828
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 5830
    invoke-virtual {v3, v6, v6, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5836
    :goto_1
    iget-object v4, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5838
    return-void

    .line 5833
    :cond_2
    invoke-virtual {v3, v6, v2, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 5821
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setWindowsColor()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method private soFileDownloader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "url"
    .parameter "zipFilePath"

    .prologue
    .line 5881
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5883
    .local v5, outputFile:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5884
    .local v7, u:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 5885
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 5887
    .local v2, contentLength:I
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5888
    .local v6, stream:Ljava/io/DataInputStream;
    new-array v0, v2, [B

    .line 5889
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 5890
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 5891
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5892
    .local v3, fileOutput:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5893
    .local v4, fos:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 5894
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 5895
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5916
    .end local v0           #buffer:[B
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v2           #contentLength:I
    .end local v3           #fileOutput:Ljava/io/FileOutputStream;
    .end local v4           #fos:Ljava/io/DataOutputStream;
    .end local v6           #stream:Ljava/io/DataInputStream;
    .end local v7           #u:Ljava/net/URL;
    :goto_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p2, v8}, Lcom/snappy/appypie/HomeActivity;->unzip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5926
    :goto_1
    return-void

    .line 5919
    :catch_0
    move-exception v8

    goto :goto_1

    .line 5905
    :catch_1
    move-exception v8

    goto :goto_0

    .line 5903
    :catch_2
    move-exception v8

    goto :goto_0

    .line 5900
    :catch_3
    move-exception v8

    goto :goto_0
.end method

.method private startAsyncTaskInParallel(Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;)V
    .locals 3
    .parameter "task"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 6070
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6073
    :goto_0
    return-void

    .line 6072
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startSplashScreen()V
    .locals 5

    .prologue
    .line 807
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snappy/appypie/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "plan"

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->plan:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->Noticationopened:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "notif"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "extraValues"

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->ExtraNotifVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    :goto_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "plan"

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->plan:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 822
    :goto_1
    return-void

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "notif"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startWebsiteViewActivty(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 5842
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->isMainPermissionLoaded:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5843
    const/4 v1, 0x0

    .line 5844
    .local v1, length:I
    const-string v2, ""

    .line 5846
    .local v2, pageId:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "home"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5848
    sget-object v3, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "home"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5850
    .local v0, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 5852
    if-ne v1, v5, :cond_0

    .line 5853
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pageid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5860
    .end local v0           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    if-ne v1, v5, :cond_1

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    if-ne v3, v5, :cond_1

    .line 5864
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 5865
    if-ne v1, v5, :cond_2

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    if-ne v3, v5, :cond_2

    .line 5868
    :cond_2
    iput v5, p0, Lcom/snappy/appypie/HomeActivity;->websideLength:I

    .line 5875
    .end local v1           #length:I
    .end local v2           #pageId:Ljava/lang/String;
    :goto_1
    return-void

    .line 5871
    :cond_3
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->startFragmentActivityIntent:Landroid/content/Intent;

    goto :goto_1

    .line 5856
    .restart local v1       #length:I
    .restart local v2       #pageId:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 1279
    if-nez p0, :cond_1

    move-object p0, v0

    .line 1321
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1283
    .restart local p0
    :cond_1
    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 1289
    :try_start_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1291
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-static {p0}, Lcom/snappy/appypie/HomeActivity;->collectionToJson(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 1293
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1295
    invoke-static {p0}, Lcom/snappy/appypie/HomeActivity;->arrayToJson(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 1297
    :cond_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 1299
    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-static {p0}, Lcom/snappy/appypie/HomeActivity;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 1301
    .restart local p0
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1315
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v1

    :cond_5
    move-object p0, v0

    .line 1321
    goto :goto_0
.end method

.method private writeManifestJSON(Ljava/lang/String;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 544
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/files/files/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manifast.json"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 549
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 550
    .local v3, fw:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 551
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 553
    const-string v4, "UpdateJSON "

    const-string v5, "initManifestFile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity;->initManifestFile(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->checkAdvtDetails()V

    .line 557
    new-instance v4, Lcom/snappy/appypie/utils/AppHeaderBG;

    invoke-direct {v4, p0}, Lcom/snappy/appypie/utils/AppHeaderBG;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Lcom/snappy/appypie/utils/AppHeaderBG;->getScreenResolution(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v3           #fw:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 561
    .local v1, e:Ljava/io/IOException;
    const-string v4, "error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file writting error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appInstalledOrNot(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    .line 5116
    :try_start_0
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5117
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x1

    .line 5121
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .local v0, app_installed:Z
    :goto_0
    return v0

    .line 5118
    .end local v0           #app_installed:Z
    :catch_0
    move-exception v1

    .line 5119
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #app_installed:Z
    goto :goto_0
.end method

.method public declared-synchronized beaconNotification(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/radiusnetworks/ibeacon/IBeacon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5578
    .local p1, iBeacons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/radiusnetworks/ibeacon/IBeacon;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/radiusnetworks/ibeacon/IBeacon;

    .line 5580
    .local v0, iBeacon:Lcom/radiusnetworks/ibeacon/IBeacon;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manoj beacon::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getProximityUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5582
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    if-nez v2, :cond_1

    .line 5583
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getSharePreferenceAppypie(Landroid/content/Context;)Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    move-result-object v2

    sput-object v2, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    .line 5586
    :cond_1
    iget-boolean v2, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->beaconList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5588
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->beaconList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5590
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "isActionPerform"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5591
    const-string v2, "selectedPage"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5593
    const-string v2, "uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getProximityUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "major"

    .line 5594
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5595
    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getMajor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 5594
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "minor"

    .line 5596
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5597
    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getMinor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 5596
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5598
    const-string v2, "isActionPerform"

    const-string v5, "true"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5601
    new-instance v2, Lcom/snappy/appypie/HomeActivity$12;

    invoke-direct {v2, p0, v1}, Lcom/snappy/appypie/HomeActivity$12;-><init>(Lcom/snappy/appypie/HomeActivity;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5655
    .end local v0           #iBeacon:Lcom/radiusnetworks/ibeacon/IBeacon;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 5662
    :cond_3
    monitor-exit p0

    return-void

    .line 5621
    .restart local v0       #iBeacon:Lcom/radiusnetworks/ibeacon/IBeacon;
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    const-string v2, "uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getProximityUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "major"

    .line 5622
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5623
    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getMajor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 5622
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "minor"

    .line 5624
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5625
    invoke-virtual {v0}, Lcom/radiusnetworks/ibeacon/IBeacon;->getMinor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 5624
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5626
    const-string v2, "isActionPerform"

    const-string v5, "true"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5628
    new-instance v2, Lcom/snappy/appypie/HomeActivity$13;

    invoke-direct {v2, p0, v1}, Lcom/snappy/appypie/HomeActivity$13;-><init>(Lcom/snappy/appypie/HomeActivity;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5578
    .end local v0           #iBeacon:Lcom/radiusnetworks/ibeacon/IBeacon;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected createViews()V
    .locals 4

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "BackgroundColor"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "BackgroundColor"

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 1107
    .local v0, backgroundColor:I
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1109
    .end local v0           #backgroundColor:I
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1110
    return-void
.end method

.method public getCrashingReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "deviceInfo"
    .parameter "appInfo"

    .prologue
    .line 5746
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    instance-of v1, v1, Lcom/snappy/appypie/ReportHandler;

    if-nez v1, :cond_0

    .line 5747
    new-instance v1, Lcom/snappy/appypie/ReportHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/snappy/appypie/ReportHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5755
    :cond_0
    :goto_0
    return-void

    .line 5750
    :catch_0
    move-exception v0

    .line 5752
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 5067
    const-string v0, ""

    .line 5068
    .local v0, filePath:Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 5070
    invoke-static {p0, p1}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_BelowAPI11(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5083
    :goto_0
    return-object v0

    .line 5073
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 5075
    invoke-static {p0, p1}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API11to18(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5080
    :cond_1
    invoke-static {p0, p1}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public holdBeaconData()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 5670
    new-instance v8, Lcom/snappy/appypie/HomeActivity$14;

    invoke-direct {v8, p0}, Lcom/snappy/appypie/HomeActivity$14;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-virtual {p0, v8}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5685
    const-string v8, "www/manifest.json"

    invoke-static {p0, v8}, Lcom/snappy/appypie/utils/StaticData;->getJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5686
    .local v5, manifestString:Ljava/lang/String;
    iput-boolean v7, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    .line 5689
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5691
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v8, "beacon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v7, "beacon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_0
    iput-boolean v7, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    .line 5692
    iget-boolean v7, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    if-eqz v7, :cond_8

    .line 5694
    const-string v7, "appybeacon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "appybeacon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5695
    .local v0, appybeacon:Lorg/json/JSONObject;
    :goto_0
    if-eqz v0, :cond_1

    const-string v7, "list"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "list"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 5697
    .local v2, jsonArray:Lorg/json/JSONArray;
    :cond_1
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 5699
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ge v1, v7, :cond_8

    .line 5703
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5705
    .local v3, jsonIndexObj:Lorg/json/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5707
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "uuid"

    const-string v7, "uuid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "uuid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5708
    const-string v8, "major"

    const-string v7, "major"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "major"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5709
    const-string v8, "minor"

    const-string v7, "minor"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "minor"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5710
    const-string v8, "selectedPage"

    const-string v7, "selectedPage"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "selectedPage"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5711
    const-string v8, "message"

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5712
    const-string v7, "isActionPerform"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5713
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity;->beaconList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5699
    .end local v3           #jsonIndexObj:Lorg/json/JSONObject;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v0           #appybeacon:Lorg/json/JSONObject;
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :cond_2
    move-object v0, v2

    .line 5694
    goto/16 :goto_0

    .line 5707
    .restart local v0       #appybeacon:Lorg/json/JSONObject;
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #jsonIndexObj:Lorg/json/JSONObject;
    .restart local v6       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v7, ""

    goto :goto_2

    .line 5708
    :cond_4
    const-string v7, ""

    goto :goto_3

    .line 5709
    :cond_5
    const-string v7, ""

    goto :goto_4

    .line 5710
    :cond_6
    const-string v7, ""

    goto :goto_5

    .line 5711
    :cond_7
    const-string v7, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 5724
    .end local v0           #appybeacon:Lorg/json/JSONObject;
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonIndexObj:Lorg/json/JSONObject;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 5730
    :cond_8
    iget-boolean v7, p0, Lcom/snappy/appypie/HomeActivity;->isBeacon:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity;->beaconList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 5733
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity;->iBeaconManager:Lcom/radiusnetworks/ibeacon/IBeaconManager;

    invoke-virtual {v7, p0}, Lcom/radiusnetworks/ibeacon/IBeaconManager;->bind(Lcom/radiusnetworks/ibeacon/IBeaconConsumer;)V

    .line 5739
    :cond_9
    return-void

    .line 5716
    .restart local v0       #appybeacon:Lorg/json/JSONObject;
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    goto :goto_7
.end method

.method public initGetRequiredDataForCrash()V
    .locals 13

    .prologue
    .line 445
    :try_start_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, apiLevel:Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 447
    .local v8, model:Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 448
    .local v4, device:Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 449
    .local v7, manufacturer:Ljava/lang/String;
    sget-object v10, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v11, "appData"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "appId"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, appId:Ljava/lang/String;
    sget-object v10, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v11, "appData"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "version"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, appVersion:Ljava/lang/String;
    sget-object v10, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v11, "appData"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "appName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, appName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 453
    .local v9, pInfo:Landroid/content/pm/PackageInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, deviceVersion:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> Device Type : : Android</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 456
    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> API Level : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 457
    :cond_0
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> Model : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 458
    :cond_1
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> Device : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 459
    :cond_2
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> Manufacturer : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 460
    :cond_3
    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> Device Version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    .line 462
    :cond_4
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==== deviceInfo deviceInfo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> App Id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    .line 465
    :cond_5
    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> App Version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    .line 466
    :cond_6
    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<p> App Name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</p>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    .line 468
    :cond_7
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==== appInfo appInfo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    sget-object v10, Lcom/snappy/appypie/HomeActivity;->deviceInfo:Ljava/lang/String;

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->appInfo:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/snappy/appypie/HomeActivity;->getCrashingReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0           #apiLevel:Ljava/lang/String;
    .end local v1           #appId:Ljava/lang/String;
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #appVersion:Ljava/lang/String;
    .end local v4           #device:Ljava/lang/String;
    .end local v5           #deviceVersion:Ljava/lang/String;
    .end local v7           #manufacturer:Ljava/lang/String;
    .end local v8           #model:Ljava/lang/String;
    .end local v9           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v6

    .line 474
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected makeWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl;

    new-instance v1, Lorg/apache/cordova/engine/SystemWebViewEngine;

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-direct {v1, v2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;)V

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v11, -0x1

    .line 1114
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1117
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    if-ne p2, v11, :cond_0

    .line 1119
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v9, "javascript:Appyscript.showIndicator();"

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 1122
    :cond_0
    const v8, 0xb24d

    if-ne p1, v8, :cond_1

    .line 1124
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v9, "javascript:Appyscript.getCurrentPosition(false);"

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 1129
    :cond_1
    :try_start_0
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1130
    .local v4, purchaseData:Ljava/lang/String;
    if-ne p2, v11, :cond_2

    if-eqz v4, :cond_2

    .line 1132
    const/4 v7, 0x0

    .line 1134
    .local v7, transactionId:Ljava/lang/String;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v8, "orderId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 1139
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity;->paymentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/anjlab/android/iab/v3/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result v1

    .line 1140
    .local v1, flag:Z
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v9, "login"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1142
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1143
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:callbackAfterPaymentOnSingup(\'success\',\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',\'IAP\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1177
    .end local v1           #flag:Z
    .end local v4           #purchaseData:Ljava/lang/String;
    .end local v7           #transactionId:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v8, :cond_3

    .line 1178
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v8, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1183
    :cond_3
    const/16 v8, 0x3fe

    if-ne p1, v8, :cond_4

    .line 1184
    if-ne p2, v11, :cond_9

    .line 1185
    new-instance v5, Lcom/dropbox/chooser/android/DbxChooser$Result;

    invoke-direct {v5, p3}, Lcom/dropbox/chooser/android/DbxChooser$Result;-><init>(Landroid/content/Intent;)V

    .line 1186
    .local v5, result:Lcom/dropbox/chooser/android/DbxChooser$Result;
    const-string v8, "main"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Link to selected file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getLink()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getThumbnails()Ljava/util/Map;

    move-result-object v6

    .line 1188
    .local v6, thumbs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1189
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "link"

    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getLink()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v8, "name"

    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v8, "size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v8, "icon_url"

    invoke-virtual {v5}, Lcom/dropbox/chooser/android/DbxChooser$Result;->getIcon()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v9, "icon64x64"

    const-string v8, "64x64"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v9, "icon200x200"

    const-string v8, "200x200"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v9, "icon640x480"

    const-string v8, "640x480"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-static {v3}, Lcom/snappy/appypie/HomeActivity;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, p0, Lcom/snappy/appypie/HomeActivity;->dropboxResult:Lorg/json/JSONObject;

    .line 1197
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:dropBoxResultCallback(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/snappy/appypie/HomeActivity;->dropboxResult:Lorg/json/JSONObject;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 1207
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #result:Lcom/dropbox/chooser/android/DbxChooser$Result;
    .end local v6           #thumbs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 1214
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->webViewFragment:Lcom/snappy/appypie/WebViewFragment;

    if-eqz v8, :cond_5

    .line 1216
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->webViewFragment:Lcom/snappy/appypie/WebViewFragment;

    invoke-virtual {v8, p1, p2, p3}, Lcom/snappy/appypie/WebViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1220
    :cond_5
    return-void

    .line 1146
    .restart local v1       #flag:Z
    .restart local v4       #purchaseData:Ljava/lang/String;
    .restart local v7       #transactionId:Ljava/lang/String;
    :cond_6
    :try_start_3
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:callbackAfterPaymentOnSingup(\'failure\',\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1161
    .end local v1           #flag:Z
    :catch_0
    move-exception v0

    .line 1162
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->moveToPageOnGoogleInAppPurchaseError()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1171
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #purchaseData:Ljava/lang/String;
    .end local v7           #transactionId:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 1150
    .restart local v1       #flag:Z
    .restart local v4       #purchaseData:Ljava/lang/String;
    .restart local v7       #transactionId:Ljava/lang/String;
    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v9, "NewsStands"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1152
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1153
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:inappSuccess(\'success\',\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1156
    :cond_8
    sget-object v8, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:inappSuccess(\'failure\',\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1199
    .end local v1           #flag:Z
    .end local v4           #purchaseData:Ljava/lang/String;
    .end local v7           #transactionId:Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_4

    .line 1200
    const-string v8, "Cancelled by user"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1136
    .restart local v4       #purchaseData:Ljava/lang/String;
    .restart local v7       #transactionId:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->fl_forFragment:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    sget-object v0, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v1, "javascript:backOnWebViewFragment();"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->checkdevicebackclick:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .locals 0
    .parameter "i"
    .parameter "throwable"

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->moveToPageOnGoogleInAppPurchaseError()V

    .line 1379
    return-void
.end method

.method public onBillingInitialized()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 288
    const v1, 0x7f03007a

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/HomeActivity;->setContentView(I)V

    .line 289
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getSharePreferenceAppypie(Landroid/content/Context;)Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    move-result-object v1

    sput-object v1, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    .line 292
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    invoke-virtual {v1}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->isSOFileDownlaoded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snappy/appypie/HomeActivity;->isFileDownloading:Z

    .line 295
    new-instance v1, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-direct {p0, v1}, Lcom/snappy/appypie/HomeActivity;->startAsyncTaskInParallel(Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;)V

    .line 299
    :cond_0
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appypie satis app start time1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getSharePreferenceAppypie(Landroid/content/Context;)Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    move-result-object v1

    sput-object v1, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    .line 301
    const-string v1, "MyPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/snappy/appypie/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 302
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->VerifyNoticationopened()V

    .line 303
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/snappy/appypie/HomeActivity;->initManifestFile(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->startSplashScreen()V

    .line 305
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->setWindowsColor()V

    .line 306
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->SetOrientation()V

    .line 307
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->initializeView()V

    .line 308
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->resetFrameLayoutOfFragment()V

    .line 311
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->checkAdvtDetails()V

    .line 312
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/snappy/appypie/utils/StaticData;->getHashKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->getGPSLocation()V

    .line 314
    sget-object v1, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "loginfield"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "loginSetting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enableFacebookNow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->facebookInitialization()V

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->InitializeMat()V

    .line 320
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity;->initGetRequiredDataForCrash()V

    .line 321
    sget-object v1, Lcom/snappy/appypie/utils/StaticData;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "languageSetting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "press_again_to_exit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->languagesettingpressExit:Ljava/lang/String;

    .line 322
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===== gg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->languagesettingpressExit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 5151
    invoke-static {p0}, Lcom/snappy/appypie/utils/StaticData;->removeNotification(Landroid/content/Context;)V

    .line 5152
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onDestroy()V

    .line 5153
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5154
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5158
    :cond_0
    return-void
.end method

.method public onIBeaconServiceConnect()V
    .locals 6

    .prologue
    .line 5542
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside onIBeaconServiceConnect starts now....."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->iBeaconManager:Lcom/radiusnetworks/ibeacon/IBeaconManager;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$11;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$11;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/radiusnetworks/ibeacon/IBeaconManager;->setRangeNotifier(Lcom/radiusnetworks/ibeacon/RangeNotifier;)V

    .line 5566
    :try_start_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->iBeaconManager:Lcom/radiusnetworks/ibeacon/IBeaconManager;

    new-instance v1, Lcom/radiusnetworks/ibeacon/Region;

    const-string v2, "MyRangingUniqueId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/radiusnetworks/ibeacon/Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/radiusnetworks/ibeacon/IBeaconManager;->startRangingBeaconsInRegion(Lcom/radiusnetworks/ibeacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5571
    :goto_0
    return-void

    .line 5568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 5486
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 5489
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "extraValues"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5490
    .local v2, hasExtra:Ljava/lang/String;
    const-string v5, "congratulate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5492
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v6, "javascript:Appyscript.datingnotification(0);"

    invoke-virtual {v5, v6}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 5494
    :cond_0
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5496
    const-string v5, "\\|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5497
    .local v0, data:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v0, v5

    .line 5498
    const/4 v5, 0x1

    aget-object v5, v0, v5

    iput-object v5, p0, Lcom/snappy/appypie/HomeActivity;->RrestaurantrderStatus:Ljava/lang/String;

    .line 5499
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity;->RrestaurantrderStatus:Ljava/lang/String;

    iput-object v5, p0, Lcom/snappy/appypie/HomeActivity;->ResDeliverOrderStatus:Ljava/lang/String;

    .line 5501
    .end local v0           #data:[Ljava/lang/String;
    :cond_1
    const-string v5, "foodcourt_restaurantowner"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5503
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "orderPagestatus"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/snappy/appypie/HomeActivity;->ResDeliverOrderStatus:Ljava/lang/String;

    .line 5504
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:restaurantowner(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->pageIdentifire:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity;->ResDeliverOrderStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 5536
    .end local v2           #hasExtra:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 5506
    .restart local v2       #hasExtra:Ljava/lang/String;
    :cond_3
    const-string v5, "foodcourt_customer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5509
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v6, "pageorderid"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5510
    .local v4, pageorderid:Ljava/lang/String;
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:openfoodcourtpagefromnotification(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->pageIdentifire:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5533
    .end local v2           #hasExtra:Ljava/lang/String;
    .end local v4           #pageorderid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5534
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "HomeActivity"

    const-string v6, "No Extra value "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5512
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #hasExtra:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v5, "GeofenceMsg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5514
    const-string v5, "@@==@@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5515
    const-string v5, "@@==@@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "GeofenceMsg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5517
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/snappy/appypie/geofences/GeofencesActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5518
    .local v3, in:Landroid/content/Intent;
    const-string v5, "Extras"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5519
    invoke-virtual {p0, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5523
    .end local v3           #in:Landroid/content/Intent;
    :cond_5
    const-string v5, "noPageid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5524
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:internallink(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5526
    :cond_6
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v6, "javascript:Appyscript.notificationPage()"

    invoke-virtual {v5, v6}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 5163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isOnPause:Z

    .line 5164
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onPause()V

    .line 5165
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5166
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5167
    :cond_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 5168
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5169
    :cond_1
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    if-eqz v0, :cond_2

    .line 5170
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    invoke-virtual {v0}, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->PauseAds()V

    .line 5175
    :cond_2
    return-void
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V
    .locals 5
    .parameter "s"
    .parameter "transactionDetails"

    .prologue
    .line 1335
    const/4 v1, 0x0

    .line 1337
    .local v1, transactionId:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p2, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1345
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1347
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1348
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:callbackAfterPaymentOnSingup(\'success\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'IAP\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 1365
    :cond_0
    :goto_1
    return-void

    .line 1351
    :cond_1
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:callbackAfterPaymentOnSingup(\'failure\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1363
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1353
    :cond_2
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;

    const-string v3, "NewsStands"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1356
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:inappSuccess(\'success\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1359
    :cond_3
    sget-object v2, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:inappSuccess(\'failure\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1340
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPurchaseHistoryRestored()V
    .locals 0

    .prologue
    .line 1372
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .parameter "requestCode"
    .parameter "permissions"
    .parameter "grantResults"

    .prologue
    const v3, 0x7f08017d

    .line 6103
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6104
    sget v1, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_MAIN_ACCESS:I

    if-ne p1, v1, :cond_0

    .line 6105
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->isMainPermissionLoaded:Ljava/lang/Boolean;

    .line 6106
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1, p3}, Lcom/snappy/appypie/PermissionManager;->hasAllPermissionsGranted([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6108
    :try_start_0
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/snappy/appypie/HomeActivity;->initManifestFile(Ljava/lang/String;)V

    .line 6109
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->SetOrientation()V

    .line 6110
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->UpdateJSON()V

    .line 6111
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->checkAdvtDetails()V

    .line 6113
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:Appyscript.getCurrentPosition(false);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 6114
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->startFragmentActivityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 6115
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->startFragmentActivityIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V

    .line 6116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snappy/appypie/HomeActivity;->startFragmentActivityIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6132
    :cond_0
    :goto_0
    sget v1, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    if-ne p1, v1, :cond_1

    .line 6133
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->getGPSLocation()V

    .line 6134
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1, p3}, Lcom/snappy/appypie/PermissionManager;->hasAllPermissionsGranted([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6135
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1}, Lcom/snappy/appypie/PermissionManager;->executePage()V

    .line 6140
    :cond_1
    :goto_1
    sget v1, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_ACTION:I

    if-ne p1, v1, :cond_2

    .line 6141
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1, p3}, Lcom/snappy/appypie/PermissionManager;->hasAllPermissionsGranted([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6142
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1}, Lcom/snappy/appypie/PermissionManager;->executeAction()V

    .line 6146
    :cond_2
    :goto_2
    sget v1, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_JS_REQUEST:I

    if-ne p1, v1, :cond_3

    .line 6147
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity;->getGPSLocation()V

    .line 6148
    const-string v1, "RaviPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v3, p3}, Lcom/snappy/appypie/PermissionManager;->hasAllPermissionsGranted([I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v1, p3}, Lcom/snappy/appypie/PermissionManager;->hasAllPermissionsGranted([I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6150
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->SuccessCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 6156
    :cond_3
    :goto_3
    return-void

    .line 6119
    :catch_0
    move-exception v0

    .line 6121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6125
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const v2, 0x7f08017d

    invoke-virtual {p0, v2}, Lcom/snappy/appypie/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/PermissionManager;->askPermission(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 6127
    :catch_1
    move-exception v0

    .line 6129
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 6138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {p0, v3}, Lcom/snappy/appypie/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/PermissionManager;->askPermission(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6144
    :cond_6
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const-string v2, "Need permission to access this page"

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/PermissionManager;->askPermission(Ljava/lang/String;)V

    goto :goto_2

    .line 6152
    :cond_7
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity;->FailedCallBack:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 5469
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onResume()V

    .line 5470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isOnPause:Z

    .line 5472
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    if-eqz v0, :cond_0

    .line 5473
    sget-object v0, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->isAdvtClosed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snappy/appypie/HomeActivity;->ADMOB_AD_BANNER_ID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isAdsPaused:Z

    if-nez v0, :cond_0

    .line 5474
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity;->admob:Lcom/snappy/appypie/advertisement/googleAdmob/Admob;

    invoke-virtual {v0}, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->ResumeAds()V

    .line 5476
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 5477
    invoke-static {p0}, Lcom/tune/ma/application/TuneActivity;->onResume(Landroid/app/Activity;)V

    .line 5481
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 5760
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onStart()V

    .line 5761
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 5762
    invoke-static {p0}, Lcom/tune/ma/application/TuneActivity;->onStart(Landroid/app/Activity;)V

    .line 5764
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 5769
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 5770
    invoke-static {p0}, Lcom/tune/ma/application/TuneActivity;->onStop(Landroid/app/Activity;)V

    .line 5772
    :cond_0
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onStop()V

    .line 5773
    return-void
.end method

.method public storeIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 6078
    const-string v0, "HomeActivity"

    const-string v1, "storeIntent method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6079
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity;->soIntent:Landroid/content/Intent;

    .line 6080
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snappy/appypie/HomeActivity$16;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$16;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6092
    iget-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isFileDownloading:Z

    if-nez v0, :cond_0

    .line 6094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snappy/appypie/HomeActivity;->isFileDownloading:Z

    .line 6095
    new-instance v0, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;

    invoke-direct {v0, p0}, Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;-><init>(Lcom/snappy/appypie/HomeActivity;)V

    invoke-direct {p0, v0}, Lcom/snappy/appypie/HomeActivity;->startAsyncTaskInParallel(Lcom/snappy/appypie/HomeActivity$OSFilesDowloadedAsynTask;)V

    .line 6097
    :cond_0
    return-void
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "zipFile"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5929
    const/4 v10, 0x0

    .line 5930
    .local v10, isFirstCatch:Z
    const/4 v11, 0x0

    .line 5932
    .local v11, isSecondCatch:Z
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5933
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_0

    .line 5934
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 5936
    :cond_0
    new-instance v16, Ljava/util/zip/ZipInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5938
    .local v16, zin:Ljava/util/zip/ZipInputStream;
    const/4 v15, 0x0

    .line 5939
    .local v15, ze:Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 5941
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5943
    .local v7, filePath:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5945
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    invoke-static/range {v17 .. v18}, Lcom/snappy/appypie/utils/StaticData;->getArrayFromString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 5947
    .local v13, st:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5952
    .end local v13           #st:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 5953
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5954
    .local v14, unzipFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_1

    .line 5955
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5993
    .end local v7           #filePath:Ljava/lang/String;
    .end local v14           #unzipFile:Ljava/io/File;
    :catchall_0
    move-exception v17

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->close()V

    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5996
    .end local v6           #f:Ljava/io/File;
    .end local v15           #ze:Ljava/util/zip/ZipEntry;
    .end local v16           #zin:Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v5

    .line 5997
    .local v5, e:Ljava/lang/Exception;
    const/4 v10, 0x1

    .line 6001
    .end local v5           #e:Ljava/lang/Exception;
    :goto_1
    if-nez v10, :cond_3

    if-nez v11, :cond_3

    .line 6003
    sget-object v17, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->setSOFileDownlaoded(Z)V

    .line 6006
    :cond_3
    return-void

    .line 5960
    .restart local v6       #f:Ljava/io/File;
    .restart local v7       #filePath:Ljava/lang/String;
    .restart local v15       #ze:Ljava/util/zip/ZipEntry;
    .restart local v16       #zin:Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_3
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manoj filePath:else:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5961
    new-instance v8, Ljava/io/FileOutputStream;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v8, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 5962
    .local v8, fout:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5963
    .local v2, bout:Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 5966
    .local v9, indexData:I
    :try_start_4
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 5967
    .local v12, size:I
    new-array v3, v12, [B

    .line 5968
    .local v3, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5969
    .local v4, burIn:Ljava/io/BufferedInputStream;
    invoke-virtual {v4, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5970
    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 5978
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 5984
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 5985
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 5986
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_0

    .line 5979
    .end local v3           #buffer:[B
    .end local v4           #burIn:Ljava/io/BufferedInputStream;
    .end local v12           #size:I
    :catch_1
    move-exception v5

    .line 5981
    .restart local v5       #e:Ljava/lang/Exception;
    const/4 v11, 0x1

    .line 5984
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 5985
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 5986
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_0

    .line 5984
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 5985
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 5986
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5993
    .end local v2           #bout:Ljava/io/BufferedOutputStream;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #fout:Ljava/io/FileOutputStream;
    .end local v9           #indexData:I
    :cond_5
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
