.class Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    #calls: Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    .line 128
    return-void
.end method
