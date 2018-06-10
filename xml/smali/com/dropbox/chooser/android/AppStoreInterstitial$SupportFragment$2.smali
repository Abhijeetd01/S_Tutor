.class Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment$2;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;

.field final synthetic val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment$2;->this$0:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;

    iput-object p2, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment$2;->val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v_clicked"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment$2;->val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;

    invoke-virtual {v0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$SupportFragment;->dismiss()V

    .line 108
    return-void
.end method
