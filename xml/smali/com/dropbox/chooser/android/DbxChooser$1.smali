.class Lcom/dropbox/chooser/android/DbxChooser$1;
.super Ljava/lang/Object;
.source "DbxChooser.java"

# interfaces
.implements Lcom/dropbox/chooser/android/ActivityLike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/chooser/android/DbxChooser;->launch(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/chooser/android/DbxChooser;

.field final synthetic val$mAct:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/dropbox/chooser/android/DbxChooser;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->this$0:Lcom/dropbox/chooser/android/DbxChooser;

    iput-object p2, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 141
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
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
    .line 147
    iget-object v0, p0, Lcom/dropbox/chooser/android/DbxChooser$1;->val$mAct:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
