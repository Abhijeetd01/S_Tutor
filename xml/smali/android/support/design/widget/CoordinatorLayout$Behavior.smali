.class public abstract Landroid/support/design/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1684
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1685
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1695
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    return-void
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .parameter "child"

    .prologue
    .line 1955
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1956
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter "child"
    .parameter "tag"

    .prologue
    .line 1943
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1944
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 1945
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .prologue
    .line 1756
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/high16 v0, -0x100

    return v0
.end method

.method public getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .prologue
    .line 1773
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1876
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1815
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "insets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/support/v4/view/WindowInsetsCompat;",
            ")",
            "Landroid/support/v4/view/WindowInsetsCompat;"
        }
    .end annotation

    .prologue
    .line 2177
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-object p3
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1844
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "ev"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1718
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "layoutDirection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .prologue
    .line 1902
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "consumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .prologue
    .line 2130
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 2158
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "dx"
    .parameter "dy"
    .parameter "consumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .line 2099
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "dxConsumed"
    .parameter "dyConsumed"
    .parameter "dxUnconsumed"
    .parameter "dyUnconsumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 2066
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "directTargetChild"
    .parameter "target"
    .parameter "nestedScrollAxes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2009
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "parent"
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2194
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 2215
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "directTargetChild"
    .parameter "target"
    .parameter "nestedScrollAxes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 1983
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2033
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "ev"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1737
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method
