.class Lbolts/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->makeVoid()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    .local p0, this:Lbolts/Task$3;,"Lbolts/Task.3;"
    iput-object p1, p0, Lbolts/Task$3;->this$0:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lbolts/Task$3;,"Lbolts/Task.3;"
    .local p1, task:Lbolts/Task;,"Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, this:Lbolts/Task$3;,"Lbolts/Task.3;"
    invoke-virtual {p0, p1}, Lbolts/Task$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
