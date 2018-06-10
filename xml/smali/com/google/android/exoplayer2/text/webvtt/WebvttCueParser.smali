.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .parameter "entity"
    .parameter "spannedText"

    .prologue
    .line 326
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 340
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unsupported entity: \'&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_1
    return-void

    .line 326
    :sswitch_0
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nbsp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "amp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 328
    :pswitch_0
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 331
    :pswitch_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 334
    :pswitch_2
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 337
    :pswitch_3
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 326
    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_1
        0xd88 -> :sswitch_0
        0x179c4 -> :sswitch_3
        0x337f11 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter "cueId"
    .parameter "startTag"
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, styles:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local p4, scratchStyleMatches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v9, 0x21

    .line 361
    iget v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 362
    .local v2, start:I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 363
    .local v0, end:I
    iget-object v7, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 389
    :cond_1
    return-void

    .line 363
    :sswitch_0
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_2
    const-string v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    goto :goto_0

    :sswitch_3
    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "lang"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    .line 365
    :pswitch_0
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 383
    :goto_1
    :pswitch_1
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 384
    invoke-static {p3, p0, p1, p4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V

    .line 385
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    .line 386
    .local v3, styleMatchesCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 387
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-static {p2, v4, v2, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    .end local v1           #i:I
    .end local v3           #styleMatchesCount:I
    :pswitch_2
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 373
    :pswitch_3
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x62 -> :sswitch_0
        0x63 -> :sswitch_3
        0x69 -> :sswitch_1
        0x75 -> :sswitch_2
        0x76 -> :sswitch_5
        0x3291ee -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V
    .locals 4
    .parameter "spannedText"
    .parameter "style"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0x21

    .line 393
    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 397
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 403
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 406
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 410
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 411
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 415
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 418
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 419
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 422
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 428
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 432
    :pswitch_2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 2
    .parameter "markup"
    .parameter "startPos"

    .prologue
    .line 321
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 322
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "id"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, declaredStyles:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local p3, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 458
    .local v3, styleCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 459
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 460
    .local v2, style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    iget-object v4, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    iget-object v6, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v5, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 461
    .local v1, score:I
    if-lez v1, :cond_0

    .line 462
    new-instance v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v1           #score:I
    .end local v2           #style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 466
    return-void
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tagExpression"

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[ \\.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 4
    .parameter "tagName"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 355
    :pswitch_0
    return v0

    .line 346
    :sswitch_0
    const-string v3, "b"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "i"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "lang"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "u"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "v"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x69 -> :sswitch_2
        0x75 -> :sswitch_4
        0x76 -> :sswitch_5
        0x3291ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 8
    .parameter "id"
    .parameter "cueHeaderMatcher"
    .parameter "webvttData"
    .parameter "builder"
    .parameter "textBuilder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, styles:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setStartTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 224
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setEndTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    .line 233
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 237
    const-string v3, "\n"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WebvttCueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping cue with bad header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 242
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :goto_1
    return v2

    .line 241
    .restart local v1       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3, p5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    goto :goto_1
.end method

.method static parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 7
    .parameter "cueSettingsList"
    .parameter "builder"

    .prologue
    .line 120
    sget-object v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    .local v0, cueSettingMatcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, value:Ljava/lang/String;
    :try_start_0
    const-string v4, "line"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    const-string v4, "align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 129
    :cond_1
    const-string v4, "position"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 131
    :cond_2
    const-string v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setWidth(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 134
    :cond_3
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cue setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 140
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V
    .locals 19
    .parameter "id"
    .parameter "markup"
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, styles:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 153
    .local v13, spannedText:Landroid/text/SpannableStringBuilder;
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 154
    .local v15, startTagStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v10, scratchStyleMatches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v9, 0x0

    .line 156
    .local v9, pos:I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_c

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 158
    .local v3, curr:C
    sparse-switch v3, :sswitch_data_0

    .line 205
    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 206
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    :sswitch_0
    add-int/lit8 v17, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 161
    add-int/lit8 v9, v9, 0x1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    move v8, v9

    .line 165
    .local v8, ltPos:I
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    .line 166
    .local v6, isClosingTag:Z
    :goto_1
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v9

    .line 167
    add-int/lit8 v17, v9, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 168
    .local v7, isVoidTag:Z
    :goto_2
    if-eqz v6, :cond_5

    const/16 v17, 0x2

    :goto_3
    add-int v18, v8, v17

    if-eqz v7, :cond_6

    add-int/lit8 v17, v9, -0x2

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, fullTagExpression:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, tagName:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 174
    if-eqz v6, :cond_7

    .line 177
    :cond_2
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 180
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 181
    .local v14, startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v14, v13, v1, v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 182
    iget-object v0, v14, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    goto/16 :goto_0

    .line 165
    .end local v5           #fullTagExpression:Ljava/lang/String;
    .end local v6           #isClosingTag:Z
    .end local v7           #isVoidTag:Z
    .end local v14           #startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .end local v16           #tagName:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 167
    .restart local v6       #isClosingTag:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 168
    .restart local v7       #isVoidTag:Z
    :cond_5
    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v17, v9, -0x1

    goto :goto_4

    .line 183
    .restart local v5       #fullTagExpression:Ljava/lang/String;
    .restart local v16       #tagName:Ljava/lang/String;
    :cond_7
    if-nez v7, :cond_0

    .line 184
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v5           #fullTagExpression:Ljava/lang/String;
    .end local v6           #isClosingTag:Z
    .end local v7           #isVoidTag:Z
    .end local v8           #ltPos:I
    .end local v16           #tagName:Ljava/lang/String;
    :sswitch_1
    const/16 v17, 0x3b

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 189
    .local v11, semiColonEndIndex:I
    const/16 v17, 0x20

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 190
    .local v12, spaceEndIndex:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    move v4, v12

    .line 193
    .local v4, entityEndIndex:I
    :goto_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_b

    .line 194
    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 195
    if-ne v4, v12, :cond_8

    .line 196
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    :cond_8
    add-int/lit8 v9, v4, 0x1

    goto/16 :goto_0

    .line 190
    .end local v4           #entityEndIndex:I
    :cond_9
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_a

    move v4, v11

    goto :goto_5

    .line 192
    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_5

    .line 200
    .restart local v4       #entityEndIndex:I
    :cond_b
    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 203
    goto/16 :goto_0

    .line 211
    .end local v3           #curr:C
    .end local v4           #entityEndIndex:I
    .end local v11           #semiColonEndIndex:I
    .end local v12           #spaceEndIndex:I
    :cond_c
    :goto_6
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d

    .line 212
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 214
    :cond_d
    invoke-static {}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 216
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setText(Landroid/text/SpannableStringBuilder;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 217
    return-void

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 4
    .parameter "s"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 249
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 250
    .local v0, commaIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 251
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 252
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 256
    :goto_0
    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 267
    :goto_1
    return-void

    .line 254
    :cond_0
    const/high16 v2, -0x8000

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, lineNumber:I
    if-gez v1, :cond_2

    .line 263
    add-int/lit8 v1, v1, -0x1

    .line 265
    :cond_2
    int-to-float v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 282
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 291
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid anchor value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/high16 v0, -0x8000

    :goto_1
    :pswitch_0
    return v0

    .line 282
    :sswitch_0
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "center"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 287
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 289
    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_1
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_3
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 2
    .parameter "s"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 271
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 272
    .local v0, commaIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 274
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 278
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 279
    return-void

    .line 276
    :cond_0
    const/high16 v1, -0x8000

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_0
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 3
    .parameter "s"

    .prologue
    .line 297
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 297
    :sswitch_0
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "middle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 300
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 303
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 306
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x4009266b -> :sswitch_3
        0x188db -> :sswitch_4
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_5
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z
    .locals 8
    .parameter "webvttData"
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, styles:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, firstLine:Ljava/lang/String;
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 95
    .local v1, cueHeaderMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, secondLine:Ljava/lang/String;
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
