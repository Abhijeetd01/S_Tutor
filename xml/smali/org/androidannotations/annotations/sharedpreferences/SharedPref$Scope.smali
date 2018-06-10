.class public final enum Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;
.super Ljava/lang/Enum;
.source "SharedPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/annotations/sharedpreferences/SharedPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

.field public static final enum ACTIVITY:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

.field public static final enum ACTIVITY_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

.field public static final enum APPLICATION_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

.field public static final enum UNIQUE:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    const-string v1, "APPLICATION_DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->APPLICATION_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    .line 86
    new-instance v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v3}, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->ACTIVITY:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    .line 92
    new-instance v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    const-string v1, "ACTIVITY_DEFAULT"

    invoke-direct {v0, v1, v4}, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->ACTIVITY_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    .line 98
    new-instance v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    const-string v1, "UNIQUE"

    invoke-direct {v0, v1, v5}, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->UNIQUE:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    sget-object v1, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->APPLICATION_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    aput-object v1, v0, v2

    sget-object v1, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->ACTIVITY:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->ACTIVITY_DEFAULT:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->UNIQUE:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    aput-object v1, v0, v5

    sput-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->$VALUES:[Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    const-class v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    return-object v0
.end method

.method public static values()[Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->$VALUES:[Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    invoke-virtual {v0}, [Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;

    return-object v0
.end method
