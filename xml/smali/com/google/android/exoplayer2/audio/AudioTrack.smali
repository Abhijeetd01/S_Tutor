.class public final Lcom/google/android/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private audioSessionId:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private final availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private bytesUntilNextAvSync:I

.field private channelConfig:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private drainingAudioProcessorIndex:I

.field private encoding:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private handledEndOfStream:Z

.field private hasData:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

.field private nextPlayheadOffsetIndex:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputEncoding:I

.field private outputPcmFrameSize:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 214
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 6
    .parameter "audioCapabilities"
    .parameter "audioProcessors"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 291
    new-instance v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 292
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    aput-object v1, v0, v3

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    aput-object v1, v0, v4

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    .line 297
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 298
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 300
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 301
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 307
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 313
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    .line 314
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 315
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 316
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    .line 317
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 319
    new-array v0, v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 320
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 321
    return-void

    .line 308
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 309
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 311
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1180
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 1181
    .local v0, state:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1182
    return-void

    .line 1186
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1194
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 1187
    :catch_0
    move-exception v1

    .line 1191
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private static createHwAvSyncAudioTrackV21(IIIII)Landroid/media/AudioTrack;
    .locals 6
    .parameter "sampleRate"
    .parameter "channelConfig"
    .parameter "encoding"
    .parameter "bufferSize"
    .parameter "sessionId"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1253
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1254
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 1255
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v3, 0x10

    .line 1256
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1258
    .local v1, attributesBuilder:Landroid/media/AudioAttributes;
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1259
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1260
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1261
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1262
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1263
    .local v2, format:Landroid/media/AudioFormat;
    new-instance v0, Landroid/media/AudioTrack;

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .parameter "durationUs"

    .prologue
    .line 1206
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .parameter "frameCount"

    .prologue
    .line 1202
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 1269
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1279
    :goto_1
    return v0

    .line 1269
    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1271
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1273
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1275
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1277
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1269
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .parameter "encoding"
    .parameter "buffer"

    .prologue
    .line 1284
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1285
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1289
    :goto_0
    return v0

    .line 1286
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1287
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 1288
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1289
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1291
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private getWrittenFrames()J
    .locals 4

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 560
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_3

    .line 561
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    invoke-static {v0, v1, v6, v8, v9}, Lcom/google/android/exoplayer2/audio/AudioTrack;->createHwAvSyncAudioTrackV21(IIIII)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 571
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 574
    .local v7, audioSessionId:I
    sget-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 575
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 579
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 583
    const/16 v2, 0xfa0

    .line 584
    .local v2, sampleRate:I
    const/4 v3, 0x4

    .line 585
    .local v3, channelConfig:I
    const/4 v4, 0x2

    .line 586
    .local v4, encoding:I
    const/4 v5, 0x2

    .line 587
    .local v5, bufferSize:I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    move v6, v10

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 592
    .end local v2           #sampleRate:I
    .end local v3           #channelConfig:I
    .end local v4           #encoding:I
    .end local v5           #bufferSize:I
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, v7, :cond_2

    .line 593
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v0, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onAudioSessionId(I)V

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    .line 599
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 600
    return-void

    .line 563
    .end local v7           #audioSessionId:I
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-nez v0, :cond_4

    .line 564
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 568
    :cond_4
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 1092
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    .line 1093
    .local v10, playbackPositionUs:J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 1098
    .local v12, systemClockUs:J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 1100
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 1101
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1102
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 1103
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1105
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1106
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1107
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 1108
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1107
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1112
    .end local v7           #i:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 1122
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 1123
    .local v4, audioTimestampUs:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 1124
    .local v2, audioTimestampFramePosition:J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 1126
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1150
    .end local v2           #audioTimestampFramePosition:J
    .end local v4           #audioTimestampUs:J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    .line 1154
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1157
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1159
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 1160
    const-string v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 1127
    .restart local v2       #audioTimestampFramePosition:J
    .restart local v4       #audioTimestampUs:J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 1129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1132
    .local v8, message:Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 1133
    new-instance v9, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1135
    :cond_7
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1137
    .end local v8           #message:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 1140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1143
    .restart local v8       #message:Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 1144
    new-instance v9, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1146
    :cond_9
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1163
    .end local v2           #audioTimestampFramePosition:J
    .end local v4           #audioTimestampUs:J
    .end local v8           #message:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1165
    .local v6, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 1231
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 1242
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1243
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1244
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1242
    :goto_0
    return v0

    .line 1244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processBuffers(J)V
    .locals 7
    .parameter "avSyncPresentationTimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v5

    .line 735
    .local v1, count:I
    move v2, v1

    .line 736
    .local v2, index:I
    :goto_0
    if-ltz v2, :cond_1

    .line 737
    if-lez v2, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v5, v6

    .line 739
    .local v3, input:Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v2, v1, :cond_4

    .line 740
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 753
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 761
    .end local v3           #input:Ljava/nio/ByteBuffer;
    :cond_1
    return-void

    .line 737
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 742
    .restart local v3       #input:Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v5, v2

    .line 743
    .local v0, audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 744
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 745
    .local v4, output:Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v4, v5, v2

    .line 746
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 748
    add-int/lit8 v2, v2, 0x1

    .line 749
    goto :goto_0

    .line 759
    .end local v0           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v4           #output:Ljava/nio/ByteBuffer;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 760
    goto :goto_0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1072
    .local v0, toRelease:Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1073
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1078
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1218
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1219
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1220
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1221
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1222
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1223
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 1224
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 980
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .parameter "audioTrack"
    .parameter "volume"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1343
    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .parameter "audioTrack"
    .parameter "volume"

    .prologue
    .line 1347
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1348
    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .parameter "buffer"
    .parameter "avSyncPresentationTimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 784
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 785
    .local v3, bytesRemaining:I
    const/4 v8, 0x0

    .line 786
    .local v8, bytesWritten:I
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 788
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 789
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v10, v2

    mul-long/2addr v4, v10

    sub-long/2addr v0, v4

    long-to-int v6, v0

    .line 790
    .local v6, bytesPending:I
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int v7, v0, v6

    .line 791
    .local v7, bytesToWrite:I
    if-lez v7, :cond_2

    .line 792
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v8

    .line 794
    if-lez v8, :cond_2

    .line 795
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    .line 796
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 807
    .end local v6           #bytesPending:I
    .end local v7           #bytesToWrite:I
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    .line 809
    if-gez v8, :cond_a

    .line 810
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    .line 770
    .end local v3           #bytesRemaining:I
    .end local v8           #bytesWritten:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 772
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 773
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 774
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 775
    .restart local v3       #bytesRemaining:I
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    array-length v0, v0

    if-ge v0, v3, :cond_6

    .line 776
    :cond_5
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    .line 778
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 779
    .local v9, originalPosition:I
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 780
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    goto :goto_2

    .line 799
    .end local v9           #originalPosition:I
    .restart local v8       #bytesWritten:I
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_9

    .line 800
    const-wide v0, -0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 801
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v8

    goto :goto_3

    .line 800
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 804
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_3

    .line 813
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v0, :cond_b

    .line 814
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    int-to-long v4, v8

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    .line 816
    :cond_b
    if-ne v8, v3, :cond_d

    .line 817
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_c

    .line 818
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    .line 820
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 821
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 823
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .parameter "audioTrack"
    .parameter "buffer"
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1298
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 8
    .parameter "audioTrack"
    .parameter "buffer"
    .parameter "size"
    .parameter "presentationTimeUs"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1309
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 1310
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1311
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1312
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1314
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    if-nez v3, :cond_1

    .line 1315
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1316
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p4

    invoke-virtual {v3, v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1317
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1318
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1320
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1321
    .local v0, avSyncHeaderBytesRemaining:I
    if-lez v0, :cond_4

    .line 1322
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v0, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1323
    .local v1, result:I
    if-gez v1, :cond_3

    .line 1324
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1337
    :cond_2
    :goto_0
    return v2

    .line 1327
    :cond_3
    if-lt v1, v0, :cond_2

    .line 1331
    .end local v1           #result:I
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 1332
    .restart local v1       #result:I
    if-gez v1, :cond_5

    .line 1333
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1334
    goto :goto_0

    .line 1336
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1337
    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII)V
    .locals 7
    .parameter "mimeType"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter "pcmEncoding"
    .parameter "specifiedBufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII[I)V

    .line 400
    return-void
.end method

.method public configure(Ljava/lang/String;IIII[I)V
    .locals 24
    .parameter "mimeType"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter "pcmEncoding"
    .parameter "specifiedBufferSize"
    .parameter "outputChannels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v17, "audio/raw"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v16, 0x1

    .line 424
    .local v16, passthrough:Z
    :goto_0
    if-eqz v16, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 425
    .local v8, encoding:I
    :goto_1
    const/4 v9, 0x0

    .line 426
    .local v9, flush:Z
    if-nez v16, :cond_4

    .line 427
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 431
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v15, newAudioProcessors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v4, v18, v17

    .line 434
    .local v4, audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :try_start_0
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v4, v0, v1, v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(III)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    or-int v9, v9, v20

    .line 438
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 439
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputChannelCount()I

    move-result p2

    .line 441
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputEncoding()I

    move-result v8

    .line 432
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 423
    .end local v4           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v8           #encoding:I
    .end local v9           #flush:Z
    .end local v15           #newAudioProcessors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    .end local v16           #passthrough:Z
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .restart local v16       #passthrough:Z
    :cond_1
    move/from16 v8, p4

    .line 424
    goto :goto_1

    .line 435
    .restart local v4       #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .restart local v8       #encoding:I
    .restart local v9       #flush:Z
    .restart local v15       #newAudioProcessors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    :catch_0
    move-exception v7

    .line 436
    .local v7, e:Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    new-instance v17, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 443
    .end local v7           #e:Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    :cond_2
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    goto :goto_3

    .line 447
    .end local v4           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_3
    if-eqz v9, :cond_4

    .line 448
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 449
    .local v6, count:I
    new-array v0, v6, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 450
    new-array v0, v6, [Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 451
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    if-ge v10, v6, :cond_4

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object/from16 v17, v0

    aget-object v4, v17, v10

    .line 453
    .restart local v4       #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v18

    aput-object v18, v17, v10

    .line 451
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 460
    .end local v4           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v6           #count:I
    .end local v10           #i:I
    .end local v15           #newAudioProcessors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    :cond_4
    packed-switch p2, :pswitch_data_0

    .line 486
    new-instance v17, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported channel count: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 462
    :pswitch_0
    const/4 v5, 0x4

    .line 490
    .local v5, channelConfig:I
    :goto_5
    sget v17, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    const-string v17, "foster"

    sget-object v18, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "NVIDIA"

    sget-object v18, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 491
    packed-switch p2, :pswitch_data_1

    .line 506
    :cond_5
    :goto_6
    :pswitch_1
    sget v17, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x19

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    const-string v17, "fugu"

    sget-object v18, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v16, :cond_6

    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 507
    const/16 v5, 0xc

    .line 510
    :cond_6
    if-nez v9, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->encoding:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_7

    .line 550
    .end local v8           #encoding:I
    :goto_7
    return-void

    .line 465
    .end local v5           #channelConfig:I
    .restart local v8       #encoding:I
    :pswitch_2
    const/16 v5, 0xc

    .line 466
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 468
    .end local v5           #channelConfig:I
    :pswitch_3
    const/16 v5, 0x1c

    .line 469
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 471
    .end local v5           #channelConfig:I
    :pswitch_4
    const/16 v5, 0xcc

    .line 472
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 474
    .end local v5           #channelConfig:I
    :pswitch_5
    const/16 v5, 0xdc

    .line 475
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 477
    .end local v5           #channelConfig:I
    :pswitch_6
    const/16 v5, 0xfc

    .line 478
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 480
    .end local v5           #channelConfig:I
    :pswitch_7
    const/16 v5, 0x4fc

    .line 481
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 483
    .end local v5           #channelConfig:I
    :pswitch_8
    sget v5, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 484
    .restart local v5       #channelConfig:I
    goto :goto_5

    .line 493
    :pswitch_9
    sget v5, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 494
    goto :goto_6

    .line 497
    :pswitch_a
    const/16 v5, 0xfc

    .line 498
    goto :goto_6

    .line 516
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 518
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->encoding:I

    .line 519
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    .line 520
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 521
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    .line 522
    if-eqz v16, :cond_8

    .end local v8           #encoding:I
    :goto_8
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 523
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    .line 525
    if-eqz p5, :cond_9

    .line 526
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    .line 549
    :goto_9
    if-eqz v16, :cond_10

    const-wide v18, -0x7fffffffffffffffL

    :goto_a
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_7

    .line 522
    .restart local v8       #encoding:I
    :cond_8
    const/4 v8, 0x2

    goto :goto_8

    .line 527
    .end local v8           #encoding:I
    :cond_9
    if-eqz v16, :cond_c

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 532
    :cond_a
    const/16 v17, 0x5000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_9

    .line 535
    :cond_b
    const v17, 0xc000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_9

    .line 538
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    move/from16 v17, v0

    .line 539
    move/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v13

    .line 540
    .local v13, minBufferSize:I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v13, v0, :cond_d

    const/16 v17, 0x1

    :goto_b
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 541
    mul-int/lit8 v14, v13, 0x4

    .line 542
    .local v14, multipliedBufferSize:I
    const-wide/32 v18, 0x3d090

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    move/from16 v18, v0

    mul-int v12, v17, v18

    .line 543
    .local v12, minAppBufferSize:I
    int-to-long v0, v13

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xb71b0

    .line 544
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    .line 543
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .line 545
    .local v11, maxAppBufferSize:I
    if-ge v14, v12, :cond_e

    .end local v12           #minAppBufferSize:I
    :goto_c
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto/16 :goto_9

    .line 540
    .end local v11           #maxAppBufferSize:I
    .end local v14           #multipliedBufferSize:I
    :cond_d
    const/16 v17, 0x0

    goto :goto_b

    .line 545
    .restart local v11       #maxAppBufferSize:I
    .restart local v12       #minAppBufferSize:I
    .restart local v14       #multipliedBufferSize:I
    :cond_e
    if-le v14, v11, :cond_f

    move v12, v11

    goto :goto_c

    :cond_f
    move v12, v14

    goto :goto_c

    .line 549
    .end local v11           #maxAppBufferSize:I
    .end local v12           #minAppBufferSize:I
    .end local v13           #minBufferSize:I
    .end local v14           #multipliedBufferSize:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v18

    goto/16 :goto_a

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 491
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public disableTunneling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 958
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    .line 959
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 960
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 961
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 963
    :cond_0
    return-void
.end method

.method public enableTunnelingV21(I)V
    .locals 3
    .parameter "tunnelingAudioSessionId"

    .prologue
    const/4 v1, 0x1

    .line 945
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 946
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, p1, :cond_1

    .line 947
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 948
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 949
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 951
    :cond_1
    return-void

    .line 945
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 18
    .parameter "sourceEnded"

    .prologue
    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 347
    const-wide/high16 v6, -0x8000

    .line 381
    :cond_0
    :goto_0
    return-wide v6

    .line 350
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 354
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 356
    .local v12, systemClockUs:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    .line 360
    .local v10, presentationDiff:J
    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 361
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    .line 362
    .local v2, actualSpeedPresentationDiff:J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    .line 364
    .local v8, framesDiff:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 365
    .local v4, currentFramePosition:J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 366
    .local v6, currentPositionUs:J
    goto :goto_0

    .line 367
    .end local v2           #actualSpeedPresentationDiff:J
    .end local v4           #currentFramePosition:J
    .end local v6           #currentPositionUs:J
    .end local v8           #framesDiff:J
    .end local v10           #presentationDiff:J
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 376
    .restart local v6       #currentPositionUs:J
    :goto_1
    if-nez p1, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_0

    .line 374
    .end local v6           #currentPositionUs:J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6       #currentPositionUs:J
    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 10
    .parameter "buffer"
    .parameter "presentationTimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 644
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize()V

    .line 646
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 657
    const/4 v0, 0x0

    .line 730
    :goto_1
    return v0

    .line 643
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 664
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 665
    const/4 v0, 0x0

    goto :goto_1

    .line 669
    :cond_4
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 670
    .local v8, hadData:Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 671
    if-eqz v8, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    sub-long v4, v0, v2

    .line 673
    .local v4, elapsedSinceLastFeedMs:J
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onUnderrun(IJJ)V

    .line 676
    .end local v4           #elapsedSinceLastFeedMs:J
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_9

    .line 678
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    .line 680
    const/4 v0, 0x1

    goto :goto_1

    .line 683
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v0, :cond_7

    .line 685
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 688
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v0, :cond_a

    .line 689
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 690
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 710
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_c

    .line 711
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 716
    :goto_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 719
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_d

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 726
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 728
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 693
    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 694
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v2

    add-long v6, v0, v2

    .line 695
    .local v6, expectedPresentationTimeUs:J
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    sub-long v0, v6, p2

    .line 696
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 697
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discontinuity detected [expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 701
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 704
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v2, p2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 705
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 706
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onPositionDiscontinuity()V

    goto/16 :goto_2

    .line 713
    .end local v6           #expectedPresentationTimeUs:J
    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    goto/16 :goto_3

    .line 723
    :cond_d
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    goto :goto_4

    .line 730
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 619
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 621
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    .line 883
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 331
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    .line 992
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 994
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 996
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 611
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 832
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    const/4 v1, 0x0

    .line 838
    .local v1, audioProcessorNeedsEndOfStream:Z
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 839
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v2

    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 840
    const/4 v1, 0x1

    .line 842
    :cond_2
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 843
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    aget-object v0, v2, v4

    .line 844
    .local v0, audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    if-eqz v1, :cond_3

    .line 845
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 847
    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    .line 848
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    const/4 v1, 0x1

    .line 852
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    goto :goto_2

    .end local v0           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_4
    move v2, v3

    .line 839
    goto :goto_1

    .line 856
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_6

    .line 857
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 858
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 864
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 865
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 866
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1053
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 1054
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 1055
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 1056
    .local v0, audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->release()V

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v0           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1059
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    .line 1060
    return-void
.end method

.method public reset()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1006
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1007
    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 1008
    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 1009
    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    .line 1010
    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    .line 1011
    iput v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 1012
    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1013
    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1014
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1015
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v4, v1

    .line 1016
    .local v0, audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 1017
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .end local v0           #audioProcessor:Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_0
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    .line 1020
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 1021
    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1022
    iput v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1023
    iput v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 1024
    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1025
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 1026
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    .line 1027
    .local v2, playState:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1028
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 1031
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1032
    .local v3, toRelease:Landroid/media/AudioTrack;
    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1033
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v4, v7, v6}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1034
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 1035
    new-instance v4, Lcom/google/android/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v4, p0, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1045
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->start()V

    .line 1047
    .end local v1           #i:I
    .end local v2           #playState:I
    .end local v3           #toRelease:Landroid/media/AudioTrack;
    :cond_2
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "audioSessionId"

    .prologue
    .line 926
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, p1, :cond_0

    .line 927
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 928
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 930
    :cond_0
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .parameter "playbackParams"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 896
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 910
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    if-ne v0, p1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    .line 914
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-nez v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 971
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 972
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 973
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    .line 975
    :cond_0
    return-void
.end method
