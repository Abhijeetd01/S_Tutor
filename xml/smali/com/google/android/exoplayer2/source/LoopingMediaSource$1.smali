.class Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

.field final synthetic val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/LoopingMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .parameter "timeline"
    .parameter "manifest"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    #setter for: Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->access$002(Lcom/google/android/exoplayer2/source/LoopingMediaSource;I)I

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    #getter for: Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;I)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
