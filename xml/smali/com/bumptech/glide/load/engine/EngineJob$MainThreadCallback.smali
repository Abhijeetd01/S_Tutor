.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 199
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 200
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 201
    .local v0, job:Lcom/bumptech/glide/load/engine/EngineJob;
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 202
    #calls: Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 209
    .end local v0           #job:Lcom/bumptech/glide/load/engine/EngineJob;
    :goto_0
    return v1

    .line 204
    .restart local v0       #job:Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_1
    #calls: Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_0

    .line 209
    .end local v0           #job:Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
