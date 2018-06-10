.class Landroid/support/v7/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 772
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 781
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 784
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 775
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    #getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/OverlayListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->startAnimationAll()V

    .line 776
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    #getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/OverlayListView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    #getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1600(Landroid/support/v7/app/MediaRouteControllerDialog;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 777
    #getter for: Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I
    invoke-static {v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1700(Landroid/support/v7/app/MediaRouteControllerDialog;)I

    move-result v2

    int-to-long v2, v2

    .line 776
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/app/OverlayListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    return-void
.end method
