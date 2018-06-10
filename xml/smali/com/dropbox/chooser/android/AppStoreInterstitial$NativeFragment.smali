.class public Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;
.super Landroid/app/DialogFragment;
.source "AppStoreInterstitial.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/chooser/android/AppStoreInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

    invoke-direct {v0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedinstanceState"

    .prologue
    .line 52
    move-object v2, p0

    .line 53
    .local v2, frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;
    invoke-virtual {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/dropbox/chooser/android/R$layout;->app_store_interstitial:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 55
    .local v4, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    #calls: Lcom/dropbox/chooser/android/AppStoreInterstitial;->isDropboxInstalled(Landroid/app/Activity;)Z
    invoke-static {v5}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->access$000(Landroid/app/Activity;)Z

    move-result v5

    #calls: Lcom/dropbox/chooser/android/AppStoreInterstitial;->setStrings(Landroid/view/View;Z)V
    invoke-static {v4, v5}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->access$100(Landroid/view/View;Z)V

    .line 57
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_bottom_bar_ok_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 58
    .local v3, okButton:Landroid/widget/Button;
    new-instance v5, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$1;

    invoke-direct {v5, p0, v2}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$1;-><init>(Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v5, Lcom/dropbox/chooser/android/R$id;->dbx_bottom_bar_cancel_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v5, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;

    invoke-direct {v5, p0, v2}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;-><init>(Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    #calls: Lcom/dropbox/chooser/android/AppStoreInterstitial;->centerWindow(Landroid/view/Window;)V
    invoke-static {v0}, Lcom/dropbox/chooser/android/AppStoreInterstitial;->access$300(Landroid/view/Window;)V

    .line 81
    return-void
.end method
