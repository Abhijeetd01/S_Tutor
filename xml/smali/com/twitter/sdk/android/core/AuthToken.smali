.class public abstract Lcom/twitter/sdk/android/core/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"


# instance fields
.field protected final createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/AuthToken;->createdAt:J

    .line 36
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .parameter "createdAt"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/AuthToken;->createdAt:J

    .line 40
    return-void
.end method


# virtual methods
.method public abstract isExpired()Z
.end method
