.class final Lcom/google/android/gms/internal/zzmg$zza;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzPY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/zzmg$zza;->zzPY:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzmg$zza;->zzPY:I

    return v0
.end method
