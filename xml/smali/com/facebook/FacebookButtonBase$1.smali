.class Lcom/facebook/FacebookButtonBase$1;
.super Ljava/lang/Object;
.source "FacebookButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookButtonBase;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookButtonBase;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    iget-object v1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/facebook/FacebookButtonBase;->access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    #getter for: Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    #getter for: Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    #getter for: Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    #getter for: Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
