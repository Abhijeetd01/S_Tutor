.class final Lcom/google/android/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private final cornerRadius:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizePx:F

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    .line 103
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 104
    .local v4, viewAttr:[I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 105
    .local v2, styledAttributes:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    .line 106
    const/high16 v5, 0x3f80

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    .line 107
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 111
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/high16 v5, 0x4000

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4320

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 112
    .local v3, twoDpInPx:I
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    .line 113
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    .line 114
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    .line 115
    int-to-float v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    .line 117
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 118
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 119
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 121
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    .line 122
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    return-void

    .line 103
    nop

    :array_0
    .array-data 0x4
        0x17t 0x2t 0x1t 0x1t
        0x18t 0x2t 0x1t 0x1t
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 402
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 0
    .parameter "canvas"
    .parameter "isTextCue"

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 333
    .local v10, layout:Landroid/text/StaticLayout;
    if-nez v10, :cond_0

    .line 388
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 339
    .local v15, saveCount:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v1, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v13, v1

    .line 350
    .local v13, previousBottom:F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    .line 351
    .local v11, lineCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iput v13, v1, Landroid/graphics/RectF;->top:F

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 351
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 361
    .end local v9           #i:I
    .end local v11           #lineCount:I
    .end local v13           #previousBottom:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 382
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 387
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 367
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 371
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .line 372
    .local v14, raised:Z
    :goto_3
    if-eqz v14, :cond_8

    const/4 v8, -0x1

    .line 373
    .local v8, colorUp:I
    :goto_4
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 374
    .local v7, colorDown:I
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v2, 0x4000

    div-float v12, v1, v2

    .line 375
    .local v12, offset:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v3, v12

    neg-float v4, v12

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 378
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v2, v12, v12, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .line 371
    .end local v7           #colorDown:I
    .end local v8           #colorUp:I
    .end local v12           #offset:F
    .end local v14           #raised:Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 372
    .restart local v14       #raised:Z
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    goto :goto_4

    .line 373
    .restart local v8       #colorUp:I
    :cond_9
    const/4 v7, -0x1

    goto :goto_5
.end method

.method private setupBitmapLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 310
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v4, v8, v9

    .line 311
    .local v4, parentWidth:I
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v3, v8, v9

    .line 312
    .local v3, parentHeight:I
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    int-to-float v8, v8

    int-to-float v9, v4

    iget v10, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v9, v10

    add-float v0, v8, v9

    .line 313
    .local v0, anchorX:F
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    int-to-float v8, v8

    int-to-float v9, v3

    iget v10, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v9, v10

    add-float v1, v8, v9

    .line 314
    .local v1, anchorY:F
    int-to-float v8, v4

    iget v9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 315
    .local v5, width:I
    int-to-float v8, v5

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 316
    .local v2, height:I
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v8, v12, :cond_2

    int-to-float v8, v5

    sub-float/2addr v0, v8

    .end local v0           #anchorX:F
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 318
    .local v6, x:I
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v8, v12, :cond_3

    int-to-float v8, v2

    sub-float/2addr v1, v8

    .end local v1           #anchorY:F
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 320
    .local v7, y:I
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v5

    add-int v10, v7, v2

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 321
    return-void

    .line 316
    .end local v6           #x:I
    .end local v7           #y:I
    .restart local v0       #anchorX:F
    .restart local v1       #anchorY:F
    :cond_2
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v8, v11, :cond_0

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float/2addr v0, v8

    goto :goto_0

    .line 318
    .end local v0           #anchorX:F
    .restart local v6       #x:I
    :cond_3
    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v8, v11, :cond_1

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    sub-float/2addr v1, v8

    goto :goto_1
.end method

.method private setupTextLayout()V
    .locals 26

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v20, v2, v3

    .line 227
    .local v20, parentWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v19, v2, v3

    .line 229
    .local v19, parentHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    const/high16 v3, 0x3e00

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v23, v0

    .line 232
    .local v23, textPaddingX:I
    mul-int/lit8 v2, v23, 0x2

    sub-int v5, v20, v2

    .line 233
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 234
    int-to-float v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v2, v3

    float-to-int v5, v2

    .line 236
    :cond_0
    if-gtz v5, :cond_1

    .line 237
    const-string v2, "SubtitlePainter"

    const-string v3, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 241
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 242
    .local v6, textAlignment:Landroid/text/Layout$Alignment;
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v21

    .line 245
    .local v21, textHeight:I
    const/4 v10, 0x0

    .line 246
    .local v10, textWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v18

    .line 247
    .local v18, lineCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 247
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 241
    .end local v6           #textAlignment:Landroid/text/Layout$Alignment;
    .end local v10           #textWidth:I
    .end local v17           #i:I
    .end local v18           #lineCount:I
    .end local v21           #textHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 250
    .restart local v6       #textAlignment:Landroid/text/Layout$Alignment;
    .restart local v10       #textWidth:I
    .restart local v17       #i:I
    .restart local v18       #lineCount:I
    .restart local v21       #textHeight:I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    if-ge v10, v5, :cond_4

    .line 251
    move v10, v5

    .line 253
    :cond_4
    mul-int/lit8 v2, v23, 0x2

    add-int/2addr v10, v2

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 258
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int v15, v2, v3

    .line 259
    .local v15, anchorPosition:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sub-int v22, v15, v10

    .line 262
    .local v22, textLeft:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 263
    add-int v2, v22, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 269
    .end local v15           #anchorPosition:I
    .local v24, textRight:I
    :goto_4
    sub-int v10, v24, v22

    .line 270
    if-gtz v10, :cond_8

    .line 271
    const-string v2, "SubtitlePainter"

    const-string v3, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 259
    .end local v22           #textLeft:I
    .end local v24           #textRight:I
    .restart local v15       #anchorPosition:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v2, v10

    div-int/lit8 v22, v2, 0x2

    goto :goto_3

    :cond_6
    move/from16 v22, v15

    goto :goto_3

    .line 265
    .end local v15           #anchorPosition:I
    :cond_7
    sub-int v2, v20, v10

    div-int/lit8 v22, v2, 0x2

    .line 266
    .restart local v22       #textLeft:I
    add-int v24, v22, v10

    .restart local v24       #textRight:I
    goto :goto_4

    .line 276
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    .line 278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v2, :cond_a

    .line 279
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v15, v2, v3

    .line 289
    .restart local v15       #anchorPosition:I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    sub-int v25, v15, v21

    .line 292
    .local v25, textTop:I
    :goto_6
    add-int v2, v25, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v2, v3, :cond_e

    .line 293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v25, v2, v21

    .line 302
    .end local v15           #anchorPosition:I
    :cond_9
    :goto_7
    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v14, 0x1

    move-object v11, v6

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 304
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    .line 305
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    .line 306
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    goto/16 :goto_0

    .line 282
    .end local v25           #textTop:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    sub-int v16, v2, v3

    .line 283
    .local v16, firstLineHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    .line 284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v15, v2, v3

    .restart local v15       #anchorPosition:I
    goto :goto_5

    .line 286
    .end local v15           #anchorPosition:I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int v15, v2, v3

    .restart local v15       #anchorPosition:I
    goto/16 :goto_5

    .line 289
    .end local v16           #firstLineHeight:I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    mul-int/lit8 v2, v15, 0x2

    sub-int v2, v2, v21

    div-int/lit8 v25, v2, 0x2

    goto/16 :goto_6

    :cond_d
    move/from16 v25, v15

    goto/16 :goto_6

    .line 294
    .restart local v25       #textTop:I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v25, v0

    goto/16 :goto_7

    .line 298
    .end local v15           #anchorPosition:I
    .end local v25           #textTop:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v2, v2, v21

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v25, v2, v3

    .restart local v25       #textTop:I
    goto/16 :goto_7
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer2/text/Cue;ZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V
    .locals 7
    .parameter "cue"
    .parameter "applyEmbeddedStyles"
    .parameter "style"
    .parameter "textSizePx"
    .parameter "bottomPaddingFraction"
    .parameter "canvas"
    .parameter "cueBoxLeft"
    .parameter "cueBoxTop"
    .parameter "cueBoxRight"
    .parameter "cueBoxBottom"

    .prologue
    .line 148
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 149
    .local v3, isTextCue:Z
    :goto_0
    const/4 v2, 0x0

    .line 150
    .local v2, cueText:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 151
    .local v1, cueBitmap:Landroid/graphics/Bitmap;
    const/high16 v4, -0x100

    .line 152
    .local v4, windowColor:I
    if-eqz v3, :cond_4

    .line 153
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    :goto_1
    return-void

    .line 148
    .end local v1           #cueBitmap:Landroid/graphics/Bitmap;
    .end local v2           #cueText:Ljava/lang/CharSequence;
    .end local v3           #isTextCue:Z
    .end local v4           #windowColor:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .restart local v1       #cueBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #cueText:Ljava/lang/CharSequence;
    .restart local v3       #isTextCue:Z
    .restart local v4       #windowColor:I
    :cond_1
    iget-boolean v5, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v5, :cond_3

    iget v4, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    .line 159
    :goto_2
    if-nez p2, :cond_2

    .line 161
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    iget v4, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 167
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v6, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 168
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    if-ne v5, v1, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    if-ne v5, p2, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    if-ne v5, v4, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    cmpl-float v5, v5, p4

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v5, v5, p5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    if-ne v5, p7, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ne v5, p8, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move/from16 v0, p9

    if-ne v5, v0, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move/from16 v0, p10

    if-ne v5, v0, :cond_5

    .line 190
    invoke-direct {p0, p6, v3}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 158
    :cond_3
    iget v4, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    goto/16 :goto_2

    .line 165
    :cond_4
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 194
    :cond_5
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 195
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 196
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    .line 198
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    .line 199
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 200
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    .line 201
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 202
    iget v5, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    .line 203
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    .line 204
    iget v5, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    .line 205
    iget v5, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    .line 206
    iput v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    .line 207
    iget v5, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    .line 208
    iget v5, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    iput v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 209
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p3, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    iput p4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    .line 211
    iput p5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 212
    iput p7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    .line 213
    iput p8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    .line 214
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    .line 215
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    .line 217
    if-eqz v3, :cond_6

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupTextLayout()V

    .line 222
    :goto_4
    invoke-direct {p0, p6, v3}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 220
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupBitmapLayout()V

    goto :goto_4
.end method
