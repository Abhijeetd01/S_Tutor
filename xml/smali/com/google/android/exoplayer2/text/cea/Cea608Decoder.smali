.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final BASIC_CHARACTER_SET:[I = null

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_IMPLICIT_DATA_HEADER:B = -0x4t

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_608_ID:I = 0x4

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COLORS:[I = null

.field private static final COLUMN_INDICES:[I = null

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_DELETE_TO_END_OF_ROW:B = 0x24t

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final ROW_INDICES:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final packetLength:I

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedField:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x8

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    .line 118
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    .line 166
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 176
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 118
    :array_3
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xa0t 0x25t 0x0t 0x0t
    .end array-data

    .line 146
    :array_4
    .array-data 0x4
        0xaet 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xbdt 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x22t 0x21t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x6at 0x26t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    .line 166
    :array_5
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x20t 0x21t 0x0t 0x0t
        0x22t 0x20t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
    .end array-data

    .line 176
    :array_6
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x2t 0x25t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xct 0x25t 0x0t 0x0t
        0x10t 0x25t 0x0t 0x0t
        0x14t 0x25t 0x0t 0x0t
        0x18t 0x25t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "mimeType"
    .parameter "accessibilityChannel"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 202
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    .line 204
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/4 v2, 0x4

    invoke-direct {v0, v3, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 205
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    .line 206
    packed-switch p2, :pswitch_data_0

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 218
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 220
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 209
    :pswitch_0
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getChar(B)C
    .locals 2
    .parameter "ccData"

    .prologue
    .line 525
    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, v1, -0x20

    .line 526
    .local v0, index:I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v1, displayCues:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 493
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v0

    .line 494
    .local v0, cue:Lcom/google/android/exoplayer2/text/Cue;
    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v0           #cue:Lcom/google/android/exoplayer2/text/Cue;
    :cond_1
    return-object v1
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2
    .parameter "ccData"

    .prologue
    .line 535
    and-int/lit8 v0, p0, 0x1f

    .line 536
    .local v0, index:I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2
    .parameter "ccData"

    .prologue
    .line 540
    and-int/lit8 v0, p0, 0x1f

    .line 541
    .local v0, index:I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getSpecialChar(B)C
    .locals 2
    .parameter "ccData"

    .prologue
    .line 530
    and-int/lit8 v0, p0, 0xf

    .line 531
    .local v0, index:I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private handleCtrl(BB)Z
    .locals 3
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    const/4 v1, 0x1

    .line 340
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result v0

    .line 345
    .local v0, isRepeatableControl:Z
    if-eqz v0, :cond_2

    .line 346
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v2, p1, :cond_1

    iget-byte v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v2, p2, :cond_1

    .line 350
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    move v0, v1

    .line 372
    .end local v0           #isRepeatableControl:Z
    :cond_0
    :goto_0
    return v0

    .line 356
    .restart local v0       #isRepeatableControl:Z
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 357
    iput-byte p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 358
    iput-byte p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 362
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_0

    .line 364
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_0

    .line 366
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v2, p2, -0x20

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setTab(I)V

    goto :goto_0

    .line 368
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_0
.end method

.method private handleMidrowCtrl(B)V
    .locals 6
    .parameter "cc2"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 380
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 381
    .local v1, isUnderlined:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderline(Z)V

    .line 383
    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v0, v3, 0xf

    .line 384
    .local v0, attribute:I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    .line 386
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    .line 390
    :goto_1
    return-void

    .line 380
    .end local v0           #attribute:I
    .end local v1           #isUnderlined:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 388
    .restart local v0       #attribute:I
    .restart local v1       #isUnderlined:Z
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-object v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    aget v5, v5, v0

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    goto :goto_1
.end method

.method private handleMiscCode(B)V
    .locals 3
    .parameter "cc2"

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 435
    packed-switch p1, :pswitch_data_0

    .line 456
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 437
    :pswitch_1
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 438
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 441
    :pswitch_2
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 442
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 445
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 446
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 449
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 452
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 460
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 482
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    goto :goto_0

    .line 462
    :sswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 463
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v2, :cond_0

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 468
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 471
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 472
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 477
    :sswitch_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private handlePreambleAddressCode(BB)V
    .locals 8
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x1

    .line 395
    sget-object v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 v5, p1, 0x7

    aget v2, v4, v5

    .line 402
    .local v2, row:I
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_4

    move v1, v3

    .line 403
    .local v1, nextRowDown:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 404
    add-int/lit8 v2, v2, 0x1

    .line 407
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->getRow()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 408
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v4, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 409
    new-instance v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 410
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setRow(I)V

    .line 415
    :cond_2
    and-int/lit8 v4, p2, 0x1

    if-ne v4, v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    .line 421
    :cond_3
    shr-int/lit8 v3, p2, 0x1

    and-int/lit8 v0, v3, 0xf

    .line 422
    .local v0, attribute:I
    if-gt v0, v7, :cond_6

    .line 423
    if-ne v0, v7, :cond_5

    .line 424
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    .line 425
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    .line 432
    :goto_1
    return-void

    .line 402
    .end local v0           #attribute:I
    .end local v1           #nextRowDown:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 427
    .restart local v0       #attribute:I
    .restart local v1       #nextRowDown:Z
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-object v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    aget v5, v5, v0

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    goto :goto_1

    .line 430
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    sget-object v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    and-int/lit8 v5, v0, 0x7

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setIndent(I)V

    goto :goto_1
.end method

.method private static isMidrowCtrlCode(BB)Z
    .locals 2
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    .line 547
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMiscCode(BB)Z
    .locals 2
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    .line 565
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPreambleAddressCode(BB)Z
    .locals 2
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    .line 553
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRepeatable(B)Z
    .locals 2
    .parameter "cc1"

    .prologue
    .line 570
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTabCtrlCode(BB)Z
    .locals 2
    .parameter "cc1"
    .parameter "cc2"

    .prologue
    .line 559
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/16 v0, 0x23

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCueBuilders()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(II)V

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method private setCaptionMode(I)V
    .locals 2
    .parameter "captionMode"

    .prologue
    .line 502
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v1, p1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 507
    .local v0, oldCaptionMode:I
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 511
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-nez p1, :cond_0

    .line 514
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 253
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 10
    .parameter "inputBuffer"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 258
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, captionDataProcessed:Z
    const/4 v4, 0x0

    .line 261
    .local v4, isRepeatableControl:Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    if-lt v5, v6, :cond_9

    .line 262
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    if-ne v5, v9, :cond_4

    const/4 v3, -0x4

    .line 264
    .local v3, ccDataHeader:B
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v1, v5

    .line 265
    .local v1, ccData1:B
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v2, v5

    .line 271
    .local v2, ccData2:B
    and-int/lit8 v5, v3, 0x6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 276
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-ne v5, v8, :cond_1

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_0

    :cond_1
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-ne v5, v9, :cond_2

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v8, :cond_0

    .line 282
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    .line 287
    :cond_3
    const/4 v0, 0x1

    .line 292
    and-int/lit16 v5, v1, 0xf7

    const/16 v6, 0x11

    if-ne v5, v6, :cond_5

    and-int/lit16 v5, v2, 0xf0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    .line 294
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getSpecialChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 262
    .end local v1           #ccData1:B
    .end local v2           #ccData2:B
    .end local v3           #ccDataHeader:B
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 263
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v3, v5

    goto :goto_1

    .line 301
    .restart local v1       #ccData1:B
    .restart local v2       #ccData2:B
    .restart local v3       #ccDataHeader:B
    :cond_5
    and-int/lit16 v5, v1, 0xf6

    const/16 v6, 0x12

    if-ne v5, v6, :cond_7

    and-int/lit16 v5, v2, 0xe0

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7

    .line 304
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 305
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_6

    .line 307
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 310
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 317
    :cond_7
    and-int/lit16 v5, v1, 0xe0

    if-nez v5, :cond_8

    .line 318
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleCtrl(BB)Z

    move-result v4

    .line 319
    goto/16 :goto_0

    .line 323
    :cond_8
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 324
    and-int/lit16 v5, v2, 0xe0

    if-eqz v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 329
    .end local v1           #ccData1:B
    .end local v2           #ccData2:B
    .end local v3           #ccDataHeader:B
    :cond_9
    if-eqz v0, :cond_c

    .line 330
    if-nez v4, :cond_a

    .line 331
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 333
    :cond_a
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v5, v8, :cond_b

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    .line 334
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 337
    :cond_c
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 230
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 231
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 232
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 234
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 235
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 236
    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 237
    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 238
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
