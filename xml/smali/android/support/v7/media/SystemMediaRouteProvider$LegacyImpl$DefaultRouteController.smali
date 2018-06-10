.class final Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultRouteController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 161
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #getter for: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$000(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #calls: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V
    invoke-static {v0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$100(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    .line 166
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 6
    .parameter "delta"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 170
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #getter for: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$000(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 171
    .local v2, volume:I
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #getter for: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$000(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 172
    .local v0, maxVolume:I
    add-int v3, v2, p1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 173
    .local v1, newVolume:I
    if-eq v1, v2, :cond_0

    .line 174
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #getter for: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$000(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 176
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    #calls: Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V
    invoke-static {v3}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->access$100(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    .line 177
    return-void
.end method
