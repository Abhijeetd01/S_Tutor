.class Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field final synthetic val$bufferSize:I

.field final synthetic val$bufferSizeMs:J

.field final synthetic val$elapsedSinceLastFeedMs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V
    .locals 1
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$bufferSize:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$bufferSizeMs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$elapsedSinceLastFeedMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    #getter for: Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$bufferSize:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$bufferSizeMs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;->val$elapsedSinceLastFeedMs:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    .line 154
    return-void
.end method
