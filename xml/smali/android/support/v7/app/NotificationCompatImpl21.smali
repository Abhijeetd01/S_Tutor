.class Landroid/support/v7/app/NotificationCompatImpl21;
.super Ljava/lang/Object;
.source "NotificationCompatImpl21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V
    .locals 2
    .parameter "b"
    .parameter "actionsToShowInCompact"
    .parameter "token"

    .prologue
    .line 28
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$MediaStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 29
    .local v0, style:Landroid/app/Notification$MediaStyle;
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    .line 33
    check-cast p2, Landroid/media/session/MediaSession$Token;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 35
    :cond_1
    return-void
.end method
