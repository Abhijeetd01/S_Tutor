.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
    }
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# instance fields
.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 84
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 116
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 122
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 123
    .local v1, height:I
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 124
    .local v2, viewAspectRatio:F
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v2

    const/high16 v5, 0x3f80

    sub-float v0, v4, v5

    .line 125
    .local v0, aspectDeformation:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    .line 130
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v4, :pswitch_data_0

    .line 138
    cmpl-float v4, v0, v6

    if-lez v4, :cond_2

    .line 139
    int-to-float v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 145
    :goto_1
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 146
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 145
    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 132
    :pswitch_0
    int-to-float v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 133
    goto :goto_1

    .line 135
    :pswitch_1
    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 136
    goto :goto_1

    .line 141
    :cond_2
    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .locals 1
    .parameter "widthHeightRatio"

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 99
    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .parameter "resizeMode"

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 111
    :cond_0
    return-void
.end method
