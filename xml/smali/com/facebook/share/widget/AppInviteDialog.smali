.class public Lcom/facebook/share/widget/AppInviteDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppInviteDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 72
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 144
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 166
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 167
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowNativeDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/share/widget/AppInviteDialog;->createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/facebook/internal/DialogFeature;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowWebFallback()Z

    move-result v0

    return v0
.end method

.method public static canShow()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowNativeDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowWebFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canShowNativeDialog()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    return v0
.end method

.method private static canShowWebFallback()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    return v0
.end method

.method private static createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 3
    .parameter "content"

    .prologue
    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "app_link_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getApplinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "preview_image_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method private static getFeature()Lcom/facebook/internal/DialogFeature;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/facebook/share/internal/AppInviteDialogFeature;->APP_INVITES_DIALOG:Lcom/facebook/share/internal/AppInviteDialogFeature;

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1
    .parameter "activity"
    .parameter "appInviteContent"

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1
    .parameter "fragment"
    .parameter "appInviteContent"

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V

    .line 121
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1
    .parameter "fragment"
    .parameter "appInviteContent"

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V

    .line 108
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1
    .parameter "fragmentWrapper"
    .parameter "appInviteContent"

    .prologue
    .line 126
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 127
    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/model/AppInviteContent;",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/AppInviteContent;Lcom/facebook/share/widget/AppInviteDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 3
    .parameter "callbackManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, callback:Lcom/facebook/FacebookCallback;,"Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/AppInviteDialog$Result;>;"
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 186
    .local v1, resultProcessor:Lcom/facebook/share/internal/ResultProcessor;
    :goto_0
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog$2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/AppInviteDialog$2;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 198
    .local v0, callbackManagerCallback:Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

    move-result v2

    .line 197
    invoke-virtual {p1, v2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 200
    return-void

    .line 172
    .end local v0           #callbackManagerCallback:Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .end local v1           #resultProcessor:Lcom/facebook/share/internal/ResultProcessor;
    :cond_0
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$1;

    invoke-direct {v1, p0, p2, p2}, Lcom/facebook/share/widget/AppInviteDialog$1;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_0
.end method
