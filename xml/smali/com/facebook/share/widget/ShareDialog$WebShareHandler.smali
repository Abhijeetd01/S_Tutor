.class Lcom/facebook/share/widget/ShareDialog$WebShareHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebShareHandler"
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
    .line 318
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method private getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .locals 1
    .parameter "shareContent"

    .prologue
    .line 353
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "share"

    .line 359
    :goto_0
    return-object v0

    .line 355
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "share_open_graph"

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1
    .parameter "content"

    .prologue
    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    #calls: Lcom/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z
    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->access$700(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->canShow(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 5
    .parameter "content"

    .prologue
    .line 331
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    #calls: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->access$800(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    #calls: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v2, v3, p1, v4}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 333
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 335
    .local v0, appCall:Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 338
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 339
    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 346
    .local v1, params:Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    return-object v0

    .end local v1           #params:Landroid/os/Bundle;
    :cond_0
    move-object v2, p1

    .line 341
    check-cast v2, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1       #params:Landroid/os/Bundle;
    goto :goto_0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
