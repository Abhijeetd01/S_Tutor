.class public final Lcom/google/android/exoplayer2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I = null

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final PlaybackControlView:[I = null

.field public static final PlaybackControlView_controller_layout_id:I = 0x0

.field public static final PlaybackControlView_fastforward_increment:I = 0x1

.field public static final PlaybackControlView_rewind_increment:I = 0x2

.field public static final PlaybackControlView_show_timeout:I = 0x3

.field public static final SimpleExoPlayerView:[I = null

.field public static final SimpleExoPlayerView_controller_layout_id:I = 0x0

.field public static final SimpleExoPlayerView_default_artwork:I = 0x8

.field public static final SimpleExoPlayerView_fastforward_increment:I = 0x1

.field public static final SimpleExoPlayerView_player_layout_id:I = 0x2

.field public static final SimpleExoPlayerView_resize_mode:I = 0x3

.field public static final SimpleExoPlayerView_rewind_increment:I = 0x4

.field public static final SimpleExoPlayerView_show_timeout:I = 0x5

.field public static final SimpleExoPlayerView_surface_type:I = 0x6

.field public static final SimpleExoPlayerView_use_artwork:I = 0x7

.field public static final SimpleExoPlayerView_use_controller:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01001c

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView:[I

    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView:[I

    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
        0x1et 0x0t 0x1t 0x7ft
    .end array-data

    .line 94
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
        0x1et 0x0t 0x1t 0x7ft
        0x1ft 0x0t 0x1t 0x7ft
        0x6et 0x1t 0x1t 0x7ft
        0x6ft 0x1t 0x1t 0x7ft
        0x70t 0x1t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
