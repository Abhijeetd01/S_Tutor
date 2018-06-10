.class public final enum Lorg/androidannotations/annotations/WakeLock$Level;
.super Ljava/lang/Enum;
.source "WakeLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/annotations/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/androidannotations/annotations/WakeLock$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/androidannotations/annotations/WakeLock$Level;

.field public static final enum FULL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

.field public static final enum PARTIAL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

.field public static final enum SCREEN_BRIGHT_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

.field public static final enum SCREEN_DIM_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Level;

    const-string v1, "FULL_WAKE_LOCK"

    invoke-direct {v0, v1, v2}, Lorg/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->FULL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    .line 102
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Level;

    const-string v1, "PARTIAL_WAKE_LOCK"

    invoke-direct {v0, v1, v3}, Lorg/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    .line 107
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Level;

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK"

    invoke-direct {v0, v1, v4}, Lorg/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->SCREEN_BRIGHT_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    .line 112
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Level;

    const-string v1, "SCREEN_DIM_WAKE_LOCK"

    invoke-direct {v0, v1, v5}, Lorg/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->SCREEN_DIM_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/androidannotations/annotations/WakeLock$Level;

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Level;->FULL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v2

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v3

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Level;->SCREEN_BRIGHT_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v4

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Level;->SCREEN_DIM_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v5

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->$VALUES:[Lorg/androidannotations/annotations/WakeLock$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/androidannotations/annotations/WakeLock$Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lorg/androidannotations/annotations/WakeLock$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/annotations/WakeLock$Level;

    return-object v0
.end method

.method public static values()[Lorg/androidannotations/annotations/WakeLock$Level;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/androidannotations/annotations/WakeLock$Level;->$VALUES:[Lorg/androidannotations/annotations/WakeLock$Level;

    invoke-virtual {v0}, [Lorg/androidannotations/annotations/WakeLock$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/androidannotations/annotations/WakeLock$Level;

    return-object v0
.end method
