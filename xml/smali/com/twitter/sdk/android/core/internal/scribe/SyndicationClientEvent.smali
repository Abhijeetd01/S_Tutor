.class public Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;
.super Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
.source "SyndicationClientEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;
    }
.end annotation


# static fields
.field public static final CLIENT_NAME:Ljava/lang/String; = "tfw"

.field private static final SCRIBE_CATEGORY:Ljava/lang/String; = "tfw_client_event"


# instance fields
.field public final eventInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_info"
    .end annotation
.end field

.field public final externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_ids"
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "eventNamespace"
    .parameter "eventInfo"
    .parameter "timestamp"
    .parameter "language"
    .parameter "adId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p7, items:Ljava/util/List;,"Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    const-string v2, "tfw_client_event"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V

    .line 56
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;->language:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;->eventInfo:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;

    invoke-direct {v0, p0, p6}, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;->externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;

    .line 59
    return-void
.end method
