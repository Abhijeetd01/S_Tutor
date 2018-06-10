.class public Landroid/support/v7/widget/AppCompatRatingBar;
.super Landroid/widget/RatingBar;
.source "AppCompatRatingBar.java"


# instance fields
.field private mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;

.field private mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    sget v0, Landroid/support/v7/appcompat/R$attr;->ratingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 50
    new-instance v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/AppCompatDrawableManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    .line 58
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->getSampleTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, sampleTile:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getNumStars()I

    move-result v3

    mul-int v1, v2, v3

    .line 61
    .local v1, width:I
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getMeasuredHeight()I

    move-result v3

    .line 61
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/AppCompatRatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1           #width:I
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    .end local v0           #sampleTile:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
