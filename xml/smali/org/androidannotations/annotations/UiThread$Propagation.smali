.class public final enum Lorg/androidannotations/annotations/UiThread$Propagation;
.super Ljava/lang/Enum;
.source "UiThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/annotations/UiThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Propagation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/androidannotations/annotations/UiThread$Propagation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/androidannotations/annotations/UiThread$Propagation;

.field public static final enum ENQUEUE:Lorg/androidannotations/annotations/UiThread$Propagation;

.field public static final enum REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lorg/androidannotations/annotations/UiThread$Propagation;

    const-string v1, "ENQUEUE"

    invoke-direct {v0, v1, v2}, Lorg/androidannotations/annotations/UiThread$Propagation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lorg/androidannotations/annotations/UiThread$Propagation;

    .line 161
    new-instance v0, Lorg/androidannotations/annotations/UiThread$Propagation;

    const-string v1, "REUSE"

    invoke-direct {v0, v1, v3}, Lorg/androidannotations/annotations/UiThread$Propagation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/androidannotations/annotations/UiThread$Propagation;

    sget-object v1, Lorg/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lorg/androidannotations/annotations/UiThread$Propagation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;

    aput-object v1, v0, v3

    sput-object v0, Lorg/androidannotations/annotations/UiThread$Propagation;->$VALUES:[Lorg/androidannotations/annotations/UiThread$Propagation;

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
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/androidannotations/annotations/UiThread$Propagation;
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    const-class v0, Lorg/androidannotations/annotations/UiThread$Propagation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/annotations/UiThread$Propagation;

    return-object v0
.end method

.method public static values()[Lorg/androidannotations/annotations/UiThread$Propagation;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/androidannotations/annotations/UiThread$Propagation;->$VALUES:[Lorg/androidannotations/annotations/UiThread$Propagation;

    invoke-virtual {v0}, [Lorg/androidannotations/annotations/UiThread$Propagation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/androidannotations/annotations/UiThread$Propagation;

    return-object v0
.end method
