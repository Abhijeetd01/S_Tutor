.class public Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snappy/appypie/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CordovaWebViewInterface"
.end annotation


# instance fields
.field cityNameforset:Ljava/lang/String;

.field contactDetailsAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field exitNum:I

.field foodcourtContactemail:Ljava/lang/String;

.field foodcourtContactnumber:Ljava/lang/String;

.field foodcourtContactsmsnumber:Ljava/lang/String;

.field foodcourtContactwebsiteUrl:Ljava/lang/String;

.field fullWebsiteUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/snappy/appypie/HomeActivity;


# direct methods
.method constructor <init>(Lcom/snappy/appypie/HomeActivity;Landroid/content/Context;)V
    .locals 1
    .parameter "this$0"
    .parameter "context"

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2302
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->foodcourtContactnumber:Ljava/lang/String;

    .line 2303
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->foodcourtContactemail:Ljava/lang/String;

    .line 2304
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->foodcourtContactsmsnumber:Ljava/lang/String;

    .line 2305
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->foodcourtContactwebsiteUrl:Ljava/lang/String;

    .line 2306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->contactDetailsAdd:Ljava/util/ArrayList;

    .line 2370
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->fullWebsiteUrl:Ljava/lang/String;

    .line 3625
    const/4 v0, 0x0

    iput v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    .line 4192
    const-string v0, ""

    iput-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->cityNameforset:Ljava/lang/String;

    .line 1423
    iput-object p2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    .line 1424
    return-void
.end method

.method static synthetic access$1700(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->openExternalpdf(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1419
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->openMySdkpdf(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callJsPart()V
    .locals 2

    .prologue
    .line 3992
    sget-object v0, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$24;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$24;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->post(Ljava/lang/Runnable;)Z

    .line 3997
    return-void
.end method

.method private openExternalpdf(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 3239
    const-string v1, "PDFPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3242
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3243
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3246
    :try_start_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3247
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-string v2, "File not found  "

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3250
    .restart local v0       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private openMySdkpdf(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "file"
    .parameter "pagetitle"
    .parameter "headerBarBackgroundColor"
    .parameter "headerBarTextColor"

    .prologue
    .line 3210
    const-string v1, "PDFPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 3213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/joanzapata/PDFViewActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3214
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdfUrls"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3215
    const-string v1, "headerBarBackgroundColor"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    const-string v1, "headerBarTextColor"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    const-string v1, "pagetitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3218
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    invoke-virtual {v1}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->isSOFileDownlaoded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->storeIntent(Landroid/content/Intent;)V

    .line 3232
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3225
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3230
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-string v2, "File not found  "

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private openScreenshot(Ljava/io/File;)V
    .locals 4
    .parameter "imageFile"

    .prologue
    .line 4037
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 4038
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4039
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4040
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4044
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4045
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v3, "Share Image"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 4046
    return-void
.end method


# virtual methods
.method public AddPhoneContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "headerTitle"
    .parameter "Name"
    .parameter "Mobnumber"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    const-string v2, "undefined"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1957
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1958
    .local v1, value2:Ljava/util/Map;
    const-string v2, "name"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    .end local v1           #value2:Ljava/util/Map;
    :cond_0
    const-string v2, "Messenger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string v2, "undefined"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1964
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1965
    .restart local v1       #value2:Ljava/util/Map;
    const-string v2, "phone"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1968
    .end local v1           #value2:Ljava/util/Map;
    :cond_1
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_2

    .line 1971
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1972
    .restart local v1       #value2:Ljava/util/Map;
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1975
    .end local v1           #value2:Ljava/util/Map;
    :cond_2
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, v2, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_CONTACTS"

    aput-object v5, v3, v4

    sget v4, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_ACTION:I

    const-string v5, "android.intent.action.INSERT"

    const-string v6, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method public AddTocartToastMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "msgg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$35;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$35;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4911
    return-void
.end method

.method public ShowError(Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4737
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4738
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$33;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$33;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4750
    return-void
.end method

.method public askPermissionDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "sa"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3326
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/snappy/appypie/PermissionManager;->askPermission(Ljava/lang/String;)V

    .line 3327
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$9;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$9;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2193
    return-void
.end method

.method public callContactEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "contactEmail"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$11;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$11;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2349
    return-void
.end method

.method public callDeliveryBoyPhone(Ljava/lang/String;)V
    .locals 4
    .parameter "phonenumber"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1646
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===== phonenumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v0, callIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1649
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1652
    return-void
.end method

.method public callSkype(Ljava/lang/String;)V
    .locals 5
    .parameter "skypeId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2198
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "com.skype.raider"

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2199
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-string v2, "Please install skype app first."

    invoke-static {v1, v2}, Lcom/snappy/appypie/utils/StaticData;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.skype.raider"

    .line 2201
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2200
    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2209
    :goto_0
    return-void

    .line 2203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2204
    .local v0, skypeUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 2205
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.skype.raider"

    const-string v4, "com.skype.raider.Main"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2206
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2207
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public callSmsNo(Ljava/lang/String;)V
    .locals 2
    .parameter "smsnumber"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$12;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$12;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2368
    return-void
.end method

.method public callWebsiteUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "websiteUrl"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$13;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$13;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2392
    return-void
.end method

.method public ce_saveImage(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmImage2"

    .prologue
    .line 3961
    const-string v0, "Ticket_"

    .line 3962
    .local v0, ab:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3963
    .local v5, num:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/Tickets/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3964
    .local v6, photoName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3965
    .local v3, localFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 3966
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3967
    add-int/lit8 v5, v5, 0x1

    .line 3968
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/Tickets/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3970
    :try_start_0
    new-instance v3, Ljava/io/File;

    .end local v3           #localFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #localFile:Ljava/io/File;
    goto :goto_0

    .line 3971
    .end local v3           #localFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 3973
    .local v1, err:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3977
    .end local v1           #err:Ljava/lang/Exception;
    .restart local v3       #localFile:Ljava/io/File;
    :cond_0
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Lcom/snappy/appypie/HomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3979
    invoke-direct {p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->callJsPart()V

    .line 3981
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3982
    .local v4, localFileOutputStream:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {p1, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3983
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 3984
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3985
    return-void

    .line 3986
    .end local v4           #localFileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3988
    .local v2, localException:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public ce_saveScreenShot()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3894
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3895
    .local v2, now:Ljava/util/Date;
    const-string v3, "yyyy-MM-dd_hh:mm:ss"

    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    .line 3897
    :try_start_0
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->takeScreenshott()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3898
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->ce_saveImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 3899
    :catch_0
    move-exception v1

    .line 3900
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkFringerPrintLogin(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceVersion"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1491
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== deviceVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/fingerprintLogin/FingerprintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1493
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1494
    return-void
.end method

.method public checkNetworkAvailability()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/snappy/appypie/utils/StaticData;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public convertXMLToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "xmlData"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2881
    :try_start_0
    invoke-static {p1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2882
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json data after parsing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2883
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2885
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public disabledeviceback(Ljava/lang/String;)V
    .locals 3
    .parameter "val"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3677
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdevicebackclick  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3678
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iput-object p1, v0, Lcom/snappy/appypie/HomeActivity;->checkdevicebackclick:Ljava/lang/String;

    .line 3679
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdevicebackclick  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, v2, Lcom/snappy/appypie/HomeActivity;->checkdevicebackclick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3680
    return-void
.end method

.method public disconnectFromFacebook()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1656
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1674
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v0}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getSharePreferenceAppypie(Landroid/content/Context;)Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    move-result-object v8

    .line 1660
    .local v8, preferences:Lcom/snappy/appypie/utils/SharePreferenceAppypie;
    invoke-virtual {v8}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getFacebookId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1661
    .local v7, fbID:Ljava/lang/String;
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/permissions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$3;

    invoke-direct {v5, p0, v7}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$3;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1669
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1670
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/snappy/appypie/HomeActivity;->callbackManager:Lcom/facebook/CallbackManager;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$602(Lcom/snappy/appypie/HomeActivity;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1671
    .end local v7           #fbID:Ljava/lang/String;
    .end local v8           #preferences:Lcom/snappy/appypie/utils/SharePreferenceAppypie;
    :catch_0
    move-exception v6

    .line 1672
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "Facebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout Error... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public displayMobileAds()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$23;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$23;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3866
    return-void
.end method

.method public exitApp()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 3629
    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$19;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$19;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    .line 3636
    .local v1, runnEx:Ljava/lang/Runnable;
    iget v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    if-lt v2, v4, :cond_1

    .line 3637
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$20;

    invoke-direct {v3, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$20;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3661
    :cond_0
    :goto_0
    return-void

    .line 3651
    :cond_1
    iget v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    .line 3652
    iget v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3653
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->languagesettingpressExit:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/snappy/appypie/utils/StaticData;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 3654
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3655
    .local v0, handler:Landroid/os/Handler;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3656
    .end local v0           #handler:Landroid/os/Handler;
    :cond_2
    iget v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitNum:I

    if-ne v2, v4, :cond_0

    .line 3657
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v2}, Lcom/snappy/appypie/utils/StaticData;->removeNotification(Landroid/content/Context;)V

    .line 3658
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->exitApp()V

    goto :goto_0
.end method

.method public foodCourtCall(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$10;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$10;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2326
    return-void
.end method

.method public getAvailabilityInfoForTouch()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1500
    .local v0, deviceVersion:I
    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 1513
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1514
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v3, "Secure lock screen hasn\'t set up.\nGo to \'Settings -> Security -> Fingerprint\' to set up a fingerprint"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1519
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1529
    .end local v1           #keyguardManager:Landroid/app/KeyguardManager;
    :goto_0
    return-void

    .line 1502
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$1;

    invoke-direct {v3, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$1;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1523
    .restart local v1       #keyguardManager:Landroid/app/KeyguardManager;
    :cond_1
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$2;

    invoke-direct {v3, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$2;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getBuildVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getCountDownNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .parameter "eventDate"
    .parameter "eventTime"
    .parameter "eventTimeZone"
    .parameter "notifyBeforeTime"
    .parameter "notifyBeforeTimeText"
    .parameter "textNotifyBefore"
    .parameter "sendNotificationOn"
    .parameter "appName"
    .parameter "textNotifyAfter"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2517
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2519
    .local v5, calender:Ljava/util/Calendar;
    const/4 v15, 0x0

    .line 2520
    .local v15, formatter:Ljava/text/SimpleDateFormat;
    const/16 v19, 0x0

    .line 2521
    .local v19, secformatter:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2523
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "==== if 24 format"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2524
    new-instance v15, Ljava/text/SimpleDateFormat;

    .end local v15           #formatter:Ljava/text/SimpleDateFormat;
    const-string v21, "yyyy-MM-dd hh:mm:ss"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2536
    .restart local v15       #formatter:Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 2538
    .local v10, date:Ljava/util/Date;
    const-string v21, "Current Date/Time : %tc"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 2539
    .local v20, str:Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v21, "yyy-MM-dd"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2540
    .local v12, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 2541
    .local v14, formattedDate:Ljava/lang/String;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "=== formatted date : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2543
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy-MM-dd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v16, inFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 2545
    .local v11, date1:Ljava/util/Date;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v21, "EEEE"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2546
    .local v18, outFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 2547
    .local v9, currentDay:Ljava/lang/String;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "=== currentDay date : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2549
    move-object v8, v10

    .line 2550
    .local v8, currentConvertdateTime:Ljava/util/Date;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "=== get currentConvertdateTime time is in : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2554
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2555
    .local v6, cddateTime:Ljava/lang/String;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== countdown cddateTime call  : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2558
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "==== sec if 24 format"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2559
    new-instance v19, Ljava/text/SimpleDateFormat;

    .end local v19           #secformatter:Ljava/text/SimpleDateFormat;
    const-string v21, "yyyy-MM-dd hh:mm:ss"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2571
    .restart local v19       #secformatter:Ljava/text/SimpleDateFormat;
    :goto_1
    const-string v21, ""

    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    #setter for: Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;
    invoke-static/range {v21 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$902(Lcom/snappy/appypie/HomeActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 2574
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== countdown cdDateFormat : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;
    invoke-static/range {v23 .. v23}, Lcom/snappy/appypie/HomeActivity;->access$900(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p6

    #setter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$1002(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2576
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== checkNotifyTextAfterBefore send : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/snappy/appypie/HomeActivity;->access$1000(Lcom/snappy/appypie/HomeActivity;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;
    invoke-static/range {v22 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$900(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/snappy/appypie/HomeActivity;->cdMillis:J

    .line 2578
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== countdown cdMillis is in : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/snappy/appypie/HomeActivity;->cdMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateFormat:Ljava/util/Date;
    invoke-static/range {v21 .. v21}, Lcom/snappy/appypie/HomeActivity;->access$900(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 2581
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "===== time after if"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2583
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const-class v22, Lcom/snappy/appypie/countDown/CountDownReciever;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2584
    .local v17, intent:Landroid/content/Intent;
    const-string v21, "textNotifyBefore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$1000(Lcom/snappy/appypie/HomeActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2585
    const-string v21, "APPNAME"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x800

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2587
    .local v7, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const-string v22, "alarm"

    invoke-virtual/range {v21 .. v22}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 2588
    .local v4, alarmManager:Landroid/app/AlarmManager;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/snappy/appypie/HomeActivity;->cdMillis:J

    move-wide/from16 v22, v0

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2593
    .end local v4           #alarmManager:Landroid/app/AlarmManager;
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    #setter for: Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;
    invoke-static/range {v21 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$1102(Lcom/snappy/appypie/HomeActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 2594
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== else countdown cdDateAllFormat : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;
    invoke-static/range {v23 .. v23}, Lcom/snappy/appypie/HomeActivity;->access$1100(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p9

    #setter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$1002(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2596
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== checkNotifyTextAfterBefore send 1 : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/snappy/appypie/HomeActivity;->access$1000(Lcom/snappy/appypie/HomeActivity;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;
    invoke-static/range {v22 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$1100(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/snappy/appypie/HomeActivity;->allcdMillis:J

    .line 2599
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== countdown allcdMillis is in : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/snappy/appypie/HomeActivity;->allcdMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->cdDateAllFormat:Ljava/util/Date;
    invoke-static/range {v21 .. v21}, Lcom/snappy/appypie/HomeActivity;->access$1100(Lcom/snappy/appypie/HomeActivity;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 2602
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "===== time after"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const-class v22, Lcom/snappy/appypie/countDown/CountDownReciever;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2605
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v21, "textNotifyBefore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/snappy/appypie/HomeActivity;->checkNotifyTextAfterBefore:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/snappy/appypie/HomeActivity;->access$1000(Lcom/snappy/appypie/HomeActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2606
    const-string v21, "APPNAME"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x800

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2608
    .restart local v7       #contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v21, v0

    const-string v22, "alarm"

    invoke-virtual/range {v21 .. v22}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 2609
    .restart local v4       #alarmManager:Landroid/app/AlarmManager;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/snappy/appypie/HomeActivity;->allcdMillis:J

    move-wide/from16 v22, v0

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2617
    .end local v4           #alarmManager:Landroid/app/AlarmManager;
    .end local v5           #calender:Ljava/util/Calendar;
    .end local v6           #cddateTime:Ljava/lang/String;
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #currentConvertdateTime:Ljava/util/Date;
    .end local v9           #currentDay:Ljava/lang/String;
    .end local v10           #date:Ljava/util/Date;
    .end local v11           #date1:Ljava/util/Date;
    .end local v12           #df:Ljava/text/SimpleDateFormat;
    .end local v14           #formattedDate:Ljava/lang/String;
    .end local v15           #formatter:Ljava/text/SimpleDateFormat;
    .end local v16           #inFormat:Ljava/text/SimpleDateFormat;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #outFormat:Ljava/text/SimpleDateFormat;
    .end local v19           #secformatter:Ljava/text/SimpleDateFormat;
    .end local v20           #str:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 2529
    .restart local v5       #calender:Ljava/util/Calendar;
    .restart local v15       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v19       #secformatter:Ljava/text/SimpleDateFormat;
    :cond_2
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "==== else 12 format"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2530
    new-instance v15, Ljava/text/SimpleDateFormat;

    .end local v15           #formatter:Ljava/text/SimpleDateFormat;
    const-string v21, "yyyy-MM-dd hh:mm:ss"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v15       #formatter:Ljava/text/SimpleDateFormat;
    goto/16 :goto_0

    .line 2564
    .restart local v6       #cddateTime:Ljava/lang/String;
    .restart local v8       #currentConvertdateTime:Ljava/util/Date;
    .restart local v9       #currentDay:Ljava/lang/String;
    .restart local v10       #date:Ljava/util/Date;
    .restart local v11       #date1:Ljava/util/Date;
    .restart local v12       #df:Ljava/text/SimpleDateFormat;
    .restart local v14       #formattedDate:Ljava/lang/String;
    .restart local v16       #inFormat:Ljava/text/SimpleDateFormat;
    .restart local v18       #outFormat:Ljava/text/SimpleDateFormat;
    .restart local v20       #str:Ljava/lang/String;
    :cond_3
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "==== sec else 12 format"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2565
    new-instance v19, Ljava/text/SimpleDateFormat;

    .end local v19           #secformatter:Ljava/text/SimpleDateFormat;
    const-string v21, "dd-MMM-yyyy hh:mm a"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2566
    .restart local v19       #secformatter:Ljava/text/SimpleDateFormat;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "===== gfdfihu : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2613
    .end local v5           #calender:Ljava/util/Calendar;
    .end local v6           #cddateTime:Ljava/lang/String;
    .end local v8           #currentConvertdateTime:Ljava/util/Date;
    .end local v9           #currentDay:Ljava/lang/String;
    .end local v10           #date:Ljava/util/Date;
    .end local v11           #date1:Ljava/util/Date;
    .end local v12           #df:Ljava/text/SimpleDateFormat;
    .end local v14           #formattedDate:Ljava/lang/String;
    .end local v15           #formatter:Ljava/text/SimpleDateFormat;
    .end local v16           #inFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #outFormat:Ljava/text/SimpleDateFormat;
    .end local v19           #secformatter:Ljava/text/SimpleDateFormat;
    .end local v20           #str:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 2615
    .local v13, ex:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$27;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$27;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocationDating()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocationFirstTime()Ljava/lang/String;
    .locals 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4223
    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v6, v6, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v11, v10, v12

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v11, v10, v13

    invoke-virtual {v6, v10}, Lcom/snappy/appypie/PermissionManager;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4225
    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->getGPSLocation()V
    invoke-static {v6}, Lcom/snappy/appypie/HomeActivity;->access$2500(Lcom/snappy/appypie/HomeActivity;)V

    .line 4228
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== applatitude in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4229
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== applongititude in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4230
    sget-object v6, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 4231
    .local v2, dlat:D
    sget-object v6, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 4233
    .local v4, dlong:D
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== dlat in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4234
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== dlong in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4237
    new-instance v1, Landroid/location/Geocoder;

    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    .line 4239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 4241
    .local v1, geocoder:Landroid/location/Geocoder;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 4243
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== addresses in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4244
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 4245
    .local v0, CityName:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== CityName in getCurrentLocation method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4246
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4247
    .local v8, cityname:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v8, v6

    iput-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->cityNameforset:Ljava/lang/String;

    .line 4248
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== cityNameforset in getCurrentLocation method 1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->cityNameforset:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4252
    .end local v0           #CityName:Ljava/lang/String;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #cityname:[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->cityNameforset:Ljava/lang/String;

    return-object v6

    .line 4249
    :catch_0
    move-exception v9

    .line 4250
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3729
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceApiLevel()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1483
    .local v0, deviceVersion:I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== model : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1485
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3827
    sget-object v0, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    invoke-virtual {v0}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropboxChooser()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/dropbox/chooser/android/DbxChooser;

    const-string v2, "10nuw2spys824y3"

    invoke-direct {v1, v2}, Lcom/dropbox/chooser/android/DbxChooser;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->mChooser:Lcom/dropbox/chooser/android/DbxChooser;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$202(Lcom/snappy/appypie/HomeActivity;Lcom/dropbox/chooser/android/DbxChooser;)Lcom/dropbox/chooser/android/DbxChooser;

    .line 1441
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    sget-object v1, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->DIRECT_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    iput-object v1, v0, Lcom/snappy/appypie/HomeActivity;->resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    .line 1442
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->mChooser:Lcom/dropbox/chooser/android/DbxChooser;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$200(Lcom/snappy/appypie/HomeActivity;)Lcom/dropbox/chooser/android/DbxChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v1, v1, Lcom/snappy/appypie/HomeActivity;->resultType:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    invoke-virtual {v0, v1}, Lcom/dropbox/chooser/android/DbxChooser;->forResultType(Lcom/dropbox/chooser/android/DbxChooser$ResultType;)Lcom/dropbox/chooser/android/DbxChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/16 v2, 0x3fe

    .line 1443
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/chooser/android/DbxChooser;->launch(Landroid/app/Activity;I)V

    .line 1445
    return-void
.end method

.method public getFileForm(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "imgname"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4805
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4806
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public getHeaderBGImg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3474
    sget-object v0, Lcom/snappy/appypie/utils/AppHeaderBG;->strJsonBgHeader:Ljava/lang/String;

    .line 3475
    .local v0, strJsonBgHeader:Ljava/lang/String;
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealPathFromURIForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "contentUri"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4811
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4812
    .local v2, uri:Landroid/net/Uri;
    const-string v0, ""

    .line 4813
    .local v0, filePath:Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 4815
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v3, v2}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_BelowAPI11(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 4823
    .end local v0           #filePath:Ljava/lang/String;
    .local v1, filePath:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4818
    .end local v1           #filePath:Ljava/lang/String;
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 4819
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v3, v2}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API11to18(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 4820
    .end local v0           #filePath:Ljava/lang/String;
    .restart local v1       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 4822
    .end local v1           #filePath:Ljava/lang/String;
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v3, v2}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 4823
    .end local v0           #filePath:Ljava/lang/String;
    .restart local v1       #filePath:Ljava/lang/String;
    goto :goto_0
.end method

.method public getRealPathURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4272
    const-string v1, ""

    .line 4274
    .local v1, realPath:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 4275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4276
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file:/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4278
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4298
    :cond_1
    :goto_0
    return-object v1

    .line 4280
    :cond_2
    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4281
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4282
    .local v0, manufactures:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_3

    .line 4283
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_BelowAPI11ForVideo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4285
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    .line 4287
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API11to18ForVideo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4292
    :cond_4
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->getRealPathFromURI_API19ForVideo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRestaurantMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "dropoff"
    .parameter "pickup"
    .parameter "customerId"
    .parameter "ownerId"
    .parameter "orderId"
    .parameter "appId"
    .parameter "pageTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1607
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/restaurant/FetcherMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1608
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dropoff"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    const-string v1, "pickup"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    const-string v1, "customerId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    const-string v1, "ownerId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    const-string v1, "orderId"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    const-string v1, "appId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1616
    return-void
.end method

.method public getStreamFrameLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "streamUrl"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3065
    const-string v0, ""

    return-object v0
.end method

.method public goForCreditCardPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "cnumber"
    .parameter "ExpairyMonth"
    .parameter "ExpairyYear"
    .parameter "cvvCode"
    .parameter "cHolder"
    .parameter "totalAmount"
    .parameter "orderId"
    .parameter "stripe_client_id"
    .parameter "stripe_secret_key"
    .parameter "cunrcy"
    .parameter "discriptionn"
    .parameter "pageType"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4063
    new-instance v9, Lcom/stripe/android/model/Card;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {v9, p1, v1, v2, v0}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 4065
    .local v9, card:Lcom/stripe/android/model/Card;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/stripe/android/model/Card;->setName(Ljava/lang/String;)V

    .line 4067
    const/4 v10, 0x0

    .line 4069
    .local v10, isError:Z
    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->validateCard()Z

    move-result v11

    .line 4073
    .local v11, validation:Z
    if-eqz v11, :cond_1

    .line 4075
    new-instance v12, Lcom/stripe/android/Stripe;

    invoke-direct {v12}, Lcom/stripe/android/Stripe;-><init>()V

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$25;

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$25;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v12, v9, v0, v1}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V

    .line 4147
    :goto_0
    if-eqz v10, :cond_0

    .line 4149
    const-string v1, "food"

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4151
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:foodSubmitOrderByStripe(null);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 4183
    :cond_0
    :goto_1
    return-void

    .line 4130
    :cond_1
    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4131
    const/4 v10, 0x1

    .line 4132
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "stripeon native:The card number that you entered is invalid"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4133
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "card"

    iput-object v2, v1, Lcom/snappy/appypie/HomeActivity;->validationError:Ljava/lang/String;

    goto :goto_0

    .line 4134
    :cond_2
    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4135
    const/4 v10, 0x1

    .line 4136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "stripeon native:The expiration date that you entered is invalid"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4137
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "expdate"

    iput-object v2, v1, Lcom/snappy/appypie/HomeActivity;->validationError:Ljava/lang/String;

    goto :goto_0

    .line 4138
    :cond_3
    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4139
    const/4 v10, 0x1

    .line 4140
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "stripeon native:The CVC code that you entered is invalid"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4141
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "cvc"

    iput-object v2, v1, Lcom/snappy/appypie/HomeActivity;->validationError:Ljava/lang/String;

    goto :goto_0

    .line 4143
    :cond_4
    const/4 v10, 0x1

    .line 4144
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "stripeon native:The card details that you entered are invalid"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4145
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "else"

    iput-object v2, v1, Lcom/snappy/appypie/HomeActivity;->validationError:Ljava/lang/String;

    goto :goto_0

    .line 4153
    :cond_5
    const-string v1, "foodCourt"

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4155
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:foodCourtSubmitOrderByStripe(null);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 4157
    :cond_6
    const-string v1, "login"

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4160
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$26;

    invoke-direct {v2, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$26;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4169
    :cond_7
    const-string v1, "ecom"

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4171
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:submitOrderByStripe(null);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4172
    :cond_8
    const-string v1, "accommodation"

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4174
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:hotelSubmitOrderByStripe(null);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4178
    :cond_9
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->cordovaWebView:Lorg/apache/cordova/engine/SystemWebView;

    const-string v2, "javascript:stripePaymentCallbackInFormbuilder(null);"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public hideWebViewFragment()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$40;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$40;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5041
    return-void
.end method

.method public hyperLocalPostUpdateJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "catId"
    .parameter "heading"
    .parameter "chargingCost"
    .parameter "amountCurrency"
    .parameter "workingHours"
    .parameter "summary"
    .parameter "youtubeUrl"
    .parameter "emailLabel"
    .parameter "email"
    .parameter "urlLabel"
    .parameter "url"
    .parameter "callLabel"
    .parameter "call"
    .parameter "addressLabel"
    .parameter "address"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "launchMap"
    .parameter "appId"
    .parameter "userEmail"
    .parameter "appUserName"
    .parameter "listId"
    .parameter "bodyImage"
    .parameter "imagefinalArray"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4603
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/hyperlocal/mobile-add-job-data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4604
    .local v1, apiUrl:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4605
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "catId"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4606
    const-string v2, "heading"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4607
    const-string v2, "chargingCost"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4608
    const-string v2, "amountCurrency"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4609
    const-string v2, "workingHours"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4610
    const-string v2, "summary"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4611
    const-string v2, "youtubeUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4612
    const-string v2, "emailLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4613
    const-string v2, "email"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4614
    const-string v2, "urlLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4615
    const-string v2, "url"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4616
    const-string v2, "callLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4617
    const-string v2, "call"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4620
    const-string v2, "addressLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4621
    const-string v2, "address"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4622
    const-string v2, "latitude"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4623
    const-string v2, "longitude"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4624
    const-string v2, "launchMap"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4625
    const-string v2, "appId"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4626
    const-string v2, "userEmail"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4627
    const-string v2, "appUserName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4628
    const-string v2, "bodyImage"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4631
    const-string v2, "listId"

    if-nez p22, :cond_3

    const-string p22, ""

    .end local p22
    :cond_0
    :goto_0
    move-object/from16 v0, p22

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4632
    const-string v2, "latitude"

    if-nez p16, :cond_5

    const-string p16, ""

    .end local p16
    :cond_1
    :goto_1
    move-object/from16 v0, p16

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    const-string v2, "longitude"

    if-nez p17, :cond_7

    const-string p17, ""

    .end local p17
    :cond_2
    :goto_2
    move-object/from16 v0, p17

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4635
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v5, 0x0

    new-instance v6, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$31;

    invoke-direct {v6, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$31;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    move-object/from16 v4, p24

    invoke-static/range {v1 .. v6}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V

    .line 4696
    .end local v1           #apiUrl:Ljava/lang/String;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 4631
    .restart local v1       #apiUrl:Ljava/lang/String;
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p16
    .restart local p17
    .restart local p22
    :cond_3
    const-string v4, "null"

    move-object/from16 v0, p22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p22, ""

    goto :goto_0

    :cond_4
    invoke-virtual/range {p22 .. p22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string p22, ""

    goto :goto_0

    .line 4632
    .end local p22
    :cond_5
    const-string v4, "null"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p16, ""

    goto :goto_1

    :cond_6
    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string p16, ""

    goto :goto_1

    .line 4633
    .end local p16
    :cond_7
    const-string v4, "null"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p17, ""

    goto :goto_2

    :cond_8
    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    const-string p17, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4692
    .end local v1           #apiUrl:Ljava/lang/String;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p17
    :catch_0
    move-exception v7

    .line 4694
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public intializeGeoFance(Ljava/lang/String;)V
    .locals 2
    .parameter "var"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 5013
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$39;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$39;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5021
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4700
    const/4 v1, 0x0

    .line 4703
    .local v1, locationMode:I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 4705
    :try_start_0
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v5}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 4706
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    .line 4705
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4712
    :goto_0
    if-eqz v1, :cond_1

    .line 4718
    :cond_0
    :goto_1
    return v3

    .line 4708
    :catch_0
    move-exception v0

    .line 4709
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 4712
    goto :goto_1

    .line 4715
    :cond_2
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    .line 4716
    invoke-virtual {v5}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    .line 4715
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4718
    .local v2, locationProviders:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method public loadWebData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "webData"
    .parameter "headerData"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3871
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v3, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3872
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3873
    const-string v2, "headerData"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3874
    const-string v2, "headerName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3876
    if-eqz p3, :cond_0

    const-string v2, "true"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3878
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3880
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 3890
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3886
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public loginWithFacebook()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$22;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$22;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3747
    return-void
.end method

.method public open360ImageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "webPageName"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3430
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3431
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "isShowNaviagtion"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3432
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3433
    const-string v2, "headerName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3434
    const-string v2, "shareUrlCheck"

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3435
    const-string v2, "isAlwaysLandscapMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3437
    if-eqz p3, :cond_0

    const-string v2, "true"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3439
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3441
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 3449
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3446
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openAudioRecorder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "headerTitle"
    .parameter "PageRequester"
    .parameter "Id"
    .parameter "languageSetting"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1896
    .local v1, value1:Ljava/util/Map;
    const-string v4, "headerTitle"

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    const-string v4, "languageSetting"

    invoke-interface {v1, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1901
    .local v2, value2:Ljava/util/Map;
    const-string v4, "PageRequester"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1905
    .local v3, value3:Ljava/util/Map;
    const-string v4, "Id"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1911
    iget-object v4, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v4, v4, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.permission.RECORD_AUDIO"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v7, v5, v6

    sget v6, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v7, Lcom/snappy/appypie/pocketTools/audioRecorder/AudioRecordingActivity;

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 1913
    return-void
.end method

.method public openBarcodeScanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "headerTitle"
    .parameter "languages"
    .parameter "checkNativeBrowser"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1848
    .local v1, value1:Ljava/util/Map;
    const-string v3, "headerTitle"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const-string v3, "checkNativeBrowser"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    const-string v3, ""

    if-eq p2, v3, :cond_0

    .line 1852
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1853
    .local v2, value2:Ljava/util/Map;
    const-string v3, "Language"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
    .end local v2           #value2:Ljava/util/Map;
    :cond_0
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    sget v5, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v6, Lcom/snappy/appypie/pocketTools/BarcodeScannerActivity;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 1860
    return-void
.end method

.method public openCRMWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "crmType"
    .parameter "quoteData"
    .parameter "headerData"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://login.salesforce.com/services/oauth2/authorize?response_type=code&client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri=https://snappy.appypie.com/CRM/saleforce/success.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v4, Lcom/snappy/appypie/CRMWebviewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1597
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1598
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "crmType"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "quoteData"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1601
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "headerData"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1603
    return-void
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 2
    .parameter "headerTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$4;

    invoke-direct {v1, p0, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$4;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1825
    return-void
.end method

.method public openChat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "value"
    .parameter "username"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2218
    const-string v2, "skype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2219
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.skype.raider"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2221
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 2222
    const-string v2, "username"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v1, sky:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2226
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2240
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sky:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v2, "linechat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2242
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "jp.naver.line.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2244
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_7

    .line 2245
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    const-string v2, "whatsapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2255
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.whatsapp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2257
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_8

    .line 2258
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2266
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    const-string v2, "wechat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2268
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2270
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_9

    .line 2271
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2279
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    :goto_3
    const-string v2, "snapchat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2281
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.snapchat.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2283
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_a

    .line 2284
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2290
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    :goto_4
    const-string v2, "line"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2292
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "jp.naver.line.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2294
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_b

    .line 2295
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2301
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    :goto_5
    return-void

    .line 2235
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.skype.raider"

    .line 2236
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2235
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2247
    :cond_7
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=jp.naver.line.android"

    .line 2248
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2247
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2260
    :cond_8
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.whatsapp"

    .line 2261
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2260
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2273
    :cond_9
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.tencent.mm"

    .line 2274
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2273
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 2286
    :cond_a
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.snapchat.android"

    .line 2287
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2286
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 2297
    :cond_b
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=jp.naver.line.android"

    .line 2298
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2297
    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method public openDeepLink(Ljava/lang/String;)V
    .locals 10
    .parameter "deepLinkUrl"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2435
    const-string v7, "id="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, deepLinkURLPKGName:[Ljava/lang/String;
    const-string v2, ""

    .line 2438
    .local v2, dpUrl:Ljava/lang/String;
    aget-object v7, v0, v9

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2439
    aget-object v7, v0, v9

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2440
    .local v1, deepLinkUrlArray:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v2, v1, v7

    .line 2446
    .end local v1           #deepLinkUrlArray:[Ljava/lang/String;
    :goto_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deeplink url==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2448
    :try_start_0
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v7, v2}, Lcom/snappy/appypie/HomeActivity;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2449
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2450
    .local v6, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2451
    .local v4, intent1:Landroid/content/Intent;
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v7, v4}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    .end local v4           #intent1:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 2444
    :cond_0
    aget-object v2, v0, v9

    goto :goto_0

    .line 2453
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v7}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2454
    .local v5, intentValue:Landroid/content/Intent;
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v7, v5}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2457
    .end local v5           #intentValue:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 2458
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public openEpubFile(Ljava/lang/String;)V
    .locals 5
    .parameter "epubUrls"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "epub loading"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/eReader/EPUBViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3270
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "BOOKCODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3271
    const-string v1, "TITLE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3272
    const-string v1, "AUTHOR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3273
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3274
    const-string v1, "POSITION"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 3275
    const-string v1, "THEMEINDEX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3276
    const-string v1, "DOUBLEPAGED"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3277
    const-string v1, "transitionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3278
    const-string v1, "GLOBALPAGINATION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3279
    const-string v1, "RTL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3280
    const-string v1, "VERTICALWRITING"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3281
    const-string v1, "SPREAD"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3282
    const-string v1, "ORIENTATION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3283
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3284
    return-void
.end method

.method public openImageGallary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "imageUrls"
    .parameter "clickedPosition"
    .parameter "picsLike"
    .parameter "picsComment"
    .parameter "picsText"
    .parameter "photoShareCheck"
    .parameter "picsTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3075
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "image loading "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3076
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/imageviewer/ImageGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3077
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3078
    const-string v1, "bigImageUrls"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3079
    const-string v1, "pictext"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3080
    const-string v1, "piclikes"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3081
    const-string v1, "piccomments"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3082
    const-string v1, "photoShare"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    const-string v1, "picsTitle"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3084
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3085
    return-void
.end method

.method public openImageSelectorDialog(I)V
    .locals 4
    .parameter "request_code"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2076
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Take Photo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Select from Gallery"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Cancel"

    aput-object v3, v1, v2

    .line 2077
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const v3, 0x7f0b0098

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2079
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$6;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;[Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2106
    return-void
.end method

.method public openLocationSetting()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$32;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$32;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4731
    return-void
.end method

.method public openMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "headerTitle"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1732
    const-string v5, "====="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    if-eqz p2, :cond_2

    const-string v5, "true"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1736
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v8, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5, v6}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1737
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "headerData"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "headerName"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1741
    :cond_0
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "url"

    const-string v7, "https://maps.google.com/maps?q=0.0,0.0&t=m&z=16"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    :goto_0
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1747
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v5, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 1785
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_1
    return-void

    .line 1743
    :cond_1
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "url"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://maps.google.com/maps?q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&t=m&z=16"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1751
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1753
    .local v2, value1:Ljava/util/Map;
    const-string v5, "headerData"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1756
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1757
    .local v3, value2:Ljava/util/Map;
    const-string v5, "headerName"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1760
    sget-object v5, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 1763
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1764
    .local v4, value3:Ljava/util/Map;
    const-string v5, "url"

    const-string v6, "http://maps.google.com/maps?q=0.0,0.0&t=m&z=16"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    :goto_2
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v5, v5, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v8, v6, v7

    sget v7, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v8, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1769
    .end local v4           #value3:Ljava/util/Map;
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1770
    .restart local v4       #value3:Ljava/util/Map;
    const-string v5, "url"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->applatitude:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/snappy/appypie/HomeActivity;->applongititude:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&t=m&z=16"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public openMapView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "subText"
    .parameter "type"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2399
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v3, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2401
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://maps.google.com/maps?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&t=m&z=16"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2402
    const-string v2, "headerData"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2403
    const-string v2, "headerName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2404
    if-eqz p3, :cond_0

    const-string v2, "true"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2406
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2408
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 2417
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2414
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openMapViewGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "subText"
    .parameter "lat"
    .parameter "lon"
    .parameter "type"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2422
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 2423
    .local v4, latt:D
    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 2425
    .local v2, latgg:D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "geo:0,0?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2426
    .local v0, gmmIntentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2427
    .local v1, mapIntent:Landroid/content/Intent;
    const-string v6, "com.google.android.apps.maps"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2428
    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v6}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2430
    iget-object v6, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v6, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2432
    :cond_0
    return-void
.end method

.method public openPayFast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "htmlData"
    .parameter "pageType"
    .parameter "pageTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Lcom/snappy/appypie/payment/PayFastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3794
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "htmldata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3795
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bashUrl"

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3796
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3797
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3798
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3799
    return-void
.end method

.method public openPaypal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "htmlData"
    .parameter "pageType"
    .parameter "pageTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Lcom/snappy/appypie/payment/PaypalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3780
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "htmldata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3781
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bashUrl"

    sget-object v2, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3782
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3783
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3784
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3785
    return-void
.end method

.method public openPayuView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "amount"
    .parameter "orderid"
    .parameter "appId"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "email"
    .parameter "mobile"
    .parameter "key"
    .parameter "salt"
    .parameter "baseUrl"
    .parameter "pageType"
    .parameter "pageTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3755
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/payment/AppypiePayUActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3756
    .local v0, i:Landroid/content/Intent;
    const-string v1, "amount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3757
    const-string v1, "orderid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3758
    const-string v1, "appId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3759
    const-string v1, "firstName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3760
    const-string v1, "lastName"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3761
    const-string v1, "email"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3762
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3763
    const-string v1, "key"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3764
    const-string v1, "salt"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3765
    const-string v1, "baseUrl"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3766
    const-string v1, "pageType"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3767
    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3768
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3770
    return-void
.end method

.method public openPdfFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "pdfUrls"
    .parameter "checkForOpenInNativeBrowser"
    .parameter "pagetitle"
    .parameter "headerBarBackgroundColor"
    .parameter "headerBarTextColor"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3100
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3110
    .local v13, deviceMan:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pdf loading"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/snappy/appypie/HomeActivity;->appId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3111
    const-string v4, "drive.google.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "docs.google.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3113
    :cond_0
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3114
    .local v16, intent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3116
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3204
    .end local v16           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3118
    .restart local v16       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 3119
    .local v14, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v5, "Unable to Open pdf from drive"

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3125
    .end local v14           #e:Landroid/content/ActivityNotFoundException;
    .end local v16           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/E-Book"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3127
    .local v6, absolutePath:Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%20"

    const-string v8, " "

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    const-string v8, ""

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3128
    .local v15, filename:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    .local v7, tempFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/snappy/appypie/utils/StaticData;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    move-object/from16 v17, v0

    new-instance v4, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$15;

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    invoke-direct/range {v4 .. v12}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$15;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3181
    :cond_2
    const-string v4, "YES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3182
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->openExternalpdf(Ljava/io/File;)V

    goto/16 :goto_0

    .line 3185
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->openMySdkpdf(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public openPedometer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "headerTitle"
    .parameter "languageSetting"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1932
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1933
    .local v1, value1:Ljava/util/Map;
    const-string v2, "headerTitle"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    const-string v2, "languageSetting"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, v2, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    sget v4, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v5, Lcom/snappy/appypie/pocketTools/pedometer/PedometerActivity;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 1939
    return-void
.end method

.method public openSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "smsNumber"
    .parameter "msg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1829
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1831
    .local v6, value1:Ljava/util/Map;
    const-string v0, "sms_body"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v0, v0, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    sget v2, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_ACTION:I

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsto:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1838
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1837
    invoke-virtual/range {v0 .. v5}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    .line 1839
    return-void
.end method

.method public openTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "openTableData"
    .parameter "header"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4758
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v3, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4759
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4760
    const-string v2, "headerData"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4761
    const-string v2, "headerName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4763
    if-eqz p3, :cond_0

    const-string v2, "true"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4765
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4767
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 4778
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 4773
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openTorch(Ljava/lang/String;)V
    .locals 6
    .parameter "headerTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2005
    .local v1, value1:Ljava/util/Map;
    const-string v2, "headerTitle"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v2, v2, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v3, v4

    sget v4, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v5, Lcom/snappy/appypie/pocketTools/TorchActivity;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 2010
    return-void
.end method

.method public openVideoRecorder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "headerTitle"
    .parameter "Language"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1919
    .local v1, value1:Ljava/util/Map;
    const-string v3, "headerTitle"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1921
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1922
    .local v2, value2:Ljava/util/Map;
    const-string v3, "Language"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1924
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    sget v5, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v6, Lcom/snappy/appypie/pocketTools/videoRecorder/VideoRecorderActivity;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 1927
    return-void
.end method

.method public openWebSiteView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "url"
    .parameter "inAppNavigation"
    .parameter "websiteAuthCheckCheck"
    .parameter "nativeOsBrowser"
    .parameter "webPageName"
    .parameter "isBottom"
    .parameter "websideLength"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3333
    :try_start_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/snappy/appypie/HomeActivity;->websideLength:I
    invoke-static {v1, v2}, Lcom/snappy/appypie/HomeActivity;->access$1902(Lcom/snappy/appypie/HomeActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    :goto_0
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->AdvtStatus:Lcom/snappy/appypie/advertisement/Ads_req_type;

    sget-object v2, Lcom/snappy/appypie/advertisement/Ads_req_type;->ADMOB:Lcom/snappy/appypie/advertisement/Ads_req_type;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/snappy/appypie/advertisement/googleAdmob/Admob;->isInterestialReady:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3340
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->displayMobileAds()V

    .line 3341
    iget-object v12, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$17;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$17;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3426
    :goto_1
    return-void

    .line 3334
    :catch_0
    move-exception v9

    .line 3337
    .local v9, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v2, 0x1

    #setter for: Lcom/snappy/appypie/HomeActivity;->websideLength:I
    invoke-static {v1, v2}, Lcom/snappy/appypie/HomeActivity;->access$1902(Lcom/snappy/appypie/HomeActivity;I)I

    goto :goto_0

    .line 3389
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "true"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3390
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3391
    .local v10, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3392
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v10}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3395
    .end local v10           #i:Landroid/content/Intent;
    :cond_1
    new-instance v11, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3396
    .local v11, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3397
    const-string v1, "isShowNaviagtion"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3401
    :goto_2
    const-string v1, "url"

    invoke-virtual {v11, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3402
    const-string v1, "headerName"

    move-object/from16 v0, p5

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3404
    if-eqz p6, :cond_3

    const-string v1, "true"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->websideLength:I
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$1900(Lcom/snappy/appypie/HomeActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3407
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v1, v11}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto :goto_1

    .line 3399
    :cond_2
    const-string v1, "isShowNaviagtion"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 3412
    :cond_3
    if-eqz p6, :cond_4

    const-string v1, "true"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->websideLength:I
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$1900(Lcom/snappy/appypie/HomeActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 3414
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 3416
    .local v8, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v1, v8}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 3422
    .end local v8           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v1, v11}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public openWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "headerData"
    .parameter "fromPage"
    .parameter "isBottom"
    .parameter "enableNavigation"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1536
    :try_start_0
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1538
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v5, Lcom/snappy/appypie/WebsiteViewActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1539
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "headerData"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "headerName"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EnableNavigation"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromPage"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    if-eqz p4, :cond_1

    const-string v2, "true"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1548
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1549
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->openWebsiteFragment(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/snappy/appypie/HomeActivity;->access$400(Lcom/snappy/appypie/HomeActivity;Landroid/os/Bundle;)V

    .line 1569
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1552
    :cond_1
    const-string v2, "flipkart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://fkrt.it"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1553
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Lcom/snappy/appypie/FlipkartWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1555
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v2, "headerName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1565
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1560
    :cond_3
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v3

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public openWebViewhtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "headerData"
    .parameter "fromPage"
    .parameter "isBottom"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-class v3, Lcom/snappy/appypie/WebviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1579
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "headerData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "headerName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromPage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/snappy/appypie/HomeActivity;->startWebsiteViewActivty(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$500(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :goto_0
    return-void

    .line 1586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public openWhatsAppNative(Ljava/lang/String;)V
    .locals 9
    .parameter "no"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1455
    :try_start_0
    const-string v1, "com.whatsapp"

    .line 1456
    .local v1, appPackageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v6, "com.whatsapp"

    invoke-virtual {v5, v6}, Lcom/snappy/appypie/HomeActivity;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v3

    .line 1457
    .local v3, isAppInstalled:Z
    if-eqz v3, :cond_0

    .line 1458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smsto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1460
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1461
    .local v0, LaunchIntent:Landroid/content/Intent;
    const-string v5, "com.whatsapp"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v5, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1475
    .end local v0           #LaunchIntent:Landroid/content/Intent;
    .end local v1           #appPackageName:Ljava/lang/String;
    .end local v3           #isAppInstalled:Z
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1466
    .restart local v1       #appPackageName:Ljava/lang/String;
    .restart local v3       #isAppInstalled:Z
    :cond_0
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "http://play.google.com/store/apps/details?id=com.whatsapp"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1467
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v6, "Application is not currently installed."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1471
    .end local v1           #appPackageName:Ljava/lang/String;
    .end local v3           #isAppInstalled:Z
    :catch_0
    move-exception v2

    .line 1473
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openYouTubeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "webPageName"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3454
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3455
    .local v1, videoIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3459
    :try_start_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3464
    :goto_0
    return-void

    .line 3460
    :catch_0
    move-exception v0

    .line 3462
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "manoj kuamr:::video::"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openbarcodeReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "headerTitle"
    .parameter "languages"
    .parameter "checkNativeBrowser"
    .parameter "barcode_url"
    .parameter "barcode_db"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1870
    .local v1, value1:Ljava/util/Map;
    const-string v3, "headerTitle"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const-string v3, "checkNativeBrowser"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    const-string v3, "barcode_url"

    invoke-interface {v1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    const-string v3, "barcode_db"

    invoke-interface {v1, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    const-string v3, "frombarcodeReader"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    const-string v3, ""

    if-eq p2, v3, :cond_0

    .line 1877
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1878
    .local v2, value2:Ljava/util/Map;
    const-string v3, "Language"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    .end local v2           #value2:Ljava/util/Map;
    :cond_0
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    sget v5, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v6, Lcom/snappy/appypie/pocketTools/BarcodeScannerActivity;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 1885
    return-void
.end method

.method public pauseAds()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$7;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$7;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2122
    return-void
.end method

.method public paymentViaGoogleIAP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "productId"
    .parameter "publicKey"
    .parameter "paymentType"
    .parameter "pageType"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3689
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native paymentViaGoogleIAP productId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3690
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native paymentViaGoogleIAP publicKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3694
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/snappy/appypie/HomeActivity;->pageType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$2002(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3696
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$21;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$21;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3725
    return-void
.end method

.method public playAudioUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "jsonString"
    .parameter "audioType"
    .parameter "defaultImageUrl"
    .parameter "channelName"
    .parameter "enableautoplay"
    .parameter "headerTitle"
    .parameter "dynamicsongListTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method Name : playAudioUrls \nstreamUrls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###audioType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###defaultImageUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###channelName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###channelName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###enableautoplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->printAllPramasOfMethod(Ljava/lang/String;)V

    .line 2961
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/radioStream/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2962
    .local v0, intent:Landroid/content/Intent;
    sput-object p1, Lcom/snappy/appypie/HomeActivity;->AudioPlayerValue:Ljava/lang/String;

    .line 2964
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2965
    const-string v1, "pageName"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2966
    const-string v1, "imageurl"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2967
    const-string v1, "enableAutoPlay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2968
    const-string v1, "channalName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2969
    const-string v1, "songListTitle"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2970
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2972
    sget-object v1, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    invoke-virtual {v1}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->isSOFileDownlaoded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2974
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->storeIntent(Landroid/content/Intent;)V

    .line 2980
    :goto_0
    return-void

    .line 2978
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public playDefaultVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "mvideoUrl"
    .parameter "mvideoJsonData"
    .parameter "mindexOfVideo"
    .parameter "pageTitle"
    .parameter "openInNativeBrowser"
    .parameter "enableShare"
    .parameter "enableCastscreen"
    .parameter "enableAutoPlay"
    .parameter "shareLayoutValue"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2766
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Method Name : playLiveSteamVideo \nmvideoJsonData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###mindexOfVideo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###pageTitle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###openInNativeBrowser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableShare="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableCastscreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableAutoPlay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->printAllPramasOfMethod(Ljava/lang/String;)V

    .line 2767
    const-string v9, "0"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2769
    new-instance v7, Landroid/content/Intent;

    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v10, Lcom/snappy/appypie/exoplayer/ExoVideoPlayerActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2770
    .local v7, intent:Landroid/content/Intent;
    const-string v9, "videoJsonData"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2773
    .local v2, arraya:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 2774
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2775
    .local v8, obj:Lorg/json/JSONObject;
    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2776
    .local v1, UrlName:Ljava/lang/String;
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2773
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2778
    .end local v1           #UrlName:Ljava/lang/String;
    .end local v2           #arraya:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v8           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 2779
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2781
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/String;

    .line 2782
    .local v5, extensions:[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 2783
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/snappy/appypie/eReader/epub/SkyUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    .line 2782
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2785
    :cond_1
    const-string v9, "videoIndexData"

    invoke-virtual {v7, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2786
    const-string v9, "videopageTitle"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2787
    const-string v9, "videoopenInNativeBrowser"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    const-string v9, "videoenableShare"

    move-object/from16 v0, p6

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2789
    const-string v9, "videoenableCastscreen"

    move-object/from16 v0, p7

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2790
    const-string v9, "videoenableAutoPlay"

    move-object/from16 v0, p8

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2791
    const-string v9, "videoshareLayoutValue"

    move-object/from16 v0, p9

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2792
    const-string v9, "pageName"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2793
    const-string v9, "videoURL"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2794
    const-string v10, "lastOrientation"

    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2797
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/snappy/appypie/HomeActivity;->videoposition:I

    .line 2798
    const-string v9, "position"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/snappy/appypie/HomeActivity;->videoposition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2803
    :goto_2
    const-string v9, "prefer_extension_decoders"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2804
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2805
    const-string v9, "extension_list"

    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2806
    const-string v9, "com.google.android.exoplayer.demo.action.VIEW"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2807
    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v9, v7}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2817
    .end local v5           #extensions:[Ljava/lang/String;
    .end local v6           #i:I
    :goto_3
    return-void

    .line 2799
    .restart local v5       #extensions:[Ljava/lang/String;
    .restart local v6       #i:I
    :catch_1
    move-exception v4

    .line 2800
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2801
    const-string v9, "position"

    const-string v10, "0"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2811
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #extensions:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2812
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2813
    .local v3, data:Landroid/net/Uri;
    const-string v9, "video/*"

    invoke-virtual {v7, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2814
    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v9, v7}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public playLiveSteamVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "mvideoUrl"
    .parameter "mvideoJsonData"
    .parameter "mindexOfVideo"
    .parameter "pageTitle"
    .parameter "openInNativeBrowser"
    .parameter "enableShare"
    .parameter "enableCastscreen"
    .parameter "enableAutoPlay"
    .parameter "shareLayoutValue"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2710
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Method Name : playLiveSteamVideo \nmvideoJsonData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###mindexOfVideo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###pageTitle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###openInNativeBrowser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableShare="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableCastscreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "###enableAutoPlay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->printAllPramasOfMethod(Ljava/lang/String;)V

    .line 2711
    const-string v9, "0"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2712
    new-instance v7, Landroid/content/Intent;

    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v10, Lcom/snappy/appypie/exoplayer/ExoVideoPlayerActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2713
    .local v7, intent:Landroid/content/Intent;
    const-string v9, "videoJsonData"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2715
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2716
    .local v2, arraya:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 2717
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2718
    .local v8, obj:Lorg/json/JSONObject;
    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2719
    .local v1, UrlName:Ljava/lang/String;
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2721
    .end local v1           #UrlName:Ljava/lang/String;
    .end local v2           #arraya:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v8           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 2722
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2724
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/String;

    .line 2725
    .local v5, extensions:[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 2726
    sget-object v9, Lcom/snappy/appypie/HomeActivity;->Videolist:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/snappy/appypie/eReader/epub/SkyUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    .line 2725
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2728
    :cond_1
    const-string v9, "videoIndexData"

    invoke-virtual {v7, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2729
    const-string v9, "videopageTitle"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2730
    const-string v9, "videoopenInNativeBrowser"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    const-string v9, "videoenableShare"

    move-object/from16 v0, p6

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2732
    const-string v9, "videoenableCastscreen"

    move-object/from16 v0, p7

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2733
    const-string v9, "videoenableAutoPlay"

    move-object/from16 v0, p8

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    const-string v9, "videoshareLayoutValue"

    move-object/from16 v0, p9

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    const-string v9, "pageName"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2736
    const-string v10, "lastOrientation"

    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2737
    const-string v9, "videoURL"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2739
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/snappy/appypie/HomeActivity;->videoposition:I

    .line 2740
    const-string v9, "position"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/snappy/appypie/HomeActivity;->videoposition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2745
    :goto_2
    const-string v9, "prefer_extension_decoders"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2746
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2747
    const-string v9, "extension_list"

    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2748
    const-string v9, "com.google.android.exoplayer.demo.action.VIEW"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2749
    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v9, v7}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2756
    .end local v5           #extensions:[Ljava/lang/String;
    .end local v6           #i:I
    :goto_3
    return-void

    .line 2741
    .restart local v5       #extensions:[Ljava/lang/String;
    .restart local v6       #i:I
    :catch_1
    move-exception v4

    .line 2742
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2743
    const-string v9, "position"

    const-string v10, "0"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2751
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #extensions:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2752
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2753
    .local v3, data:Landroid/net/Uri;
    const-string v9, "video/*"

    invoke-virtual {v7, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2754
    iget-object v9, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v9, v7}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public playRadioStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "streamUrl"
    .parameter "playerBGImage"
    .parameter "disableAutoalbumCheck"
    .parameter "radioPlsType"
    .parameter "channelName"
    .parameter "enableAutoPlay"
    .parameter "pageName"
    .parameter "isFitScreen"
    .parameter "songInnerIndex"
    .parameter "appName"
    .parameter "audioType"
    .parameter "pageIndetify"
    .parameter "pageIId"
    .parameter "enabledisableAlarmbtn"
    .parameter "lagalarm"
    .parameter "lagbuffering"
    .parameter "lagsunday"
    .parameter "lagmonday"
    .parameter "lagtuesday"
    .parameter "lagwed"
    .parameter "lagthursday"
    .parameter "lagfriday"
    .parameter "lagsat"
    .parameter "lagvolume"
    .parameter "lagsonglist"
    .parameter "lagsettime"
    .parameter "lagselectall"
    .parameter "lagrepate"
    .parameter "lagonair"
    .parameter "lagoffair"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2897
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== songinnerindex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2898
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== audioType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2899
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== pageIndetify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2900
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== pageIId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2901
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2903
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pageIdentify"

    move-object/from16 v0, p12

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2904
    const-string v3, "pageIdentifyId"

    move-object/from16 v0, p13

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2906
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2907
    sput-object p12, Lcom/snappy/appypie/HomeActivity;->pageIdentify:Ljava/lang/String;

    .line 2908
    sput-object p13, Lcom/snappy/appypie/HomeActivity;->pageIdentifyId:Ljava/lang/String;

    .line 2909
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== pageIdentify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->pageIdentify:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2910
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== pageIdentifyId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->pageIdentifyId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method Name : playRadioStream \nstreamUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###playerBGImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###disableAutoalbumCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###radioPlsType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###channelName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###enableAutoPlay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->printAllPramasOfMethod(Ljava/lang/String;)V

    .line 2912
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v5, Lcom/snappy/appypie/radioStream/RadioPlayerActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "songArray"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2913
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "enableAutoPlay"

    .line 2914
    invoke-virtual {v3, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "imageurl"

    .line 2915
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pageName"

    .line 2916
    invoke-virtual {v3, v4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "channelName"

    .line 2917
    invoke-virtual {v3, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isFitScreen"

    .line 2918
    invoke-virtual {v3, v4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "autoUpdateAlbumCheck"

    .line 2919
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "songlinkindex"

    .line 2920
    move-object/from16 v0, p9

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "appname"

    .line 2921
    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AUDIOTYPE"

    .line 2922
    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pageIndetify"

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->pageIdentify:Ljava/lang/String;

    .line 2923
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pageIId"

    sget-object v5, Lcom/snappy/appypie/HomeActivity;->pageIdentifyId:Ljava/lang/String;

    .line 2924
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "enabledisableAlarmbtn"

    .line 2925
    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagalarm"

    .line 2926
    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagbuffering"

    .line 2927
    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagsunday"

    .line 2928
    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagmonday"

    .line 2929
    move-object/from16 v0, p18

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagtuesday"

    .line 2930
    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagwed"

    .line 2931
    move-object/from16 v0, p20

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagthursday"

    .line 2932
    move-object/from16 v0, p21

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagfriday"

    .line 2933
    move-object/from16 v0, p22

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagsat"

    .line 2934
    move-object/from16 v0, p23

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagvolume"

    .line 2935
    move-object/from16 v0, p24

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagsonglist"

    .line 2936
    move-object/from16 v0, p25

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagsettime"

    .line 2937
    move-object/from16 v0, p26

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagselectall"

    .line 2938
    move-object/from16 v0, p27

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagrepate"

    .line 2939
    move-object/from16 v0, p28

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagonair"

    .line 2940
    move-object/from16 v0, p29

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lagoffair"

    .line 2941
    move-object/from16 v0, p30

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2944
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Lcom/snappy/appypie/HomeActivity;->share:Lcom/snappy/appypie/utils/SharePreferenceAppypie;

    invoke-virtual {v3}, Lcom/snappy/appypie/utils/SharePreferenceAppypie;->isSOFileDownlaoded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2946
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/snappy/appypie/HomeActivity;->storeIntent(Landroid/content/Intent;)V

    .line 2952
    :goto_0
    return-void

    .line 2950
    :cond_0
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public playYoutubeWatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "myoutubeWatchUrl"
    .parameter "jsonDataOfVideo"
    .parameter "menableAutoPlay"
    .parameter "headerTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2827
    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2829
    const-string v2, "(?:youtube(?:-nocookie)?\\.com\\/(?:[^\\/\\n\\s]+\\/\\S+\\/|(?:v|e(?:mbed)?)\\/|\\S*?[?&]v=)|youtu\\.be\\/)([a-zA-Z0-9_-]{11})"

    .line 2830
    .local v2, reg:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2831
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2833
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2834
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 2836
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    .end local v2           #reg:Ljava/lang/String;
    :cond_0
    sput-object p2, Lcom/snappy/appypie/HomeActivity;->jsonDataOfVideo:Ljava/lang/String;

    .line 2837
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v6, Lcom/snappy/appypie/videoStream/YouTubeActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "myoutubeWatchUrl"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "videoenableAutoPlay"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "headerTitle"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jsonDataOfVideo"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2841
    return-void
.end method

.method public printAllPramasOfMethod(Ljava/lang/String;)V
    .locals 4
    .parameter "dataTobePrinted"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3488
    const-string v2, "###"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3489
    .local v0, dataArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3490
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3493
    :cond_0
    return-void
.end method

.method public rateApp()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2622
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2623
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "values"
    .parameter "successCallback"
    .parameter "failedCallBack"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1984
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iput-object p2, v1, Lcom/snappy/appypie/HomeActivity;->SuccessCallback:Ljava/lang/String;

    .line 1985
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iput-object p3, v1, Lcom/snappy/appypie/HomeActivity;->FailedCallBack:Ljava/lang/String;

    .line 1986
    const-string v1, "PermissionJS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, permission:[Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$5;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1997
    return-void
.end method

.method public resumeAds()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$8;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$8;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2141
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x0

    .line 4010
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/snappy/appypie/PermissionManager;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4011
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    invoke-virtual {v3}, Lcom/snappy/appypie/PermissionManager;->askPermission()V

    .line 4029
    :goto_0
    return-void

    .line 4014
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/screenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4017
    .local v2, imagePath:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4018
    .local v1, fos:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4019
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 4020
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 4023
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    const-string v4, "Image Saved Sucessfully"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4025
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 4026
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "GREC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saveImageToPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "imgurii"
    .parameter "fromaction"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4313
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$28;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4391
    return-void
.end method

.method public saveImageWithRefresh(Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4978
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {p1, v1}, Lcom/snappy/appypie/utils/StaticData;->saveImageWithRefresh(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 4980
    .local v0, isSave:Z
    if-eqz v0, :cond_0

    .line 4982
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$37;

    invoke-direct {v2, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$37;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5007
    :goto_0
    return-void

    .line 4995
    :cond_0
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v2, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$38;

    invoke-direct {v2, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$38;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mailId"
    .parameter "subject"
    .parameter "message"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 2146
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2147
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2148
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2149
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2150
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1}, Lcom/snappy/appypie/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2153
    :cond_0
    return-void
.end method

.method public shareApp()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v0, sharingIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2504
    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3}, Lcom/snappy/appypie/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Open it in Google Play Store to Download the Application)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2505
    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3}, Lcom/snappy/appypie/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2506
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "Share via"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2507
    return-void
.end method

.method public shareEncodedImage(Ljava/lang/String;)V
    .locals 10
    .parameter "imageData"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2629
    const/4 v2, 0x0

    .line 2630
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/snappy/appypie/utils/StaticData;->getStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 2632
    .local v6, storagePath:Ljava/io/File;
    if-eqz p1, :cond_0

    .line 2634
    :try_start_0
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, ";base64"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2635
    .local v4, imgExtension:Ljava/lang/String;
    const-string v7, ";base64,"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2637
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_Image."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2638
    .local v5, outputFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2640
    .local v0, decodedString:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2641
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2642
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2644
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v7, v8}, Lcom/snappy/appypie/HomeActivity;->access$302(Lcom/snappy/appypie/HomeActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 2645
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2646
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.STREAM"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2647
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image/*"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    iget-object v7, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v8, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #getter for: Lcom/snappy/appypie/HomeActivity;->intent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/snappy/appypie/HomeActivity;->access$300(Lcom/snappy/appypie/HomeActivity;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 2653
    .end local v0           #decodedString:[B
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #imgExtension:Ljava/lang/String;
    .end local v5           #outputFile:Ljava/io/File;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2654
    const/4 v2, 0x0

    .line 2658
    :cond_1
    :goto_0
    return-void

    .line 2650
    :catch_0
    move-exception v1

    .line 2651
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2653
    if-eqz v2, :cond_1

    .line 2654
    const/4 v2, 0x0

    goto :goto_0

    .line 2653
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_2

    .line 2654
    const/4 v2, 0x0

    :cond_2
    throw v7

    .line 2653
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #imgExtension:Ljava/lang/String;
    .restart local v5       #outputFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2650
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public shareText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2470
    const-string v5, "newlineappy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2471
    const-string v5, "newlineappy"

    const-string v6, "\n"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2474
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2475
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2476
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 2480
    .local v1, clipboard:Landroid/content/ClipboardManager;
    const-string v5, "text"

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 2481
    .local v0, clip:Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2483
    const-string v5, "Share"

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 2485
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/widget/ShareActionProvider;

    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    .line 2486
    .local v3, sap:Landroid/widget/ShareActionProvider;
    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 2487
    new-instance v5, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$14;

    invoke-direct {v5, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$14;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v3, v5}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 2497
    iget-object v5, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/16 v6, 0x8d

    invoke-virtual {v5, v2, v6}, Lcom/snappy/appypie/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2498
    return-void
.end method

.method public showDataCouponInNativePopup(Ljava/lang/String;)V
    .locals 4
    .parameter "copyText"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4784
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 4785
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 4786
    .local v1, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4793
    .end local v1           #clipboard:Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 4788
    :cond_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/snappy/appypie/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 4789
    .local v1, clipboard:Landroid/content/ClipboardManager;
    const-string v2, "Copy coupon code"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4790
    .local v0, clip:Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public showServicePageMapNew(Ljava/lang/String;)V
    .locals 3
    .parameter "sharetext"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3667
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v2, Lcom/snappy/appypie/DirectoryMapMarkerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3668
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "urlData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3669
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3671
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "longToast"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1428
    if-eqz p2, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v0, p1}, Lcom/snappy/appypie/utils/StaticData;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1432
    :goto_0
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-static {v0, p1}, Lcom/snappy/appypie/utils/StaticData;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showWebViewFragment()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$41;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$41;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5062
    return-void
.end method

.method public startLocationChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"
    .parameter "authKey"
    .parameter "secretKey"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2859
    return-void
.end method

.method public startTaxiApp(Ljava/lang/String;)V
    .locals 1
    .parameter "val"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->TaxiActivity(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/snappy/appypie/HomeActivity;->access$2600(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V

    .line 4800
    return-void
.end method

.method public stopSplash()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2663
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appypie krishna  splash closing after time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2664
    const/4 v0, 0x2

    sput v0, Lcom/snappy/appypie/SplashActivity;->timer_count:I

    .line 2665
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->loadUpdatedAppJson()V
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$1200(Lcom/snappy/appypie/HomeActivity;)V

    .line 2666
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->requestforpermission()V
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$1300(Lcom/snappy/appypie/HomeActivity;)V

    .line 2667
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->GetRegGCM()V
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$1400(Lcom/snappy/appypie/HomeActivity;)V

    .line 2668
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v1, ""

    #calls: Lcom/snappy/appypie/HomeActivity;->initManifestFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/snappy/appypie/HomeActivity;->access$1500(Lcom/snappy/appypie/HomeActivity;Ljava/lang/String;)V

    .line 2669
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    #calls: Lcom/snappy/appypie/HomeActivity;->ShowHomePageAds()V
    invoke-static {v0}, Lcom/snappy/appypie/HomeActivity;->access$1600(Lcom/snappy/appypie/HomeActivity;)V

    .line 2670
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v0}, Lcom/snappy/appypie/HomeActivity;->holdBeaconData()V

    .line 2671
    return-void
.end method

.method public submitRequestFormCustomNativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "applicationID"
    .parameter "ownerEmailId"
    .parameter "pageId"
    .parameter "categoryId"
    .parameter "dirPageId"
    .parameter "name"
    .parameter "phone"
    .parameter "address"
    .parameter "budget"
    .parameter "requirement"
    .parameter "globalFileName"
    .parameter "globalimageurl"
    .parameter "appName"
    .parameter "heading"
    .parameter "dirOwnerEmail"
    .parameter "lebelvalue"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4406
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/directory/insert-list-form-bulder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4407
    .local v0, apiUrl:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4410
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4411
    const-string v1, "listOwner"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4412
    const-string v1, "pageId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4413
    const-string v1, "listId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4414
    const-string v1, "categoryId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4415
    const-string v1, "dirPageId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    const-string v1, "name"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4417
    const-string v1, "phone"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4418
    const-string v1, "address"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4419
    const-string v1, "budget"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4420
    const-string v1, "requirement"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4421
    const-string v1, "appName"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4422
    const-string v1, "heading"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4423
    const-string v1, "ownerEmailId"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4424
    const-string v1, "labelValue"

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "24242352353535 apiUrl::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4428
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "24242352353535::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4432
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v4, 0x0

    new-instance v5, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$29;

    invoke-direct {v5, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$29;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    move-object/from16 v3, p12

    invoke-static/range {v0 .. v5}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4455
    .end local v0           #apiUrl:Ljava/lang/String;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 4451
    :catch_0
    move-exception v6

    .line 4453
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public takeScreenShot()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3907
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3908
    .local v2, now:Ljava/util/Date;
    const-string v3, "yyyy-MM-dd_hh:mm:ss"

    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    .line 3912
    :try_start_0
    invoke-virtual {p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->takeScreenshott()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3913
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->saveBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3957
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 3953
    :catch_0
    move-exception v1

    .line 3955
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public takeScreenshott()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 4003
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lcom/snappy/appypie/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4004
    .local v0, rootView:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4005
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public trackRestaurantDeliveryBoy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "userlat"
    .parameter "userLong"
    .parameter "username"
    .parameter "deliveryBoylat"
    .parameter "deliveryBoyLong"
    .parameter "deliveryBoyId"
    .parameter "deliveryboyname"
    .parameter "deliveryboyphoneno"
    .parameter "vendorLatitude"
    .parameter "vendorLongitude"
    .parameter "vendorName"
    .parameter "pageTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1622
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== customerLatLong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1623
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-class v3, Lcom/snappy/appypie/restaurant/ResturantDeliveryBoyTrack;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1624
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "CUSTOMERLONG"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v2, "CUSTOMERLAT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v2, "Customername"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1627
    const-string v2, "deliveryBoylat"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1628
    const-string v2, "deliveryBoyLong"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string v2, "deliveryBoyId"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    const-string v2, "deliveryboyname"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const-string v2, "deliveryboyphoneno"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    const-string v2, "Vendorlat"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    const-string v2, "Vendorlong"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const-string v2, "vendorName"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const-string v2, "pageTitle"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/snappy/appypie/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1641
    return-void
.end method

.method public updateDirProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "appId"
    .parameter "name"
    .parameter "email"
    .parameter "imagePicArray"
    .parameter "isFrom"
    .parameter "groupid"
    .parameter "formDetail"
    .parameter "imageUrl"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method Name=updateDirProfile \n appId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n email="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nimagePics="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nisFrom="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ngroupid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->printAllPramasOfMethod(Ljava/lang/String;)V

    .line 4462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/webservices/AppuserRegister.php"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4463
    .local v0, apiUrl:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4464
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appId"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4465
    const-string v1, "name"

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4466
    const-string v1, "email"

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4467
    const-string v1, "groupId"

    invoke-interface {v2, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4468
    const-string v1, "actionType"

    const-string v4, "updateProfile"

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4470
    const-string v1, ""

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4475
    :cond_0
    :goto_0
    const-string v3, ""

    .line 4476
    .local v3, tempImage:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile.jpg$$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4482
    :goto_1
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v4, 0x1

    new-instance v5, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$30;

    invoke-direct {v5, p0, p5}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$30;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V

    .line 4565
    return-void

    .line 4473
    .end local v3           #tempImage:Ljava/lang/String;
    :cond_1
    const-string v1, "addMoreFields"

    invoke-interface {v2, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4479
    .restart local v3       #tempImage:Ljava/lang/String;
    :cond_2
    move-object v3, p8

    goto :goto_1
.end method

.method public updateNoti()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    new-instance v1, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$16;

    invoke-direct {v1, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$16;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3323
    return-void
.end method

.method public uploadAppointmentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "appointmentURL"
    .parameter "appId"
    .parameter "pageIdentifie"
    .parameter "name"
    .parameter "owneremail"
    .parameter "formData"
    .parameter "formLabel"
    .parameter "userEmail"
    .parameter "formFields"
    .parameter "appointmentSubject"
    .parameter "formName"
    .parameter "date"
    .parameter "time"
    .parameter "phone"
    .parameter "deviceId"
    .parameter "deviceToken"
    .parameter "ownerName"
    .parameter "appOwnerEmail"
    .parameter "defLanguege"
    .parameter "appName"
    .parameter "imgUpload"
    .parameter "timeStamp"
    .parameter "localTimeZone"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4917
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORM BUILDER : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4918
    const-string v1, "upformBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORM BUILDER : Image Data size :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "TimeStamp"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/snappy/appypie/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4927
    .local v8, sharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timestamp"

    move-object/from16 v0, p22

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4928
    const-string v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Name : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4931
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "appId"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4932
    const-string v1, "formPageId"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4933
    const-string v1, "userName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4934
    const-string v1, "ownerEmail"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    const-string v1, "formData"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4936
    const-string v1, "formLabel"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4937
    const-string v1, "userEmail"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4938
    const-string v1, "formFields"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4939
    const-string v1, "subject"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4940
    const-string v1, "formName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4941
    const-string v1, "appointmentDate"

    move-object/from16 v0, p12

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4942
    const-string v1, "appointmentTime"

    move-object/from16 v0, p13

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4943
    const-string v1, "userPhone"

    move-object/from16 v0, p14

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4944
    const-string v1, "userRemark"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4945
    const-string v1, "status"

    const-string v2, "1"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4946
    const-string v1, "userDeviceType"

    const-string v2, "Android"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4947
    const-string v1, "userDeviceId"

    move-object/from16 v0, p15

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    const-string v1, "userDeviceToken"

    move-object/from16 v0, p16

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4949
    const-string v1, "appOwnerName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4950
    const-string v1, "appOwnerEmail"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4951
    const-string v1, "lang"

    move-object/from16 v0, p19

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4952
    const-string v1, "appName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4953
    const-string v1, "timezone"

    move-object/from16 v0, p23

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4958
    :goto_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v5, 0x0

    new-instance v6, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$36;

    invoke-direct {v6, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$36;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    move-object v1, p1

    move-object/from16 v4, p21

    invoke-static/range {v1 .. v6}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V

    .line 4973
    return-void

    .line 4954
    :catch_0
    move-exception v7

    .line 4955
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadFormBuilderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "apiUrl"
    .parameter "dirPageId"
    .parameter "hyperPageId"
    .parameter "appId"
    .parameter "pageIdentifie"
    .parameter "requestEmail"
    .parameter "requestId"
    .parameter "formData"
    .parameter "formLabel"
    .parameter "formFields"
    .parameter "submissionEmailSub"
    .parameter "name"
    .parameter "owneremail"
    .parameter "defLanguege"
    .parameter "appName"
    .parameter "mailHeadingText"
    .parameter "imgUpload"
    .parameter "timeStamp"
    .parameter "disigtalSign"
    .parameter "pageTypeForSave"
    .parameter "enableUserEmail"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4828
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORM BUILDER : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4829
    const-string v1, "upformBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORM BUILDER : Image Data size :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    iget-object v1, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const-string v2, "TimeStamp"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/snappy/appypie/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4847
    .local v8, sharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timestamp"

    move-object/from16 v0, p18

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4848
    const-string v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Name : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4852
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "appId"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4853
    const-string v1, "formPageId"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4854
    const-string v1, "emailId"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4855
    const-string v1, "dirListid"

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4856
    const-string v1, "hyperlocalListid"

    invoke-interface {v3, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4857
    const-string v1, "requestId"

    move-object/from16 v0, p7

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4858
    const-string v1, "actionType"

    const-string v2, "sendCustomMailTemplate"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4859
    const-string v1, "formData"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4860
    const-string v1, "formLabel"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4861
    const-string v1, "userEmail"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4862
    const-string v1, "formFields"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4863
    const-string v1, "subject"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4864
    const-string v1, "formName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4865
    const-string v1, "ownerEmail"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4866
    const-string v1, "lang"

    move-object/from16 v0, p14

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4867
    const-string v1, "appName"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4868
    const-string v1, "mailHeadingText"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4869
    const-string v1, "1"

    move-object/from16 v0, p21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4871
    const-string v1, "enableUserEmail"

    move-object/from16 v0, p21

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4874
    :cond_0
    if-eqz p19, :cond_1

    .line 4875
    const-string v1, "digitalSignature"

    move-object/from16 v0, p19

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    :cond_1
    const-string v1, "payType"

    move-object/from16 v0, p20

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4883
    :goto_0
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v5, 0x0

    new-instance v6, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$34;

    invoke-direct {v6, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$34;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    move-object v1, p1

    move-object/from16 v4, p17

    invoke-static/range {v1 .. v6}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V

    .line 4898
    return-void

    .line 4879
    :catch_0
    move-exception v7

    .line 4881
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadMultipleFilesDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "dirCatId"
    .parameter "headingData"
    .parameter "summaryData"
    .parameter "bodyData"
    .parameter "emailLabelSend"
    .parameter "emailData"
    .parameter "urlLabelData"
    .parameter "urlData"
    .parameter "callLabelData"
    .parameter "callData"
    .parameter "changePattern"
    .parameter "addressLabelData"
    .parameter "addressData"
    .parameter "opentableLabelData"
    .parameter "opentableData"
    .parameter "videoData"
    .parameter "soundrssData"
    .parameter "rssradioData"
    .parameter "customlistData"
    .parameter "customTrackNameData"
    .parameter "customTrackDescriptionData"
    .parameter "mapInApp"
    .parameter "applicationID"
    .parameter "AppName"
    .parameter "owneremail"
    .parameter "ownerName"
    .parameter "userEmail"
    .parameter "userName"
    .parameter "serviceHeaderName"
    .parameter "bodyImageFinalArray"
    .parameter "resellerId"
    .parameter "listId1"
    .parameter "imageCommaSeparatePath"
    .parameter "lat"
    .parameter "longi"
    .parameter "dirDocLinks"
    .parameter "coupanIdSelected"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3546
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dirDocLinks dirDocLinks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snappy/appypie/HomeActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/directory/save-mobile-listing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3549
    .local v1, apiUrl:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3552
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "catId"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    const-string v2, "heading"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3554
    const-string v2, "summary"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3555
    const-string v2, "body"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    const-string v2, "emailLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    const-string v2, "email"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    const-string v2, "urlLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    const-string v2, "url"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    const-string v2, "callLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    const-string v2, "call"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3562
    const-string v2, "changePattern"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3563
    const-string v2, "addressLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    const-string v2, "address"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    const-string v2, "openTableLabel"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    const-string v2, "openTableUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    const-string v2, "youtubeUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    const-string v2, "rssFeedUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    const-string v2, "radioPlsUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3570
    const-string v2, "customTrackUrl"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    const-string v2, "customTrackName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    const-string v2, "customTrackDescription"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    const-string v2, "mapInApp"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3574
    const-string v2, "applicationID"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3575
    const-string v2, "appName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    const-string v2, "appOwnerEmail"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3577
    const-string v2, "appOwnerName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3578
    const-string v2, "userEmail"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3579
    const-string v2, "appUserName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3580
    const-string v2, "dirName"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    const-string v2, "bodyImage"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    const-string v2, "resellerId"

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    const-string v2, "listId"

    if-nez p32, :cond_5

    const-string p32, ""

    .end local p32
    :cond_0
    :goto_0
    move-object/from16 v0, p32

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    const-string v2, "latitude"

    if-nez p34, :cond_7

    const-string p34, ""

    .end local p34
    :cond_1
    :goto_1
    move-object/from16 v0, p34

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    const-string v2, "longitude"

    if-nez p35, :cond_9

    const-string p35, ""

    .end local p35
    :cond_2
    :goto_2
    move-object/from16 v0, p35

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    const-string v2, "dirDocLinks"

    if-nez p36, :cond_3

    const-string p36, ""

    .end local p36
    :cond_3
    move-object/from16 v0, p36

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    const-string v2, "couponSelected"

    if-nez p37, :cond_4

    const-string p37, ""

    .end local p37
    :cond_4
    move-object/from16 v0, p37

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3591
    :goto_3
    iget-object v2, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    const/4 v5, 0x0

    new-instance v6, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$18;

    invoke-direct {v6, p0}, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface$18;-><init>(Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;)V

    move-object/from16 v4, p33

    invoke-static/range {v1 .. v6}, Lcom/snappy/appypie/utils/volleyUtil/DALRemote;->uploadFileOnServer(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLcom/snappy/appypie/utils/AppypieCallback;)V

    .line 3617
    return-void

    .line 3583
    .restart local p32
    .restart local p34
    .restart local p35
    .restart local p36
    .restart local p37
    :cond_5
    :try_start_1
    const-string v4, "null"

    move-object/from16 v0, p32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p32, ""

    goto :goto_0

    :cond_6
    invoke-virtual/range {p32 .. p32}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string p32, ""

    goto :goto_0

    .line 3584
    .end local p32
    :cond_7
    const-string v4, "null"

    move-object/from16 v0, p34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p34, ""

    goto :goto_1

    :cond_8
    invoke-virtual/range {p34 .. p34}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string p34, ""

    goto :goto_1

    .line 3585
    .end local p34
    :cond_9
    const-string v4, "null"

    move-object/from16 v0, p35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string p35, ""

    goto :goto_2

    :cond_a
    invoke-virtual/range {p35 .. p35}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    const-string p35, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3590
    .end local p35
    .end local p36
    .end local p37
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public validateLoyaltyViaScanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "RequestCode"
    .parameter "headerTitle"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 3806
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    invoke-virtual {v3}, Lcom/snappy/appypie/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3807
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3808
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3809
    .local v2, value1:Ljava/util/Map;
    const-string v3, "RequestCode"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3812
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3813
    .local v1, val:Ljava/util/Map;
    const-string v3, "headerTitle"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3816
    iget-object v3, p0, Lcom/snappy/appypie/HomeActivity$CordovaWebViewInterface;->this$0:Lcom/snappy/appypie/HomeActivity;

    iget-object v3, v3, Lcom/snappy/appypie/HomeActivity;->permissionManager:Lcom/snappy/appypie/PermissionManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    sget v5, Lcom/snappy/appypie/HomeActivity;->PERMISSIONS_REQUEST_PAGES:I

    const-class v6, Lcom/snappy/appypie/pocketTools/BarcodeScannerActivity;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/snappy/appypie/PermissionManager;->startActivity([Ljava/lang/String;ILjava/lang/Class;Ljava/util/List;)V

    .line 3819
    return-void
.end method
