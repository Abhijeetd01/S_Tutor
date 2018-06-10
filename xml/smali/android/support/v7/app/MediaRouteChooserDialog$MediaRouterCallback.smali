.class final Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;Landroid/support/v7/app/MediaRouteChooserDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 372
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 382
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 377
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->dismiss()V

    .line 387
    return-void
.end method
