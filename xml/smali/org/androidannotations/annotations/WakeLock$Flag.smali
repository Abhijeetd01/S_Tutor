.class public final enum Lorg/androidannotations/annotations/WakeLock$Flag;
.super Ljava/lang/Enum;
.source "WakeLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/annotations/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/androidannotations/annotations/WakeLock$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/androidannotations/annotations/WakeLock$Flag;

.field public static final enum ACQUIRE_CAUSES_WAKEUP:Lorg/androidannotations/annotations/WakeLock$Flag;

.field public static final enum ON_AFTER_RELEASE:Lorg/androidannotations/annotations/WakeLock$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Flag;

    const-string v1, "ACQUIRE_CAUSES_WAKEUP"

    invoke-direct {v0, v1, v2}, Lorg/androidannotations/annotations/WakeLock$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Flag;->ACQUIRE_CAUSES_WAKEUP:Lorg/androidannotations/annotations/WakeLock$Flag;

    .line 129
    new-instance v0, Lorg/androidannotations/annotations/WakeLock$Flag;

    const-string v1, "ON_AFTER_RELEASE"

    invoke-direct {v0, v1, v3}, Lorg/androidannotations/annotations/WakeLock$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Flag;->ON_AFTER_RELEASE:Lorg/androidannotations/annotations/WakeLock$Flag;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/androidannotations/annotations/WakeLock$Flag;

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Flag;->ACQUIRE_CAUSES_WAKEUP:Lorg/androidannotations/annotations/WakeLock$Flag;

    aput-object v1, v0, v2

    sget-object v1, Lorg/androidannotations/annotations/WakeLock$Flag;->ON_AFTER_RELEASE:Lorg/androidannotations/annotations/WakeLock$Flag;

    aput-object v1, v0, v3

    sput-object v0, Lorg/androidannotations/annotations/WakeLock$Flag;->$VALUES:[Lorg/androidannotations/annotations/WakeLock$Flag;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/androidannotations/annotations/WakeLock$Flag;
    .locals 1
    .parameter "name"

    .prologue
    .line 119
    const-class v0, Lorg/androidannotations/annotations/WakeLock$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/annotations/WakeLock$Flag;

    return-object v0
.end method

.method public static values()[Lorg/androidannotations/annotations/WakeLock$Flag;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lorg/androidannotations/annotations/WakeLock$Flag;->$VALUES:[Lorg/androidannotations/annotations/WakeLock$Flag;

    invoke-virtual {v0}, [Lorg/androidannotations/annotations/WakeLock$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/androidannotations/annotations/WakeLock$Flag;

    return-object v0
.end method
