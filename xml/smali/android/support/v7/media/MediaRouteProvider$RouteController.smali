.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z
    .locals 1
    .parameter "intent"
    .parameter "callback"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onSelect()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 357
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onUnselect(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 349
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0
    .parameter "delta"

    .prologue
    .line 365
    return-void
.end method
