.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .locals 4

    .prologue
    .line 688
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchStartTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 690
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchFinishTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 696
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 6
    .parameter "view"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 964
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 965
    .local v0, offset:I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v4

    .line 966
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 967
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 971
    :cond_0
    :goto_0
    return v2

    .line 968
    :cond_1
    if-gez p2, :cond_2

    .line 969
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 971
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 6
    .parameter "view"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 976
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v0

    .line 977
    .local v0, offset:I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v4

    .line 978
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 979
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 983
    :cond_0
    :goto_0
    return v2

    .line 980
    :cond_1
    if-gez p2, :cond_2

    .line 981
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 983
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1
    .parameter "view"

    .prologue
    .line 760
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 492
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 493
    .end local p1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 496
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 497
    .end local p1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public combineMeasuredStates(II)I
    .locals 1
    .parameter "curState"
    .parameter "newState"

    .prologue
    .line 1064
    or-int v0, p1, p2

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .parameter "v"
    .parameter "insets"

    .prologue
    .line 911
    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 666
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_0

    .line 667
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 669
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 671
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 677
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .parameter "view"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "consumed"

    .prologue
    .line 1032
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 1033
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 1036
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .parameter "view"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1041
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 1042
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 1044
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .parameter "view"
    .parameter "dx"
    .parameter "dy"
    .parameter "consumed"
    .parameter "offsetInWindow"

    .prologue
    .line 1022
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 1023
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    .line 1026
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 6
    .parameter "view"
    .parameter "dxConsumed"
    .parameter "dyConsumed"
    .parameter "dxUnconsumed"
    .parameter "dyUnconsumed"
    .parameter "offsetInWindow"

    .prologue
    .line 1012
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1013
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    .line 1016
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 649
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_0

    .line 650
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 652
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 660
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .parameter "view"

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 561
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "view"

    .prologue
    .line 945
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .parameter "view"

    .prologue
    .line 960
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .parameter "view"

    .prologue
    .line 875
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .locals 2

    .prologue
    .line 543
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "view"

    .prologue
    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 755
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 750
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 500
    const/4 v0, 0x2

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter "view"

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "view"

    .prologue
    .line 839
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 2
    .parameter "view"

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1003
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 1004
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    .line 1006
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 683
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1078
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1054
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 937
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 938
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    .line 940
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 600
    :cond_0
    return v1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 926
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 896
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 1103
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1104
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 1108
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1109
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .parameter "v"
    .parameter "insets"

    .prologue
    .line 906
    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 519
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .parameter "v"
    .parameter "info"

    .prologue
    .line 522
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 516
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "view"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 532
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 534
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 535
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "action"

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "view"
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 849
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 604
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0
    .parameter "v"
    .parameter "delegate"

    .prologue
    .line 507
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 630
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "activated"

    .prologue
    .line 922
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 781
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "view"
    .parameter "tintList"

    .prologue
    .line 950
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 951
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 955
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 956
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter "viewGroup"
    .parameter "enabled"

    .prologue
    .line 881
    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "view"
    .parameter "clipBounds"

    .prologue
    .line 871
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "elevation"

    .prologue
    .line 853
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "fitSystemWindows"

    .prologue
    .line 891
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "hasTransientState"

    .prologue
    .line 529
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 550
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "id"

    .prologue
    .line 574
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "view"
    .parameter "p"

    .prologue
    .line 577
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "view"
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 565
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "layoutDirection"

    .prologue
    .line 587
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 930
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 931
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 933
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 902
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 504
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0
    .parameter "view"
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 644
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 645
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 816
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 821
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 0
    .parameter "view"
    .parameter "pointerIcon"

    .prologue
    .line 1114
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 766
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 786
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 791
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 917
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 796
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 801
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "indicators"

    .prologue
    .line 1094
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "indicators"
    .parameter "mask"

    .prologue
    .line 1099
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "transitionName"

    .prologue
    .line 835
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 771
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 776
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "translationZ"

    .prologue
    .line 862
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 806
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 811
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "z"

    .prologue
    .line 1074
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "axes"

    .prologue
    .line 988
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 989
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    .line 991
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 996
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 997
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 999
    :cond_0
    return-void
.end method
