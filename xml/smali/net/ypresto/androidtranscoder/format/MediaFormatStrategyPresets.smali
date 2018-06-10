.class public Lnet/ypresto/androidtranscoder/format/MediaFormatStrategyPresets;
.super Ljava/lang/Object;
.source "MediaFormatStrategyPresets.java"


# static fields
.field public static final AUDIO_BITRATE_AS_IS:I = -0x1

.field public static final AUDIO_CHANNELS_AS_IS:I = -0x1

.field public static final EXPORT_PRESET_960x540:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;-><init>()V

    sput-object v0, Lnet/ypresto/androidtranscoder/format/MediaFormatStrategyPresets;->EXPORT_PRESET_960x540:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static createAndroid720pStrategy()Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;-><init>()V

    return-object v0
.end method

.method public static createAndroid720pStrategy(I)Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 45
    new-instance v0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;

    invoke-direct {v0, p0}, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;-><init>(I)V

    return-object v0
.end method

.method public static createAndroid720pStrategy(III)Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1
    .parameter "bitrate"
    .parameter "audioBitrate"
    .parameter "audioChannels"

    .prologue
    .line 59
    new-instance v0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;

    invoke-direct {v0, p0, p1, p2}, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;-><init>(III)V

    return-object v0
.end method

.method public static createExportPreset960x540Strategy()Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;-><init>()V

    return-object v0
.end method
