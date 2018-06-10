.class final Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    const-string v2, "com.google.android.exoplayer2.metadata.id3.Id3Decoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v3, "application/id3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "application/x-emsg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "application/x-scte35"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 86
    :pswitch_1
    const-string v2, "com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v2, "com.google.android.exoplayer2.metadata.scte35.SpliceInfoDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a682ec7 -> :sswitch_0
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .locals 4
    .parameter "format"

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempted to create decoder for unsupported format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error instantiating decoder"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 71
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-class v2, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 61
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
