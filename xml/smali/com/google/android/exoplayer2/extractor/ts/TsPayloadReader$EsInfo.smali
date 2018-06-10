.class public final Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final descriptorBytes:[B

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0
    .parameter "streamType"
    .parameter "language"
    .parameter "descriptorBytes"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    .line 75
    return-void
.end method
