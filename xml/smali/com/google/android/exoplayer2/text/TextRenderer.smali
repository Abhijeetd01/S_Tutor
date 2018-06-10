.class public final Lcom/google/android/exoplayer2/text/TextRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I


# instance fields
.field private decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V
    .locals 1
    .parameter "output"
    .parameter "outputLooper"

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1
    .parameter "output"
    .parameter "outputLooper"
    .parameter "decoderFactory"

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 93
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .line 94
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private clearOutput()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 261
    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 246
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, cues:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 276
    return-void
.end method

.method private resetBuffers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 237
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 241
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 243
    :cond_1
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, cues:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->resetBuffers()V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 217
    invoke-super {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onDisabled()V

    .line 218
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .parameter "positionUs"
    .parameter "joining"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->resetBuffers()V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->flush()V

    .line 120
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 121
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 122
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .parameter "formats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 113
    return-void
.end method

.method public render(JJ)V
    .locals 11
    .parameter "positionUs"
    .parameter "elapsedRealtimeUs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-nez v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 133
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, textRendererNeedsUpdate:Z
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 148
    .local v2, subtitleNextEventTimeUs:J
    :goto_1
    cmp-long v5, v2, p1

    if-gtz v5, :cond_3

    .line 149
    iget v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 151
    const/4 v4, 0x1

    goto :goto_1

    .line 134
    .end local v2           #subtitleNextEventTimeUs:J
    .end local v4           #textRendererNeedsUpdate:Z
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 155
    .end local v0           #e:Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .restart local v4       #textRendererNeedsUpdate:Z
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_5

    .line 156
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 157
    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 158
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_4

    .line 159
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 160
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 162
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 163
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 164
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 178
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 180
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 184
    :cond_6
    :goto_3
    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez v5, :cond_7

    .line 186
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 187
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v5, :cond_0

    .line 192
    :cond_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/exoplayer2/text/TextRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    .line 193
    .local v1, result:I
    const/4 v5, -0x4

    if-ne v1, v5, :cond_b

    .line 194
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 195
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 200
    :goto_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 201
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 206
    .end local v1           #result:I
    :catch_1
    move-exception v0

    .line 207
    .restart local v0       #e:Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 166
    .end local v0           #e:Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :cond_8
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v5, v6, p1

    if-gtz v5, :cond_5

    .line 168
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_9

    .line 169
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 171
    :cond_9
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 172
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 173
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 174
    const/4 v4, 0x1

    goto :goto_2

    .line 197
    .restart local v1       #result:I
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v6, v5, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 198
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->flip()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 202
    :cond_b
    const/4 v5, -0x3

    if-ne v1, v5, :cond_6

    goto/16 :goto_0
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1
    .parameter "format"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
