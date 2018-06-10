.class public final Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 0
    .parameter "target"
    .parameter "messageType"
    .parameter "message"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    .line 136
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 137
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    .line 138
    return-void
.end method
