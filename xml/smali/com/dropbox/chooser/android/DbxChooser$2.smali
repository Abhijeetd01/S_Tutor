.class Lcom/dropbox/chooser/android/DbxChooser$2;
.super Ljava/lang/Object;
.source "DbxChooser.java"

# interfaces
.implements Lcom/dropbox/chooser/android/ActivityLike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/chooser/android/DbxChooser;->launch(Landroid/app/Fragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/chooser/android/DbxChooser;

.field final synthetic val$mFrag:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/app/Fragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->this$0:Lcom/dropbox/chooser/android/DbxChooser;

    iput-object p2, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto :goto_0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
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
    .line 197
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 198
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
    .line 203
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$2;->val$mFrag:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    return-void
.end method
