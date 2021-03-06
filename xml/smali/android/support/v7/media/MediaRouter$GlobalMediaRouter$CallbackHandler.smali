.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_PROVIDER_ADDED:I = 0x201

.field public static final MSG_PROVIDER_CHANGED:I = 0x203

.field public static final MSG_PROVIDER_REMOVED:I = 0x202

.field public static final MSG_ROUTE_ADDED:I = 0x101

.field public static final MSG_ROUTE_CHANGED:I = 0x103

.field public static final MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED:I = 0x105

.field public static final MSG_ROUTE_REMOVED:I = 0x102

.field public static final MSG_ROUTE_SELECTED:I = 0x106

.field public static final MSG_ROUTE_UNSELECTED:I = 0x107

.field public static final MSG_ROUTE_VOLUME_CHANGED:I = 0x104

.field private static final MSG_TYPE_MASK:I = 0xff00

.field private static final MSG_TYPE_PROVIDER:I = 0x200

.field private static final MSG_TYPE_ROUTE:I = 0x100


# instance fields
.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 1
    .parameter

    .prologue
    .line 2739
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2739
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    return-void
.end method

.method private invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 5
    .parameter "record"
    .parameter "what"
    .parameter "obj"
    .parameter "arg"

    .prologue
    .line 2818
    iget-object v3, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 2819
    .local v3, router:Landroid/support/v7/media/MediaRouter;
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 2820
    .local v0, callback:Landroid/support/v7/media/MediaRouter$Callback;
    const v4, 0xff00

    and-int/2addr v4, p2

    sparse-switch v4, :sswitch_data_0

    .line 2866
    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object v2, p3

    .line 2822
    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2823
    .local v2, route:Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2826
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2828
    :pswitch_0
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2831
    :pswitch_1
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2834
    :pswitch_2
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2837
    :pswitch_3
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2840
    :pswitch_4
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2843
    :pswitch_5
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2846
    :pswitch_6
    invoke-virtual {v0, v3, v2, p4}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0

    .end local v2           #route:Landroid/support/v7/media/MediaRouter$RouteInfo;
    :sswitch_1
    move-object v1, p3

    .line 2852
    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2853
    .local v1, provider:Landroid/support/v7/media/MediaRouter$ProviderInfo;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2855
    :pswitch_7
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2858
    :pswitch_8
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2861
    :pswitch_9
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2820
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 2826
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2853
    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2801
    packed-switch p1, :pswitch_data_0

    .line 2815
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 2803
    .restart local p2
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2806
    .restart local p2
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2809
    .restart local p2
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2812
    .restart local p2
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2801
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 2771
    iget v5, p1, Landroid/os/Message;->what:I

    .line 2772
    .local v5, what:I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2773
    .local v3, obj:Ljava/lang/Object;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2776
    .local v0, arg:I
    invoke-direct {p0, v5, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    .line 2782
    :try_start_0
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, i:I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 2783
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter;

    .line 2784
    .local v4, router:Landroid/support/v7/media/MediaRouter;
    if-nez v4, :cond_0

    .line 2785
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    #getter for: Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2796
    .end local v2           #i:I
    .end local v4           #router:Landroid/support/v7/media/MediaRouter;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    throw v6

    .line 2787
    .restart local v2       #i:I
    .restart local v4       #router:Landroid/support/v7/media/MediaRouter;
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2791
    .end local v4           #router:Landroid/support/v7/media/MediaRouter;
    :cond_1
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2792
    .local v1, callbackCount:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 2793
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v6, v5, v3, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2792
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2796
    :cond_2
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2798
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "obj"

    .prologue
    .line 2760
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2761
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .parameter "msg"
    .parameter "obj"
    .parameter "arg"

    .prologue
    .line 2764
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2765
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2767
    return-void
.end method
