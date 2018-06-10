.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 575
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 576
    const/16 v0, 0x6400

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->access$000()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 594
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, swatches:Ljava/util/List;,"Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 575
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 576
    const/16 v0, 0x6400

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 607
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->access$000()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 613
    return-void
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 12
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 851
    .local v3, bitmapWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 852
    .local v7, bitmapHeight:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, pixels:[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 853
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 855
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 870
    .end local v1           #pixels:[I
    :goto_0
    return-object v1

    .line 861
    .restart local v1       #pixels:[I
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 862
    .local v9, regionWidth:I
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 865
    .local v8, regionHeight:I
    mul-int v0, v9, v8

    new-array v11, v0, [I

    .line 866
    .local v11, subsetPixels:[I
    const/4 v10, 0x0

    .local v10, row:I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 867
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    mul-int/2addr v0, v3

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    mul-int v2, v10, v9

    invoke-static {v1, v0, v11, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v11

    .line 870
    goto :goto_0
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 878
    const-wide/high16 v2, -0x4010

    .line 880
    .local v2, scaleRatio:D
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-lez v4, :cond_1

    .line 881
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v0, v4, v5

    .line 882
    .local v0, bitmapArea:I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-le v0, v4, :cond_0

    .line 883
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    int-to-double v4, v4

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 892
    .end local v0           #bitmapArea:I
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 897
    .end local p1
    :goto_1
    return-object p1

    .line 885
    .restart local p1
    :cond_1
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v4, :cond_0

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 887
    .local v1, maxDimension:I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-le v1, v4, :cond_0

    .line 888
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    int-to-double v4, v4

    int-to-double v6, v1

    div-double v2, v4, v6

    goto :goto_0

    .line 898
    .end local v1           #maxDimension:I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    const/4 v6, 0x0

    .line 897
    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .parameter "filter"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .parameter "target"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_0
    return-object p0
.end method

.method public clearFilters()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 676
    return-object p0
.end method

.method public clearRegion()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 723
    return-object p0
.end method

.method public clearTargets()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    :cond_0
    return-object p0
.end method

.method public generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 4
    .parameter "listener"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroid/support/v7/graphics/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;-><init>(Landroid/support/v7/graphics/Palette$Builder;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public generate()Landroid/support/v7/graphics/Palette;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 756
    const/4 v1, 0x0

    .line 762
    .local v1, logger:Landroid/util/TimingLogger;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    .line 766
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8}, Landroid/support/v7/graphics/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 769
    const-string v8, "Processed Bitmap"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 772
    :cond_0
    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 773
    .local v4, region:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v8, :cond_1

    if-eqz v4, :cond_1

    .line 776
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v10, v8

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v12, v8

    div-double v6, v10, v12

    .line 777
    .local v6, scale:D
    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-double v10, v8

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 778
    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-double v10, v8

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 779
    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-double v10, v8

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 780
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 779
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 781
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    int-to-double v10, v8

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 782
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 781
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 786
    .end local v6           #scale:D
    :cond_1
    new-instance v3, Landroid/support/v7/graphics/ColorCutQuantizer;

    .line 787
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v10

    iget v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 789
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v9

    :goto_0
    invoke-direct {v3, v10, v11, v8}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    .line 792
    .local v3, quantizer:Landroid/support/v7/graphics/ColorCutQuantizer;
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v8, :cond_2

    .line 793
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 796
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v5

    .line 798
    .local v5, swatches:Ljava/util/List;,"Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v1, :cond_3

    .line 799
    const-string v8, "Color quantization completed"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 807
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #quantizer:Landroid/support/v7/graphics/ColorCutQuantizer;
    .end local v4           #region:Landroid/graphics/Rect;
    :cond_3
    :goto_1
    new-instance v2, Landroid/support/v7/graphics/Palette;

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v2, v5, v8, v9}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;Landroid/support/v7/graphics/Palette$1;)V

    .line 809
    .local v2, p:Landroid/support/v7/graphics/Palette;
    #calls: Landroid/support/v7/graphics/Palette;->generate()V
    invoke-static {v2}, Landroid/support/v7/graphics/Palette;->access$200(Landroid/support/v7/graphics/Palette;)V

    .line 811
    if-eqz v1, :cond_4

    .line 812
    const-string v8, "Created Palette"

    invoke-virtual {v1, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 816
    :cond_4
    return-object v2

    .line 789
    .end local v2           #p:Landroid/support/v7/graphics/Palette;
    .end local v5           #swatches:Ljava/util/List;,"Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #region:Landroid/graphics/Rect;
    :cond_5
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v12, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v8, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_0

    .line 803
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #region:Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v5       #swatches:Ljava/util/List;,"Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    goto :goto_1
.end method

.method public maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .parameter "colors"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 625
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 626
    return-object p0
.end method

.method public resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .parameter "area"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 664
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 666
    return-object p0
.end method

.method public resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .parameter "maxDimension"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    .line 646
    return-object p0
.end method

.method public setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 709
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    return-object p0
.end method
