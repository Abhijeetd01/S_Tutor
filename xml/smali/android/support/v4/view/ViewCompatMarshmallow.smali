.class Landroid/support/v4/view/ViewCompatMarshmallow;
.super Ljava/lang/Object;
.source "ViewCompatMarshmallow.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 40
    return-void
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 36
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "indicators"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    .line 24
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "indicators"
    .parameter "mask"

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 28
    return-void
.end method
