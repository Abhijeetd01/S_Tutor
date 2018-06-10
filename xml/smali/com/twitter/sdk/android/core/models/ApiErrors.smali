.class public Lcom/twitter/sdk/android/core/models/ApiErrors;
.super Ljava/lang/Object;
.source "ApiErrors.java"


# instance fields
.field public final errors:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, errors:Ljava/util/List;,"Ljava/util/List<Lcom/twitter/sdk/android/core/models/ApiError;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    .line 30
    return-void
.end method
