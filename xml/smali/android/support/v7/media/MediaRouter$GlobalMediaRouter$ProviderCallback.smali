.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 2633
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2633
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 1
    .parameter "provider"
    .parameter "descriptor"

    .prologue
    .line 2637
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #calls: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    invoke-static {v0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2638
    return-void
.end method
