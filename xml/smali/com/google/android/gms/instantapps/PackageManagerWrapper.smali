.class public interface abstract Lcom/google/android/gms/instantapps/PackageManagerWrapper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
.end method

.method public abstract getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract isInstantApp(I)Z
.end method
