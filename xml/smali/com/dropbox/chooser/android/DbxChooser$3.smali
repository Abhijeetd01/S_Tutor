.class Lcom/dropbox/chooser/android/DbxChooser$3;
.super Ljava/lang/Object;
.source "DbxChooser.java"

# interfaces
.implements Lcom/dropbox/chooser/android/ActivityLike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/chooser/android/DbxChooser;->launch(Landroid/support/v4/app/Fragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/chooser/android/DbxChooser;

.field final synthetic val$mFrag:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->this$0:Lcom/dropbox/chooser/android/DbxChooser;

    iput-object p2, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 266
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 269
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto :goto_0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 275
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 289
    .local v0, act:Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$3;->val$mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method
