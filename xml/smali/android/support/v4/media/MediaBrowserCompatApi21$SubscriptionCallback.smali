.class interface abstract Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SubscriptionCallback"
.end annotation


# virtual methods
.method public abstract onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
.end method
