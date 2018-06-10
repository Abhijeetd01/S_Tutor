.class public Lcom/google/android/exoplayer2/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/Cue$LineType;,
        Lcom/google/android/exoplayer2/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final DIMEN_UNSET:F = 1.4E-45f

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final positionAnchor:I

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FIFIF)V
    .locals 12
    .parameter "bitmap"
    .parameter "horizontalPosition"
    .parameter "horizontalPositionAnchor"
    .parameter "verticalPosition"
    .parameter "verticalPositionAnchor"
    .parameter "width"

    .prologue
    .line 196
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x100

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move v7, p2

    move v8, p3

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFZI)V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "text"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    .line 207
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11
    .parameter "text"
    .parameter "textAlignment"
    .parameter "line"
    .parameter "lineType"
    .parameter "lineAnchor"
    .parameter "position"
    .parameter "positionAnchor"
    .parameter "size"

    .prologue
    .line 224
    const/4 v9, 0x0

    const/high16 v10, -0x100

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 12
    .parameter "text"
    .parameter "textAlignment"
    .parameter "line"
    .parameter "lineType"
    .parameter "lineAnchor"
    .parameter "position"
    .parameter "positionAnchor"
    .parameter "size"
    .parameter "windowColorSet"
    .parameter "windowColor"

    .prologue
    .line 245
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFZI)V

    .line 247
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFZI)V
    .locals 0
    .parameter "text"
    .parameter "textAlignment"
    .parameter "bitmap"
    .parameter "line"
    .parameter "lineType"
    .parameter "lineAnchor"
    .parameter "position"
    .parameter "positionAnchor"
    .parameter "size"
    .parameter "windowColorSet"
    .parameter "windowColor"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 253
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 254
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 255
    iput p4, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    .line 256
    iput p5, p0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    .line 257
    iput p6, p0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    .line 258
    iput p7, p0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    .line 259
    iput p8, p0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    .line 260
    iput p9, p0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    .line 261
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    .line 262
    iput p11, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    .line 263
    return-void
.end method
