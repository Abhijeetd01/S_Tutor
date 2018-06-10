.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 678
    new-instance v0, Lcom/google/android/exoplayer2/Format$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 396
    .local v0, hasProjectionData:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .local v2, initializationDataSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 409
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 410
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 395
    .end local v0           #hasProjectionData:Z
    .end local v1           #i:I
    .end local v2           #initializationDataSize:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    .restart local v0       #hasProjectionData:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 412
    .restart local v1       #i:I
    .restart local v2       #initializationDataSize:I
    :cond_2
    const-class v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 413
    const-class v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 414
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "width"
    .parameter "height"
    .parameter "frameRate"
    .parameter "rotationDegrees"
    .parameter "pixelWidthHeightRatio"
    .parameter "projectionData"
    .parameter "stereoMode"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter "pcmEncoding"
    .parameter "encoderDelay"
    .parameter "encoderPadding"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "accessibilityChannel"
    .parameter "subsampleOffsetUs"
    .parameter
    .parameter "drmInitData"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BIIIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    .local p24, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 356
    iput-object p3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 357
    iput-object p4, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 358
    iput p5, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 359
    iput p6, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 360
    iput p7, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 361
    iput p8, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 362
    iput p9, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 363
    iput p10, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 364
    iput p11, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 365
    iput-object p12, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 366
    iput p13, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 367
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 368
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 369
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 370
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 371
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 372
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 373
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 374
    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 375
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 376
    if-nez p24, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p24

    .end local p24           #initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    :cond_0
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 378
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 379
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 380
    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter
    .parameter "selectionFlags"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 231
    .local p7, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v24, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter "pcmEncoding"
    .parameter "encoderDelay"
    .parameter "encoderPadding"
    .parameter
    .parameter "drmInitData"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 259
    .local p10, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v24, p10

    move-object/from16 v25, p11

    move-object/from16 v26, p14

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 15
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter "pcmEncoding"
    .parameter
    .parameter "drmInitData"
    .parameter "selectionFlags"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 249
    .local p8, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "channelCount"
    .parameter "sampleRate"
    .parameter
    .parameter "drmInitData"
    .parameter "selectionFlags"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 241
    .local p7, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter
    .parameter "language"
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 316
    .local p4, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v20, p5

    move-object/from16 v24, p4

    move-object/from16 v25, p6

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;
    .locals 28
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "subsampleOffsetUs"

    .prologue
    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "drmInitData"

    .prologue
    .line 342
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, p4

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 8
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"

    .prologue
    .line 270
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "accessibilityChannel"

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 10
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "accessibilityChannel"
    .parameter "drmInitData"

    .prologue
    .line 292
    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .locals 28
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "accessibilityChannel"
    .parameter "drmInitData"
    .parameter "subsampleOffsetUs"

    .prologue
    .line 306
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p8

    move-object/from16 v25, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 10
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "drmInitData"

    .prologue
    .line 285
    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "selectionFlags"
    .parameter "language"
    .parameter "drmInitData"
    .parameter "subsampleOffsetUs"

    .prologue
    .line 299
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "containerMimeType"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "width"
    .parameter "height"
    .parameter "frameRate"
    .parameter
    .parameter "selectionFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List",
            "<[B>;I)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 194
    .local p8, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v19, p9

    move-object/from16 v24, p8

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "width"
    .parameter "height"
    .parameter "frameRate"
    .parameter
    .parameter "rotationDegrees"
    .parameter "pixelWidthHeightRatio"
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 211
    .local p8, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "width"
    .parameter "height"
    .parameter "frameRate"
    .parameter
    .parameter "rotationDegrees"
    .parameter "pixelWidthHeightRatio"
    .parameter "projectionData"
    .parameter "stereoMode"
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 220
    .local p8, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v24, p8

    move-object/from16 v25, p13

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .parameter "id"
    .parameter "sampleMimeType"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "maxInputSize"
    .parameter "width"
    .parameter "height"
    .parameter "frameRate"
    .parameter
    .parameter "drmInitData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 203
    .local p8, initializationData:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v9, -0x1

    const/high16 v10, -0x4080

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .parameter "format"
    .parameter "key"
    .parameter "value"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 598
    const/high16 v0, -0x4080

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 601
    :cond_0
    return-void
.end method

.method private static maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .parameter "format"
    .parameter "key"
    .parameter "value"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 591
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 594
    :cond_0
    return-void
.end method

.method private static maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "format"
    .parameter "key"
    .parameter "value"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 584
    if-eqz p2, :cond_0

    .line 585
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method public static toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 4
    .parameter "format"

    .prologue
    const/4 v3, -0x1

    .line 609
    if-nez p0, :cond_0

    .line 610
    const-string v1, "null"

    .line 632
    :goto_0
    return-object v1

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v3, :cond_1

    .line 615
    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v3, :cond_2

    .line 618
    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 621
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 623
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v3, :cond_4

    .line 624
    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v3, :cond_5

    .line 627
    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 630
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "id"
    .parameter "codecs"
    .parameter "bitrate"
    .parameter "width"
    .parameter "height"
    .parameter "selectionFlags"
    .parameter "language"

    .prologue
    .line 434
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "drmInitData"

    .prologue
    .line 470
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v27, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "encoderDelay"
    .parameter "encoderPadding"

    .prologue
    .line 462
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "manifestFormat"

    .prologue
    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 454
    .end local p0
    :goto_0
    return-object p0

    .line 446
    .restart local p0
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 447
    .local v3, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 448
    .local v6, codecs:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 449
    .local v7, bitrate:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v4, -0x4080

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 450
    .local v11, frameRate:F
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    or-int v21, v2, v4

    .line 451
    .local v21, selectionFlags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 452
    .local v22, language:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    .line 454
    .local v27, drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_5
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    move-object/from16 p0, v2

    goto/16 :goto_0

    .line 447
    .end local v6           #codecs:Ljava/lang/String;
    .end local v7           #bitrate:I
    .end local v11           #frameRate:F
    .end local v21           #selectionFlags:I
    .end local v22           #language:Ljava/lang/String;
    .end local v27           #drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    goto/16 :goto_1

    .line 448
    .restart local v6       #codecs:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    goto/16 :goto_2

    .line 449
    .restart local v7       #bitrate:I
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    goto/16 :goto_3

    .line 451
    .restart local v11       #frameRate:F
    .restart local v21       #selectionFlags:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_4

    .line 452
    .restart local v22       #language:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    goto/16 :goto_5
.end method

.method public copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "maxInputSize"

    .prologue
    .line 417
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "metadata"

    .prologue
    .line 478
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v28, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .parameter "subsampleOffsetUs"

    .prologue
    .line 425
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-wide/from16 v24, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 548
    if-ne p0, p1, :cond_0

    move v2, v4

    .line 579
    :goto_0
    return v2

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v5

    .line 552
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 554
    check-cast v1, Lcom/google/android/exoplayer2/Format;

    .line 555
    .local v1, other:Lcom/google/android/exoplayer2/Format;
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v6, v1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 562
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 563
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 565
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 566
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 567
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 568
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 569
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 570
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    move v2, v5

    .line 572
    goto/16 :goto_0

    .line 574
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 575
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v5

    .line 576
    goto/16 :goto_0

    .line 574
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v2, v4

    .line 579
    goto/16 :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 499
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 500
    .local v0, format:Landroid/media/MediaFormat;
    const-string v2, "mime"

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v2, "language"

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "max-input-size"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 503
    const-string v2, "width"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 504
    const-string v2, "height"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 505
    const-string v2, "frame-rate"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 506
    const-string v2, "rotation-degrees"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 507
    const-string v2, "channel-count"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 508
    const-string v2, "sample-rate"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 509
    const-string v2, "encoder-delay"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 510
    const-string v2, "encoder-padding"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 511
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-object v0
.end method

.method public getPixelCount()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 490
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 526
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v1, :cond_0

    .line 527
    const/16 v0, 0x11

    .line 528
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 529
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 530
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 531
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 532
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    add-int v0, v1, v3

    .line 533
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int v0, v1, v3

    .line 534
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int v0, v1, v3

    .line 535
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int v0, v1, v3

    .line 536
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int v0, v1, v3

    .line 537
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 538
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int v0, v1, v3

    .line 539
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_6

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 540
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v3, :cond_7

    :goto_6
    add-int v0, v1, v2

    .line 541
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 543
    .end local v0           #result:I
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return v1

    .line 528
    .restart local v0       #result:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 530
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 537
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 539
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v1

    goto :goto_5

    .line 540
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 653
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 655
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 659
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-wide v4, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 669
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 670
    .local v1, initializationDataSize:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 672
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #initializationDataSize:I
    :cond_1
    move v2, v3

    .line 655
    goto :goto_0

    .line 674
    .restart local v0       #i:I
    .restart local v1       #initializationDataSize:I
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 675
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 676
    return-void
.end method
