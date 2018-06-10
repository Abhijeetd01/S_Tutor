.class final Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
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

    .line 95
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-object v1

    .line 99
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

    .line 101
    :pswitch_0
    const-string v2, "com.google.android.exoplayer2.text.webvtt.WebvttDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 99
    :sswitch_0
    const-string v3, "text/vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "application/ttml+xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "application/x-mp4-vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "application/x-subrip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "application/x-quicktime-tx3g"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "application/cea-608"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "application/x-mp4-cea-608"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "application/cea-708"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    .line 103
    :pswitch_1
    const-string v2, "com.google.android.exoplayer2.text.ttml.TtmlDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v2, "com.google.android.exoplayer2.text.webvtt.Mp4WebvttDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v2, "com.google.android.exoplayer2.text.subrip.SubripDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v2, "com.google.android.exoplayer2.text.tx3g.Tx3gDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 112
    :pswitch_5
    const-string v2, "com.google.android.exoplayer2.text.cea.Cea608Decoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    .line 114
    :pswitch_6
    const-string v2, "com.google.android.exoplayer2.text.cea.Cea708Decoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/ClassNotFoundException;
    goto/16 :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x3d28a9ba -> :sswitch_2
        -0x3be2f26c -> :sswitch_0
        0x2935f49f -> :sswitch_4
        0x37713300 -> :sswitch_6
        0x5d578071 -> :sswitch_5
        0x5d578432 -> :sswitch_7
        0x63771bad -> :sswitch_3
        0x64f8068a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .locals 6
    .parameter "format"

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempted to create decoder for unsupported format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error instantiating decoder"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 79
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "application/cea-608"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "application/x-mp4-cea-608"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    :cond_1
    const-class v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 87
    :goto_0
    return-object v2

    .line 83
    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "application/cea-708"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    const-class v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    goto :goto_0

    .line 87
    :cond_3
    const-class v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

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

    check-cast v2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 69
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
