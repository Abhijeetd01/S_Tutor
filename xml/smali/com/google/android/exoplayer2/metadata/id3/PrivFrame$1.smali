.class final Lcom/google/android/exoplayer2/metadata/id3/PrivFrame$1;
.super Ljava/lang/Object;
.source "PrivFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 1
    .parameter "in"

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    return-object v0
.end method
