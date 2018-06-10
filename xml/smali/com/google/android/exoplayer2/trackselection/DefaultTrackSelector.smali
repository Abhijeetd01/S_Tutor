.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I = null

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final paramsReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 2
    .parameter "adaptiveVideoTrackSelectionFactory"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 393
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 394
    return-void
.end method

.method private static compareFormatValues(II)I
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v0, -0x1

    .line 657
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static filterAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 10
    .parameter "group"
    .parameter "formatSupport"
    .parameter "requiredAdaptiveSupport"
    .parameter "mimeType"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p7, selectedTrackIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 570
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 571
    .local v9, trackIndex:I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v9

    move-object v2, p3

    move v4, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 577
    .end local v9           #trackIndex:I
    :cond_1
    return-void
.end method

.method protected static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1
    .parameter "format"
    .parameter "language"

    .prologue
    .line 794
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 11
    .parameter "group"
    .parameter "formatSupport"
    .parameter "requiredAdaptiveSupport"
    .parameter "mimeType"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 554
    .local p7, selectedTrackIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 555
    .local v8, adaptiveTrackCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 556
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 557
    .local v10, trackIndex:I
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v10

    move-object v2, p3

    move v4, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    add-int/lit8 v8, v8, 0x1

    .line 555
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 563
    .end local v10           #trackIndex:I
    :cond_1
    return v8
.end method

.method private static getAdaptiveTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .locals 25
    .parameter "group"
    .parameter "formatSupport"
    .parameter "allowMixedMimeTypes"
    .parameter "requiredAdaptiveSupport"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "orientationMayChange"

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 515
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 548
    :goto_0
    return-object v4

    .line 518
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 520
    .local v11, selectedTrackIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 521
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    .line 524
    :cond_1
    const/4 v15, 0x0

    .line 525
    .local v15, selectedMimeType:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 527
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 528
    .local v22, seenMimeTypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 529
    .local v23, selectedMimeTypeTrackCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    .line 530
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 531
    .local v24, trackIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 532
    .local v7, sampleMimeType:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 533
    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v20

    .line 536
    .local v20, countForMimeType:I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 537
    move-object v15, v7

    .line 538
    move/from16 v23, v20

    .line 529
    .end local v20           #countForMimeType:I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .end local v7           #sampleMimeType:Ljava/lang/String;
    .end local v21           #i:I
    .end local v22           #seenMimeTypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #selectedMimeTypeTrackCount:I
    .end local v24           #trackIndex:I
    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, v11

    .line 545
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 548
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    :cond_4
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4
    .parameter "orientationMayChange"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "videoWidth"
    .parameter "videoHeight"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v3, v1

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v3, v1, :cond_0

    .line 854
    move v0, p1

    .line 855
    .local v0, tempViewportWidth:I
    move p1, p2

    .line 856
    move p2, v0

    .line 859
    .end local v0           #tempViewportWidth:I
    :cond_0
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_3

    .line 861
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 864
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 852
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 864
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 11
    .parameter "group"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "orientationMayChange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x3f7ae148

    const v9, 0x7fffffff

    .line 802
    new-instance v5, Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    .local v5, selectedTrackIndices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_0

    .line 804
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    :cond_0
    if-eq p1, v9, :cond_1

    if-ne p2, v9, :cond_2

    .line 843
    :cond_1
    return-object v5

    .line 812
    :cond_2
    const v2, 0x7fffffff

    .line 813
    .local v2, maxVideoPixelsToRetain:I
    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_4

    .line 814
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 818
    .local v0, format:Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_3

    .line 819
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 821
    .local v3, maxVideoSizeInViewport:Landroid/graphics/Point;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v7, v8

    .line 822
    .local v6, videoPixels:I
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    if-ge v6, v2, :cond_3

    .line 825
    move v2, v6

    .line 813
    .end local v3           #maxVideoSizeInViewport:Landroid/graphics/Point;
    .end local v6           #videoPixels:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 833
    .end local v0           #format:Lcom/google/android/exoplayer2/Format;
    :cond_4
    if-eq v2, v9, :cond_1

    .line 834
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_1

    .line 835
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 836
    .restart local v0       #format:Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 837
    .local v4, pixelCount:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    if-le v4, v2, :cond_6

    .line 838
    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 834
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method protected static isSupported(IZ)Z
    .locals 2
    .parameter "formatSupport"
    .parameter "allowExceedsCapabilities"

    .prologue
    .line 788
    and-int/lit8 v0, p0, 0x3

    .line 789
    .local v0, maskedSupport:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .locals 3
    .parameter "format"
    .parameter "mimeType"
    .parameter "formatSupport"
    .parameter "requiredAdaptiveSupport"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 582
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int v1, p2, p3

    if-eqz v1, :cond_4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 583
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v1, p4, :cond_4

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v1, p5, :cond_4

    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v1, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 582
    :cond_4
    return v0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .parameter "rendererCapabilities"
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter "allowNonSeamlessAdaptiveness"
    .parameter "allowMixedMimeAdaptiveness"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "orientationMayChange"
    .parameter "adaptiveVideoTrackSelectionFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p6, :cond_0

    const/16 v4, 0xc

    .line 496
    .local v4, requiredAdaptiveSupport:I
    :goto_0
    if-eqz p7, :cond_1

    .line 497
    invoke-interface {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 498
    .local v3, allowMixedMimeTypes:Z
    :goto_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v12, v2, :cond_3

    .line 499
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 500
    .local v1, group:Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v2, p2, v12

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v11

    .line 503
    .local v11, adaptiveTracks:[I
    array-length v2, v11

    if-lez v2, :cond_2

    .line 504
    move-object/from16 v0, p11

    invoke-interface {v0, v1, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 507
    .end local v1           #group:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11           #adaptiveTracks:[I
    :goto_3
    return-object v2

    .line 493
    .end local v3           #allowMixedMimeTypes:Z
    .end local v4           #requiredAdaptiveSupport:I
    .end local v12           #i:I
    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    .line 497
    .restart local v4       #requiredAdaptiveSupport:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 498
    .restart local v1       #group:Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v3       #allowMixedMimeTypes:Z
    .restart local v11       #adaptiveTracks:[I
    .restart local v12       #i:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 507
    .end local v1           #group:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11           #adaptiveTracks:[I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 22
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "orientationMayChange"
    .parameter "exceedConstraintsIfNecessary"
    .parameter "exceedRendererCapabilitiesIfNecessary"

    .prologue
    .line 593
    const/4 v11, 0x0

    .line 594
    .local v11, selectedGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v13, 0x0

    .line 595
    .local v13, selectedTrackIndex:I
    const/4 v15, 0x0

    .line 596
    .local v15, selectedTrackScore:I
    const/4 v10, -0x1

    .line 597
    .local v10, selectedBitrate:I
    const/4 v12, -0x1

    .line 598
    .local v12, selectedPixelCount:I
    const/4 v7, 0x0

    .local v7, groupIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_f

    .line 599
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v17

    .line 600
    .local v17, trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, v17

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v14

    .line 602
    .local v14, selectedTrackIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v16, p1, v7

    .line 603
    .local v16, trackFormatSupport:[I
    const/16 v18, 0x0

    .local v18, trackIndex:I
    :goto_1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 604
    aget v20, v16, v18

    move/from16 v0, v20

    move/from16 v1, p9

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 605
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 606
    .local v5, format:Lcom/google/android/exoplayer2/Format;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    :cond_0
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p3

    if-gt v0, v1, :cond_4

    :cond_1
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-gt v0, v1, :cond_4

    :cond_2
    const/4 v8, 0x1

    .line 610
    .local v8, isWithinConstraints:Z
    :goto_2
    if-nez v8, :cond_5

    if-nez p8, :cond_5

    .line 603
    .end local v5           #format:Lcom/google/android/exoplayer2/Format;
    .end local v8           #isWithinConstraints:Z
    :cond_3
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 606
    .restart local v5       #format:Lcom/google/android/exoplayer2/Format;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 614
    .restart local v8       #isWithinConstraints:Z
    :cond_5
    if-eqz v8, :cond_8

    const/16 v19, 0x2

    .line 615
    .local v19, trackScore:I
    :goto_4
    aget v20, v16, v18

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 616
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    .line 618
    :cond_6
    move/from16 v0, v19

    if-le v0, v15, :cond_9

    const/4 v9, 0x1

    .line 619
    .local v9, selectTrack:Z
    :goto_5
    move/from16 v0, v19

    if-ne v0, v15, :cond_7

    .line 625
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v6

    .line 626
    .local v6, formatPixelCount:I
    if-eq v6, v12, :cond_a

    .line 627
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .line 631
    .local v4, comparisonResult:I
    :goto_6
    if-eqz v8, :cond_c

    if-lez v4, :cond_b

    const/4 v9, 0x1

    .line 633
    .end local v4           #comparisonResult:I
    .end local v6           #formatPixelCount:I
    :cond_7
    :goto_7
    if-eqz v9, :cond_3

    .line 634
    move-object/from16 v11, v17

    .line 635
    move/from16 v13, v18

    .line 636
    move/from16 v15, v19

    .line 637
    iget v10, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 638
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v12

    goto :goto_3

    .line 614
    .end local v9           #selectTrack:Z
    .end local v19           #trackScore:I
    :cond_8
    const/16 v19, 0x1

    goto :goto_4

    .line 618
    .restart local v19       #trackScore:I
    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 629
    .restart local v6       #formatPixelCount:I
    .restart local v9       #selectTrack:Z
    :cond_a
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .restart local v4       #comparisonResult:I
    goto :goto_6

    .line 631
    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    if-gez v4, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 598
    .end local v4           #comparisonResult:I
    .end local v5           #format:Lcom/google/android/exoplayer2/Format;
    .end local v6           #formatPixelCount:I
    .end local v8           #isWithinConstraints:Z
    .end local v9           #selectTrack:Z
    .end local v19           #trackScore:I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 643
    .end local v14           #selectedTrackIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16           #trackFormatSupport:[I
    .end local v17           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v18           #trackIndex:I
    :cond_f
    if-nez v11, :cond_10

    const/16 v20, 0x0

    :goto_8
    return-object v20

    :cond_10
    new-instance v20, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v13}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_8
.end method


# virtual methods
.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "preferredAudioLanguage"
    .parameter "exceedRendererCapabilitiesIfNecessary"

    .prologue
    .line 665
    const/4 v4, 0x0

    .line 666
    .local v4, selectedGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    .line 667
    .local v5, selectedTrackIndex:I
    const/4 v6, 0x0

    .line 668
    .local v6, selectedTrackScore:I
    const/4 v2, 0x0

    .local v2, groupIndex:I
    :goto_0
    iget v11, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v11, :cond_7

    .line 669
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 670
    .local v8, trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p2, v2

    .line 671
    .local v7, trackFormatSupport:[I
    const/4 v9, 0x0

    .local v9, trackIndex:I
    :goto_1
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_6

    .line 672
    aget v11, v7, v9

    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 673
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 674
    .local v1, format:Lcom/google/android/exoplayer2/Format;
    iget v11, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    .line 676
    .local v3, isDefault:Z
    :goto_2
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 677
    if-eqz v3, :cond_3

    .line 678
    const/4 v10, 0x4

    .line 687
    .local v10, trackScore:I
    :goto_3
    aget v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 688
    add-int/lit16 v10, v10, 0x3e8

    .line 690
    :cond_0
    if-le v10, v6, :cond_1

    .line 691
    move-object v4, v8

    .line 692
    move v5, v9

    .line 693
    move v6, v10

    .line 671
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    .end local v10           #trackScore:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 674
    .restart local v1       #format:Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 680
    .restart local v3       #isDefault:Z
    :cond_3
    const/4 v10, 0x3

    .restart local v10       #trackScore:I
    goto :goto_3

    .line 682
    .end local v10           #trackScore:I
    :cond_4
    if-eqz v3, :cond_5

    .line 683
    const/4 v10, 0x2

    .restart local v10       #trackScore:I
    goto :goto_3

    .line 685
    .end local v10           #trackScore:I
    :cond_5
    const/4 v10, 0x1

    .restart local v10       #trackScore:I
    goto :goto_3

    .line 668
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    .end local v10           #trackScore:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .end local v7           #trackFormatSupport:[I
    .end local v8           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9           #trackIndex:I
    :cond_7
    if-nez v4, :cond_8

    const/4 v11, 0x0

    :goto_4
    return-object v11

    :cond_8
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v11, v4, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .parameter "trackType"
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "exceedRendererCapabilitiesIfNecessary"

    .prologue
    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, selectedGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    .line 763
    .local v5, selectedTrackIndex:I
    const/4 v6, 0x0

    .line 764
    .local v6, selectedTrackScore:I
    const/4 v2, 0x0

    .local v2, groupIndex:I
    :goto_0
    iget v11, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v11, :cond_5

    .line 765
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 766
    .local v8, trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p3, v2

    .line 767
    .local v7, trackFormatSupport:[I
    const/4 v9, 0x0

    .local v9, trackIndex:I
    :goto_1
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_4

    .line 768
    aget v11, v7, v9

    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 769
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 770
    .local v1, format:Lcom/google/android/exoplayer2/Format;
    iget v11, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    .line 771
    .local v3, isDefault:Z
    :goto_2
    if-eqz v3, :cond_3

    const/4 v10, 0x2

    .line 772
    .local v10, trackScore:I
    :goto_3
    aget v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 773
    add-int/lit16 v10, v10, 0x3e8

    .line 775
    :cond_0
    if-le v10, v6, :cond_1

    .line 776
    move-object v4, v8

    .line 777
    move v5, v9

    .line 778
    move v6, v10

    .line 767
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    .end local v10           #trackScore:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 770
    .restart local v1       #format:Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 771
    .restart local v3       #isDefault:Z
    :cond_3
    const/4 v10, 0x1

    goto :goto_3

    .line 764
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v7           #trackFormatSupport:[I
    .end local v8           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9           #trackIndex:I
    :cond_5
    if-nez v4, :cond_6

    const/4 v11, 0x0

    :goto_4
    return-object v11

    :cond_6
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v11, v4, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 14
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "preferredTextLanguage"
    .parameter "preferredAudioLanguage"
    .parameter "exceedRendererCapabilitiesIfNecessary"

    .prologue
    .line 707
    const/4 v5, 0x0

    .line 708
    .local v5, selectedGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 709
    .local v6, selectedTrackIndex:I
    const/4 v7, 0x0

    .line 710
    .local v7, selectedTrackScore:I
    const/4 v2, 0x0

    .local v2, groupIndex:I
    :goto_0
    iget v12, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v12, :cond_a

    .line 711
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 712
    .local v9, trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p2, v2

    .line 713
    .local v8, trackFormatSupport:[I
    const/4 v10, 0x0

    .local v10, trackIndex:I
    :goto_1
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v12, :cond_9

    .line 714
    aget v12, v8, v10

    move/from16 v0, p5

    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 715
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 716
    .local v1, format:Lcom/google/android/exoplayer2/Format;
    iget v12, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    const/4 v3, 0x1

    .line 717
    .local v3, isDefault:Z
    :goto_2
    iget v12, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3

    const/4 v4, 0x1

    .line 719
    .local v4, isForced:Z
    :goto_3
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 720
    if-eqz v3, :cond_4

    .line 721
    const/4 v11, 0x6

    .line 742
    .local v11, trackScore:I
    :goto_4
    aget v12, v8, v10

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 743
    add-int/lit16 v11, v11, 0x3e8

    .line 745
    :cond_0
    if-le v11, v7, :cond_1

    .line 746
    move-object v5, v9

    .line 747
    move v6, v10

    .line 748
    move v7, v11

    .line 713
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    .end local v4           #isForced:Z
    .end local v11           #trackScore:I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 716
    .restart local v1       #format:Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 717
    .restart local v3       #isDefault:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 722
    .restart local v4       #isForced:Z
    :cond_4
    if-nez v4, :cond_5

    .line 726
    const/4 v11, 0x5

    .restart local v11       #trackScore:I
    goto :goto_4

    .line 728
    .end local v11           #trackScore:I
    :cond_5
    const/4 v11, 0x4

    .restart local v11       #trackScore:I
    goto :goto_4

    .line 730
    .end local v11           #trackScore:I
    :cond_6
    if-eqz v3, :cond_7

    .line 731
    const/4 v11, 0x3

    .restart local v11       #trackScore:I
    goto :goto_4

    .line 732
    .end local v11           #trackScore:I
    :cond_7
    if-eqz v4, :cond_1

    .line 733
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 734
    const/4 v11, 0x2

    .restart local v11       #trackScore:I
    goto :goto_4

    .line 736
    .end local v11           #trackScore:I
    :cond_8
    const/4 v11, 0x1

    .restart local v11       #trackScore:I
    goto :goto_4

    .line 710
    .end local v1           #format:Lcom/google/android/exoplayer2/Format;
    .end local v3           #isDefault:Z
    .end local v4           #isForced:Z
    .end local v11           #trackScore:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    .end local v8           #trackFormatSupport:[I
    .end local v9           #trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10           #trackIndex:I
    :cond_a
    if-nez v5, :cond_b

    const/4 v12, 0x0

    :goto_5
    return-object v12

    :cond_b
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v12, v5, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_5
.end method

.method protected selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 21
    .parameter "rendererCapabilities"
    .parameter "rendererTrackGroupArrays"
    .parameter "rendererFormatSupports"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 424
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 425
    .local v19, rendererCount:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-object/from16 v20, v0

    .line 426
    .local v20, rendererTrackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 428
    .local v18, params:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 429
    const/4 v2, 0x2

    aget-object v3, p1, v17

    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 430
    aget-object v3, p1, v17

    aget-object v4, p2, v17

    aget-object v5, p3, v17

    move-object/from16 v0, v18

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move-object/from16 v0, v18

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    move-object/from16 v0, v18

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    move-object/from16 v0, v18

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    move-object/from16 v0, v18

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;ZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    .line 428
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 439
    :cond_1
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 440
    aget-object v2, p1, v17

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 455
    aget-object v2, p1, v17

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    aget-object v3, p2, v17

    aget-object v4, p3, v17

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    .line 439
    :goto_2
    :pswitch_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 445
    :pswitch_1
    aget-object v2, p2, v17

    aget-object v3, p3, v17

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    goto :goto_2

    .line 450
    :pswitch_2
    aget-object v3, p2, v17

    aget-object v4, p3, v17

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    goto :goto_2

    .line 461
    :cond_2
    return-object v20

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;ZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 11
    .parameter "rendererCapabilities"
    .parameter "groups"
    .parameter "formatSupport"
    .parameter "maxVideoWidth"
    .parameter "maxVideoHeight"
    .parameter "maxVideoBitrate"
    .parameter "allowNonSeamlessAdaptiveness"
    .parameter "allowMixedMimeAdaptiveness"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "orientationMayChange"
    .parameter "adaptiveVideoTrackSelectionFactory"
    .parameter "exceedConstraintsIfNecessary"
    .parameter "exceedRendererCapabilitiesIfNecessary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v10, 0x0

    .line 474
    .local v10, selection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz p12, :cond_0

    .line 475
    invoke-static/range {p1 .. p12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 480
    :cond_0
    if-nez v10, :cond_1

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    move/from16 v9, p14

    .line 481
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 485
    :cond_1
    return-object v10
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 402
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 406
    :cond_0
    return-void
.end method
