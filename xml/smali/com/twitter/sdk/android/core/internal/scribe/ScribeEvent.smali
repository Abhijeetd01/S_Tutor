.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
.super Ljava/lang/Object;
.source "ScribeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent$Transform;
    }
.end annotation


# static fields
.field private static final CURRENT_FORMAT_VERSION:Ljava/lang/String; = "2"


# instance fields
.field final category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_category_"
    .end annotation
.end field

.field final eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_namespace"
    .end annotation
.end field

.field final formatVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format_version"
    .end annotation
.end field

.field final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field final timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;J)V
    .locals 7
    .parameter "category"
    .parameter "eventNamespace"
    .parameter "timestamp"

    .prologue
    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V
    .locals 1
    .parameter "category"
    .parameter "eventNamespace"
    .parameter "timestamp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, items:Ljava/util/List;,"Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    .line 72
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    .line 73
    const-string v0, "2"

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    .line 74
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;

    .line 95
    .local v0, that:Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 97
    goto :goto_0

    .line 95
    :cond_5
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 99
    :cond_6
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 101
    goto :goto_0

    .line 99
    :cond_8
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-nez v3, :cond_7

    .line 103
    :cond_9
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 105
    goto :goto_0

    .line 103
    :cond_b
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 107
    :cond_c
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 108
    goto :goto_0

    .line 107
    :cond_e
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 111
    :cond_f
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 112
    goto :goto_0

    .line 111
    :cond_10
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;->hashCode()I

    move-result v0

    .line 121
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 122
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 123
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 125
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 121
    goto :goto_1

    :cond_3
    move v2, v1

    .line 122
    goto :goto_2

    :cond_4
    move v2, v1

    .line 123
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _category_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
