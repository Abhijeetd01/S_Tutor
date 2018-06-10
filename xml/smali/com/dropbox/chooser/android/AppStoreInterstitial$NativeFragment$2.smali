.class Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

.field final synthetic val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;->this$0:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

    iput-object p2, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;->val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v_clicked"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment$2;->val$frag:Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;

    invoke-virtual {v0}, Lcom/dropbox/chooser/android/AppStoreInterstitial$NativeFragment;->dismiss()V

    .line 69
    return-void
.end method
