.class interface abstract Lcom/dropbox/chooser/android/ActivityLike;
.super Ljava/lang/Object;
.source "ActivityLike.java"


# virtual methods
.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation
.end method
