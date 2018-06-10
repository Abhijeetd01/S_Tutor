.class final Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
.super Lcom/google/android/exoplayer2/text/Cue;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/Cue;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/text/cea/Cea708Cue;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0
    .parameter "text"
    .parameter "textAlignment"
    .parameter "line"
    .parameter "lineType"
    .parameter "lineAnchor"
    .parameter "position"
    .parameter "positionAnchor"
    .parameter "size"
    .parameter "windowColorSet"
    .parameter "windowColor"
    .parameter "priority"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 54
    iput p11, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 59
    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-ge v0, v1, :cond_0

    .line 60
    const/4 v0, -0x1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-le v0, v1, :cond_1

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I

    move-result v0

    return v0
.end method
