.class Lcom/facebook/share/widget/ShareDialog$FeedHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1
    .parameter "content"

    .prologue
    .line 371
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->canShow(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 7
    .parameter "content"

    .prologue
    .line 377
    iget-object v4, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v5, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    #calls: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v5}, Lcom/facebook/share/widget/ShareDialog;->access$900(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    #calls: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v4, v5, p1, v6}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 378
    iget-object v4, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v4}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 380
    .local v0, appCall:Lcom/facebook/internal/AppCall;
    instance-of v4, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 381
    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    .line 382
    .local v2, linkContent:Lcom/facebook/share/model/ShareLinkContent;
    invoke-static {v2}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 383
    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v3

    .line 389
    .end local v2           #linkContent:Lcom/facebook/share/model/ShareLinkContent;
    .local v3, params:Landroid/os/Bundle;
    :goto_0
    const-string v4, "feed"

    invoke-static {v0, v4, v3}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    return-object v0

    .end local v3           #params:Landroid/os/Bundle;
    :cond_0
    move-object v1, p1

    .line 385
    check-cast v1, Lcom/facebook/share/internal/ShareFeedContent;

    .line 386
    .local v1, feedContent:Lcom/facebook/share/internal/ShareFeedContent;
    invoke-static {v1}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object v3

    .restart local v3       #params:Landroid/os/Bundle;
    goto :goto_0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1
    .parameter

    .prologue
    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
