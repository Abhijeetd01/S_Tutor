.class Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"

# interfaces
.implements Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PointerIconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasePointerIconCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1
    .parameter "bitmap"
    .parameter "hotSpotX"
    .parameter "hotSpotY"

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method
