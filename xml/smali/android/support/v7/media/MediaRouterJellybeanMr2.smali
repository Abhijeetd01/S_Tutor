.class final Landroid/support/v7/media/MediaRouterJellybeanMr2;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouterJellybeanMr2$UserRouteInfo;,
        Landroid/support/v7/media/MediaRouterJellybeanMr2$RouteInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .parameter "routerObj"
    .parameter "types"
    .parameter "callbackObj"
    .parameter "flags"

    .prologue
    .line 25
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    check-cast p2, Landroid/media/MediaRouter$Callback;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 27
    return-void
.end method

.method public static getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "routerObj"

    .prologue
    .line 21
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method
