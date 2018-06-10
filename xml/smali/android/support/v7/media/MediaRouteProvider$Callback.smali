.class public abstract Landroid/support/v7/media/MediaRouteProvider$Callback;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .parameter "provider"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "descriptor"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 397
    return-void
.end method
