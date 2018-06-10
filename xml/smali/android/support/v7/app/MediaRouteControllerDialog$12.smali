.class Landroid/support/v7/app/MediaRouteControllerDialog$12;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->fadeInAddedRoutes()V
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
    .line 885
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$12;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 891
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$12;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x1

    #calls: Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V
    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$2100(Landroid/support/v7/app/MediaRouteControllerDialog;Z)V

    .line 892
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 895
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 887
    return-void
.end method
