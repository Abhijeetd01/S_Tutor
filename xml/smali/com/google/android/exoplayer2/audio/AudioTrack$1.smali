.class Lcom/google/android/exoplayer2/audio/AudioTrack$1;
.super Ljava/lang/Thread;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioTrack;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1040
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/AudioTrack;

    #getter for: Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->access$100(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1044
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/AudioTrack;

    #getter for: Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->access$100(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
