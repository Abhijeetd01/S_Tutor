.class public final Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
.super Ljava/lang/Object;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    return-object v0
.end method
